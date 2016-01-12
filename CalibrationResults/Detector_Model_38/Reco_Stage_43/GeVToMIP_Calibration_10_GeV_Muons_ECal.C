{
//=========Macro generated from canvas: Canvas1/Canvas1
//=========  (Thu Jan  7 14:30:26 2016) by ROOT version5.34/30
   TCanvas *Canvas1 = new TCanvas("Canvas1", "Canvas1",0,0,5000,5000);
   Canvas1->SetHighLightColor(2);
   Canvas1->Range(-0.0125,-0.13125,0.1125,1.18125);
   Canvas1->SetFillColor(0);
   Canvas1->SetBorderMode(0);
   Canvas1->SetBorderSize(2);
   Canvas1->SetFrameBorderMode(0);
   Canvas1->SetFrameBorderMode(0);
   
   TH1F *ECalDirectionCorrectedCaloHitEnergy = new TH1F("ECalDirectionCorrectedCaloHitEnergy","ECalDirectionCorrectedCaloHitEnergy : 1==nPfoTargetsTotal && 1==nPfoTargetsTracks",500,0,0.1);
   
   TPaveStats *ptstats = new TPaveStats(0.78,0.775,0.98,0.935,"brNDC");
   ptstats->SetName("stats");
   ptstats->SetBorderSize(1);
   ptstats->SetFillColor(0);
   ptstats->SetTextAlign(12);
   ptstats->SetTextFont(42);
   TText *text = ptstats->AddText("ECalDirectionCorrectedCaloHitEnergy");
   text->SetTextSize(0.0368);
   text = ptstats->AddText("Entries = 0      ");
   text = ptstats->AddText("Mean  =      0");
   text = ptstats->AddText("RMS   =      0");
   ptstats->SetOptStat(1111);
   ptstats->SetOptFit(0);
   ptstats->Draw();
   ECalDirectionCorrectedCaloHitEnergy->GetListOfFunctions()->Add(ptstats);
   ptstats->SetParent(ECalDirectionCorrectedCaloHitEnergy);

   Int_t ci;      // for color index setting
   TColor *color; // for color definition with alpha
   ci = TColor::GetColor("#000099");
   ECalDirectionCorrectedCaloHitEnergy->SetLineColor(ci);
   ECalDirectionCorrectedCaloHitEnergy->GetXaxis()->SetTitle("Direction Corrected Calo Hit Energy in ECal");
   ECalDirectionCorrectedCaloHitEnergy->GetXaxis()->SetLabelFont(42);
   ECalDirectionCorrectedCaloHitEnergy->GetXaxis()->SetLabelSize(0.035);
   ECalDirectionCorrectedCaloHitEnergy->GetXaxis()->SetTitleSize(0.035);
   ECalDirectionCorrectedCaloHitEnergy->GetXaxis()->SetTitleFont(42);
   ECalDirectionCorrectedCaloHitEnergy->GetYaxis()->SetTitle("Entries");
   ECalDirectionCorrectedCaloHitEnergy->GetYaxis()->SetLabelFont(42);
   ECalDirectionCorrectedCaloHitEnergy->GetYaxis()->SetLabelSize(0.035);
   ECalDirectionCorrectedCaloHitEnergy->GetYaxis()->SetTitleSize(0.035);
   ECalDirectionCorrectedCaloHitEnergy->GetYaxis()->SetTitleFont(42);
   ECalDirectionCorrectedCaloHitEnergy->GetZaxis()->SetLabelFont(42);
   ECalDirectionCorrectedCaloHitEnergy->GetZaxis()->SetLabelSize(0.035);
   ECalDirectionCorrectedCaloHitEnergy->GetZaxis()->SetTitleSize(0.035);
   ECalDirectionCorrectedCaloHitEnergy->GetZaxis()->SetTitleFont(42);
   ECalDirectionCorrectedCaloHitEnergy->Draw("");
   
   TPaveText *pt = new TPaveText(0.15,0.9356275,0.85,0.995,"blNDC");
   pt->SetName("title");
   pt->SetBorderSize(0);
   pt->SetFillColor(0);
   pt->SetFillStyle(0);
   pt->SetTextFont(42);
   text = pt->AddText("ECalDirectionCorrectedCaloHitEnergy : 1==nPfoTargetsTotal && 1==nPfoTargetsTracks");
   pt->Draw();
   Canvas1->Modified();
   Canvas1->cd();
   Canvas1->SetSelected(Canvas1);
}
