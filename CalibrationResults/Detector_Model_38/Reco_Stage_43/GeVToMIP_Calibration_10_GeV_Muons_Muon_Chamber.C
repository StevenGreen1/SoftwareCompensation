{
//=========Macro generated from canvas: Canvas3/Canvas3
//=========  (Thu Jan  7 14:30:28 2016) by ROOT version5.34/30
   TCanvas *Canvas3 = new TCanvas("Canvas3", "Canvas3",0,0,5000,5000);
   Canvas3->SetHighLightColor(2);
   Canvas3->Range(-0.125,-0.13125,1.125,1.18125);
   Canvas3->SetFillColor(0);
   Canvas3->SetBorderMode(0);
   Canvas3->SetBorderSize(2);
   Canvas3->SetFrameBorderMode(0);
   Canvas3->SetFrameBorderMode(0);
   
   TH1F *MuonDirectionCorrectedCaloHitEnergy = new TH1F("MuonDirectionCorrectedCaloHitEnergy","MuonDirectionCorrectedCaloHitEnergy : 1==nPfoTargetsTotal && 1==nPfoTargetsTracks",500,0,1);
   
   TPaveStats *ptstats = new TPaveStats(0.78,0.775,0.98,0.935,"brNDC");
   ptstats->SetName("stats");
   ptstats->SetBorderSize(1);
   ptstats->SetFillColor(0);
   ptstats->SetTextAlign(12);
   ptstats->SetTextFont(42);
   TText *text = ptstats->AddText("MuonDirectionCorrectedCaloHitEnergy");
   text->SetTextSize(0.0368);
   text = ptstats->AddText("Entries = 0      ");
   text = ptstats->AddText("Mean  =      0");
   text = ptstats->AddText("RMS   =      0");
   ptstats->SetOptStat(1111);
   ptstats->SetOptFit(0);
   ptstats->Draw();
   MuonDirectionCorrectedCaloHitEnergy->GetListOfFunctions()->Add(ptstats);
   ptstats->SetParent(MuonDirectionCorrectedCaloHitEnergy);

   Int_t ci;      // for color index setting
   TColor *color; // for color definition with alpha
   ci = TColor::GetColor("#000099");
   MuonDirectionCorrectedCaloHitEnergy->SetLineColor(ci);
   MuonDirectionCorrectedCaloHitEnergy->GetXaxis()->SetTitle("Direction Corrected Calo Hit Energy in Muon Chamber");
   MuonDirectionCorrectedCaloHitEnergy->GetXaxis()->SetLabelFont(42);
   MuonDirectionCorrectedCaloHitEnergy->GetXaxis()->SetLabelSize(0.035);
   MuonDirectionCorrectedCaloHitEnergy->GetXaxis()->SetTitleSize(0.035);
   MuonDirectionCorrectedCaloHitEnergy->GetXaxis()->SetTitleFont(42);
   MuonDirectionCorrectedCaloHitEnergy->GetYaxis()->SetTitle("Entries");
   MuonDirectionCorrectedCaloHitEnergy->GetYaxis()->SetLabelFont(42);
   MuonDirectionCorrectedCaloHitEnergy->GetYaxis()->SetLabelSize(0.035);
   MuonDirectionCorrectedCaloHitEnergy->GetYaxis()->SetTitleSize(0.035);
   MuonDirectionCorrectedCaloHitEnergy->GetYaxis()->SetTitleFont(42);
   MuonDirectionCorrectedCaloHitEnergy->GetZaxis()->SetLabelFont(42);
   MuonDirectionCorrectedCaloHitEnergy->GetZaxis()->SetLabelSize(0.035);
   MuonDirectionCorrectedCaloHitEnergy->GetZaxis()->SetTitleSize(0.035);
   MuonDirectionCorrectedCaloHitEnergy->GetZaxis()->SetTitleFont(42);
   MuonDirectionCorrectedCaloHitEnergy->Draw("");
   
   TPaveText *pt = new TPaveText(0.15,0.9356275,0.85,0.995,"blNDC");
   pt->SetName("title");
   pt->SetBorderSize(0);
   pt->SetFillColor(0);
   pt->SetFillStyle(0);
   pt->SetTextFont(42);
   text = pt->AddText("MuonDirectionCorrectedCaloHitEnergy : 1==nPfoTargetsTotal && 1==nPfoTargetsTracks");
   pt->Draw();
   Canvas3->Modified();
   Canvas3->cd();
   Canvas3->SetSelected(Canvas3);
}
