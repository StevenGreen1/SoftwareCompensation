{
//=========Macro generated from canvas: Canvas2/Canvas2
//=========  (Thu Jan  7 14:30:27 2016) by ROOT version5.34/30
   TCanvas *Canvas2 = new TCanvas("Canvas2", "Canvas2",0,0,5000,5000);
   Canvas2->SetHighLightColor(2);
   Canvas2->Range(-0.0125,-0.13125,0.1125,1.18125);
   Canvas2->SetFillColor(0);
   Canvas2->SetBorderMode(0);
   Canvas2->SetBorderSize(2);
   Canvas2->SetFrameBorderMode(0);
   Canvas2->SetFrameBorderMode(0);
   
   TH1F *HCalDirectionCorrectedCaloHitEnergy = new TH1F("HCalDirectionCorrectedCaloHitEnergy","HCalDirectionCorrectedCaloHitEnergy : 1==nPfoTargetsTotal && 1==nPfoTargetsTracks",500,0,0.1);
   
   TPaveStats *ptstats = new TPaveStats(0.78,0.775,0.98,0.935,"brNDC");
   ptstats->SetName("stats");
   ptstats->SetBorderSize(1);
   ptstats->SetFillColor(0);
   ptstats->SetTextAlign(12);
   ptstats->SetTextFont(42);
   TText *text = ptstats->AddText("HCalDirectionCorrectedCaloHitEnergy");
   text->SetTextSize(0.0368);
   text = ptstats->AddText("Entries = 0      ");
   text = ptstats->AddText("Mean  =      0");
   text = ptstats->AddText("RMS   =      0");
   ptstats->SetOptStat(1111);
   ptstats->SetOptFit(0);
   ptstats->Draw();
   HCalDirectionCorrectedCaloHitEnergy->GetListOfFunctions()->Add(ptstats);
   ptstats->SetParent(HCalDirectionCorrectedCaloHitEnergy);

   Int_t ci;      // for color index setting
   TColor *color; // for color definition with alpha
   ci = TColor::GetColor("#000099");
   HCalDirectionCorrectedCaloHitEnergy->SetLineColor(ci);
   HCalDirectionCorrectedCaloHitEnergy->GetXaxis()->SetTitle("Direction Corrected Calo Hit Energy in HCal");
   HCalDirectionCorrectedCaloHitEnergy->GetXaxis()->SetLabelFont(42);
   HCalDirectionCorrectedCaloHitEnergy->GetXaxis()->SetLabelSize(0.035);
   HCalDirectionCorrectedCaloHitEnergy->GetXaxis()->SetTitleSize(0.035);
   HCalDirectionCorrectedCaloHitEnergy->GetXaxis()->SetTitleFont(42);
   HCalDirectionCorrectedCaloHitEnergy->GetYaxis()->SetTitle("Entries");
   HCalDirectionCorrectedCaloHitEnergy->GetYaxis()->SetLabelFont(42);
   HCalDirectionCorrectedCaloHitEnergy->GetYaxis()->SetLabelSize(0.035);
   HCalDirectionCorrectedCaloHitEnergy->GetYaxis()->SetTitleSize(0.035);
   HCalDirectionCorrectedCaloHitEnergy->GetYaxis()->SetTitleFont(42);
   HCalDirectionCorrectedCaloHitEnergy->GetZaxis()->SetLabelFont(42);
   HCalDirectionCorrectedCaloHitEnergy->GetZaxis()->SetLabelSize(0.035);
   HCalDirectionCorrectedCaloHitEnergy->GetZaxis()->SetTitleSize(0.035);
   HCalDirectionCorrectedCaloHitEnergy->GetZaxis()->SetTitleFont(42);
   HCalDirectionCorrectedCaloHitEnergy->Draw("");
   
   TPaveText *pt = new TPaveText(0.15,0.9356275,0.85,0.995,"blNDC");
   pt->SetName("title");
   pt->SetBorderSize(0);
   pt->SetFillColor(0);
   pt->SetFillStyle(0);
   pt->SetTextFont(42);
   text = pt->AddText("HCalDirectionCorrectedCaloHitEnergy : 1==nPfoTargetsTotal && 1==nPfoTargetsTracks");
   pt->Draw();
   Canvas2->Modified();
   Canvas2->cd();
   Canvas2->SetSelected(Canvas2);
}
