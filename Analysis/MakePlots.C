{
    std::string eventType = "130"; // -211 130 or Z_uds
    std::string energy = "50";
    float fl_energy = 50;
    std::string rootFilesToAdd;

    if (eventType == "Z_uds")
    {
        rootFilesToAdd = "/var/clus/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/RootFiles/CellEnergyAlgorithm_PandoraSettingsDefault_ILD_o1_v06_Zuds_" + energy + "GeV_*.root";
    }

    else
    {
        rootFilesToAdd = "/var/clus/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/RootFiles/CellEnergyAlgorithm_PandoraSettingsDefault_ILD_o1_v06_" + eventType + "_pdg_" + energy + "GeV_*.root";
    }

    gStyle->SetOptStat(0);

    TChain *pTChain = new TChain("ClusterEnergyTree");
    pTChain->Add(rootFilesToAdd.c_str());

    std::vector<int> *numberOfHitsInCluster(NULL);
    std::vector<float> *rawEnergyOfCluster(NULL), *corEnergyOfCluster(NULL), *pfoCosTheta(NULL);
    int numberOfPFOsInEvent;

    pTChain->SetBranchAddress("RawEnergyOfCluster",&rawEnergyOfCluster);
    pTChain->SetBranchAddress("CorrectedEnergyOfCluster",&corEnergyOfCluster);
    pTChain->SetBranchAddress("PFOCosTheta",&pfoCosTheta);
    pTChain->SetBranchAddress("NumberOfHitsInCluster",&numberOfHitsInCluster);

    float maxEnergyOnHist = fl_energy * 2;
    int bins = maxEnergyOnHist * 10;
    float maxBinsOnHist = fl_energy * 50;

    if (maxBinsOnHist > 1250)
        maxBinsOnHist =  1250;

    TH1F *hRawEnergy = new TH1F("RawEnergyHist","RawEnergyHist",bins,0,maxEnergyOnHist);
    hRawEnergy->GetXaxis()->SetTitle("Raw Energy Of Cluster [GeV]");
    hRawEnergy->SetLineColor(kBlack);
    TH1F *hCorEnergy = new TH1F("CorEnergyHist","CorEnergyHist",bins,0,maxEnergyOnHist);
    hCorEnergy->GetXaxis()->SetTitle("Corrected Energy Of Cluster [GeV]");
    hCorEnergy->SetLineColor(kRed);
    TH2F *hCorVsRawEnergy = new TH2F("CorVsRawEnergy","CorVsRawEnergy",bins,0,maxEnergyOnHist,bins,0,maxEnergyOnHist);
    hCorVsRawEnergy->GetXaxis()->SetTitle("Raw Energy Of Cluster [GeV]");
    hCorVsRawEnergy->GetYaxis()->SetTitle("Corrected Energy Of Cluster [GeV]");
    TH2F *hCorVsNHitsEnergy = new TH2F("CorVsNHitsEnergy","CorVsNHitsEnergy",maxBinsOnHist,0,maxBinsOnHist,bins,0,maxEnergyOnHist);
    hCorVsNHitsEnergy->GetXaxis()->SetTitle("#Hits In Cluster");
    hCorVsNHitsEnergy->GetYaxis()->SetTitle("Corrected Energy Of Cluster [GeV]");
    TH2F *hRawVsNHitsEnergy = new TH2F("RawVsNHitsEnergy","RawVsNHitsEnergy",maxBinsOnHist,0,maxBinsOnHist,bins,0,maxEnergyOnHist);
    hRawVsNHitsEnergy->GetXaxis()->SetTitle("#Hits In Cluster");
    hRawVsNHitsEnergy->GetYaxis()->SetTitle("Raw Energy Of Cluster [GeV]");

    for (int i = 0; i < pTChain->GetEntries(); i++)
    {
        pTChain->GetEntry(i);

        // Skip Event if CosTheta > 0.7 for any PFO
        bool skipEvent(false);

        for (std::vector<float>::iterator it = pfoCosTheta->begin() ; it != pfoCosTheta->end(); ++it)
        {
            float currentPFOCosTheta = *it;
            if (std::fabs(currentPFOCosTheta) > 0.7)
            {
                skipEvent = true;
            }
        } 

        if (skipEvent)
        {
            continue;
        }

        // Fill Histograms

        for (std::vector<float>::iterator it = rawEnergyOfCluster->begin() ; it != rawEnergyOfCluster->end(); ++it)
        {
            float currentRawEnergyOfCluster = *it;
            int entry = it - rawEnergyOfCluster->begin();
            float currentCorEnergyOfCluster = corEnergyOfCluster->at(entry);
            int currenrNumberOfHits = numberOfHitsInCluster->at(entry);
            hRawEnergy->Fill(currentRawEnergyOfCluster);
            hCorEnergy->Fill(currentCorEnergyOfCluster);
            hCorVsRawEnergy->Fill(currentRawEnergyOfCluster,currentCorEnergyOfCluster);
            hCorVsNHitsEnergy->Fill(currenrNumberOfHits,currentCorEnergyOfCluster);
            hRawVsNHitsEnergy->Fill(currenrNumberOfHits,currentRawEnergyOfCluster);
        }
    }

    float minFit = 0.5 * fl_energy;
    float maxFit = 1.5 * fl_energy;

    TF1 *gaussianFit = new TF1("Gaussian","gaus",minFit,maxFit);
    gaussianFit->SetLineColor(kBlue);
    gaussianFit->SetLineWidth(4);
    TCanvas *pCanvas1 = new TCanvas("Name1","Title1");
    hRawEnergy->Draw();
    hRawEnergy->Fit(gaussianFit,"R");
    gaussianFit->Draw("same");

    TString name1 = "RawEnergy_" + eventType + "_pdg_" + energy + "_GeV.pdf";
    pCanvas1->SaveAs(name1);

    TF1 *gaussianFit2 = new TF1("Gaussian","gaus",minFit,maxFit);
    gaussianFit2->SetLineColor(kGreen+2);
    gaussianFit2->SetLineWidth(4);
    TCanvas *pCanvas2 = new TCanvas("Name2","Title2");
    hCorEnergy->Draw();
    hCorEnergy->Fit(gaussianFit2,"R");
    gaussianFit2->Draw("same");

    TString name2 = "CorEnergy_" + eventType + "_pdg_" + energy + "_GeV.pdf";
    pCanvas2->SaveAs(name2);

    TCanvas *pCanvas3 = new TCanvas("Name3","Title3");
    hCorVsRawEnergy->Draw("COLZ");
    TString name3 = "CorVsRawEnergy_" + eventType + "_pdg_" + energy + "_GeV.png";
    pCanvas3->SaveAs(name3);

    TCanvas *pCanvas4 = new TCanvas("Name4","Title4");
    hCorVsNHitsEnergy->Draw("COLZ");

    TString name4 = "CorVsNHits_" + eventType + "_pdg_" + energy + "_GeV.png";
    pCanvas4->SaveAs(name4);

    TCanvas *pCanvas5 = new TCanvas("Name5","Title5");
    hRawVsNHitsEnergy->Draw("COLZ");

    TString name5 = "RawVsNHits_" + eventType + "_pdg_" + energy + "_GeV.png";
    pCanvas5->SaveAs(name5);

    TCanvas *pCanvas6 = new TCanvas("Name6","Title6");
    hRawEnergy->Draw();
    hCorEnergy->Draw("same");
    TString name6 = "CorAndRawEnergy_" + eventType + "_pdg_" + energy + "_GeV.pdf";
    pCanvas6->SaveAs(name6);

    TCanvas *pCanvas7 = new TCanvas("Name7","Title7");
    gaussianFit2->Draw("");
    gaussianFit->Draw("same");
    TString name7 = "CorAndRawFits_" + eventType + "_pdg_" + energy + "_GeV.pdf";
    pCanvas7->SaveAs(name7);

    float meanCor = gaussianFit2->GetParameter(1);
    float sigmaCor = gaussianFit2->GetParameter(2);
    float deltaCor = meanCor - fl_energy;
    std::cout << "Mean for corrected  : " << meanCor << std::endl;
    std::cout << "Sigma for corrected : " << sigmaCor << std::endl;
    std::cout << "Delta for corrected : " << deltaCor << std::endl;

    float meanRaw = gaussianFit->GetParameter(1);
    float sigmaRaw = gaussianFit->GetParameter(2);
    float deltaRaw = meanRaw - fl_energy;
    std::cout << "Mean for raw        : " << meanRaw << std::endl;
    std::cout << "Sigma for raw       : " << sigmaRaw << std::endl;
    std::cout << "Delta for raw       : " << deltaRaw << std::endl;
}
