{
//=========Macro generated from canvas: Canvas/Canvas
//=========  (Thu Jan  7 14:30:21 2016) by ROOT version5.34/30
   TCanvas *Canvas = new TCanvas("Canvas", "Canvas",0,0,5000,5000);
   Canvas->SetHighLightColor(2);
   Canvas->Range(0,0,1,1);
   Canvas->SetFillColor(0);
   Canvas->SetBorderMode(0);
   Canvas->SetBorderSize(2);
   Canvas->SetFrameBorderMode(0);
  
// ------------>Primitives in pad: Canvas_1
   TPad *Canvas_1 = new TPad("Canvas_1", "Canvas_1",0.01,0.6766667,0.99,0.99);
   Canvas_1->Draw();
   Canvas_1->cd();
   Canvas_1->Range(-0.125,-0.13125,1.125,1.18125);
   Canvas_1->SetFillColor(0);
   Canvas_1->SetBorderMode(0);
   Canvas_1->SetBorderSize(2);
   Canvas_1->SetFrameBorderMode(0);
   Canvas_1->SetFrameBorderMode(0);
   
   TH1F *HCalBarrelDirectionCorrectionSimCaloHit = new TH1F("HCalBarrelDirectionCorrectionSimCaloHit","Distribution of Direction Corrections for SimCaloHits in the HCal Barrel (1==nPfoTargetsTotal && 1==nPfoTargetsNeutralHadrons && Contained in HCal)",200,0,1);
   
   TPaveStats *ptstats = new TPaveStats(0.78,0.775,0.98,0.935,"brNDC");
   ptstats->SetName("stats");
   ptstats->SetBorderSize(1);
   ptstats->SetFillColor(0);
   ptstats->SetTextAlign(12);
   ptstats->SetTextFont(42);
   TText *text = ptstats->AddText("HCalBarrelDirectionCorrectionSimCaloHit");
   text->SetTextSize(0.0368);
   text = ptstats->AddText("Entries = 0      ");
   text = ptstats->AddText("Mean  =      0");
   text = ptstats->AddText("RMS   =      0");
   ptstats->SetOptStat(1111);
   ptstats->SetOptFit(0);
   ptstats->Draw();
   HCalBarrelDirectionCorrectionSimCaloHit->GetListOfFunctions()->Add(ptstats);
   ptstats->SetParent(HCalBarrelDirectionCorrectionSimCaloHit);

   Int_t ci;      // for color index setting
   TColor *color; // for color definition with alpha
   ci = TColor::GetColor("#000099");
   HCalBarrelDirectionCorrectionSimCaloHit->SetLineColor(ci);
   HCalBarrelDirectionCorrectionSimCaloHit->GetXaxis()->SetTitle("Sim Calo Hit Direction Correction");
   HCalBarrelDirectionCorrectionSimCaloHit->GetXaxis()->SetLabelFont(42);
   HCalBarrelDirectionCorrectionSimCaloHit->GetXaxis()->SetLabelSize(0.035);
   HCalBarrelDirectionCorrectionSimCaloHit->GetXaxis()->SetTitleSize(0.035);
   HCalBarrelDirectionCorrectionSimCaloHit->GetXaxis()->SetTitleFont(42);
   HCalBarrelDirectionCorrectionSimCaloHit->GetYaxis()->SetTitle("Entries");
   HCalBarrelDirectionCorrectionSimCaloHit->GetYaxis()->SetLabelFont(42);
   HCalBarrelDirectionCorrectionSimCaloHit->GetYaxis()->SetLabelSize(0.035);
   HCalBarrelDirectionCorrectionSimCaloHit->GetYaxis()->SetTitleSize(0.035);
   HCalBarrelDirectionCorrectionSimCaloHit->GetYaxis()->SetTitleFont(42);
   HCalBarrelDirectionCorrectionSimCaloHit->GetZaxis()->SetLabelFont(42);
   HCalBarrelDirectionCorrectionSimCaloHit->GetZaxis()->SetLabelSize(0.035);
   HCalBarrelDirectionCorrectionSimCaloHit->GetZaxis()->SetTitleSize(0.035);
   HCalBarrelDirectionCorrectionSimCaloHit->GetZaxis()->SetTitleFont(42);
   HCalBarrelDirectionCorrectionSimCaloHit->Draw("");
   
   TPaveText *pt = new TPaveText(0.15,0.9349189,0.85,0.995,"blNDC");
   pt->SetName("title");
   pt->SetBorderSize(0);
   pt->SetFillColor(0);
   pt->SetFillStyle(0);
   pt->SetTextFont(42);
   text = pt->AddText("Distribution of Direction Corrections for SimCaloHits in the HCal Barrel (1==nPfoTargetsTotal && 1==nPfoTargetsNeutralHadrons && Contained in HCal)");
   pt->Draw();
   Canvas_1->Modified();
   Canvas->cd();
  
// ------------>Primitives in pad: Canvas_2
   Canvas_2 = new TPad("Canvas_2", "Canvas_2",0.01,0.3433333,0.99,0.6566667);
   Canvas_2->Draw();
   Canvas_2->cd();
   Canvas_2->Range(-0.125,-0.13125,1.125,1.18125);
   Canvas_2->SetFillColor(0);
   Canvas_2->SetBorderMode(0);
   Canvas_2->SetBorderSize(2);
   Canvas_2->SetFrameBorderMode(0);
   Canvas_2->SetFrameBorderMode(0);
   
   TH1F *HCalEndCapDirectionCorrectionSimCaloHit = new TH1F("HCalEndCapDirectionCorrectionSimCaloHit","Distribution of Direction Corrections for SimCaloHits in the HCal EndCap (1==nPfoTargetsTotal && 1==nPfoTargetsNeutralHadrons && Contained in HCal)",200,0,1);
   
   ptstats = new TPaveStats(0.78,0.775,0.98,0.935,"brNDC");
   ptstats->SetName("stats");
   ptstats->SetBorderSize(1);
   ptstats->SetFillColor(0);
   ptstats->SetTextAlign(12);
   ptstats->SetTextFont(42);
   text = ptstats->AddText("HCalEndCapDirectionCorrectionSimCaloHit");
   text->SetTextSize(0.0368);
   text = ptstats->AddText("Entries = 0      ");
   text = ptstats->AddText("Mean  =      0");
   text = ptstats->AddText("RMS   =      0");
   ptstats->SetOptStat(1111);
   ptstats->SetOptFit(0);
   ptstats->Draw();
   HCalEndCapDirectionCorrectionSimCaloHit->GetListOfFunctions()->Add(ptstats);
   ptstats->SetParent(HCalEndCapDirectionCorrectionSimCaloHit);

   ci = TColor::GetColor("#000099");
   HCalEndCapDirectionCorrectionSimCaloHit->SetLineColor(ci);
   HCalEndCapDirectionCorrectionSimCaloHit->GetXaxis()->SetTitle("Sim Calo Hit Direction Correction");
   HCalEndCapDirectionCorrectionSimCaloHit->GetXaxis()->SetLabelFont(42);
   HCalEndCapDirectionCorrectionSimCaloHit->GetXaxis()->SetLabelSize(0.035);
   HCalEndCapDirectionCorrectionSimCaloHit->GetXaxis()->SetTitleSize(0.035);
   HCalEndCapDirectionCorrectionSimCaloHit->GetXaxis()->SetTitleFont(42);
   HCalEndCapDirectionCorrectionSimCaloHit->GetYaxis()->SetTitle("Entries");
   HCalEndCapDirectionCorrectionSimCaloHit->GetYaxis()->SetLabelFont(42);
   HCalEndCapDirectionCorrectionSimCaloHit->GetYaxis()->SetLabelSize(0.035);
   HCalEndCapDirectionCorrectionSimCaloHit->GetYaxis()->SetTitleSize(0.035);
   HCalEndCapDirectionCorrectionSimCaloHit->GetYaxis()->SetTitleFont(42);
   HCalEndCapDirectionCorrectionSimCaloHit->GetZaxis()->SetLabelFont(42);
   HCalEndCapDirectionCorrectionSimCaloHit->GetZaxis()->SetLabelSize(0.035);
   HCalEndCapDirectionCorrectionSimCaloHit->GetZaxis()->SetTitleSize(0.035);
   HCalEndCapDirectionCorrectionSimCaloHit->GetZaxis()->SetTitleFont(42);
   HCalEndCapDirectionCorrectionSimCaloHit->Draw("");
   
   pt = new TPaveText(0.15,0.9349189,0.85,0.995,"blNDC");
   pt->SetName("title");
   pt->SetBorderSize(0);
   pt->SetFillColor(0);
   pt->SetFillStyle(0);
   pt->SetTextFont(42);
   text = pt->AddText("Distribution of Direction Corrections for SimCaloHits in the HCal EndCap (1==nPfoTargetsTotal && 1==nPfoTargetsNeutralHadrons && Contained in HCal)");
   pt->Draw();
   Canvas_2->Modified();
   Canvas->cd();
  
// ------------>Primitives in pad: Canvas_3
   Canvas_3 = new TPad("Canvas_3", "Canvas_3",0.01,0.01,0.99,0.3233333);
   Canvas_3->Draw();
   Canvas_3->cd();
   Canvas_3->Range(-0.125,-0.13125,1.125,1.18125);
   Canvas_3->SetFillColor(0);
   Canvas_3->SetBorderMode(0);
   Canvas_3->SetBorderSize(2);
   Canvas_3->SetFrameBorderMode(0);
   Canvas_3->SetFrameBorderMode(0);
   
   TH1F *HCalOtherDirectionCorrectionSimCaloHit = new TH1F("HCalOtherDirectionCorrectionSimCaloHit","Distribution of Direction Corrections for SimCaloHits in the HCal Other (1==nPfoTargetsTotal && 1==nPfoTargetsNeutralHadrons && Contained in HCal)",200,0,1);
   
   ptstats = new TPaveStats(0.78,0.775,0.98,0.935,"brNDC");
   ptstats->SetName("stats");
   ptstats->SetBorderSize(1);
   ptstats->SetFillColor(0);
   ptstats->SetTextAlign(12);
   ptstats->SetTextFont(42);
   text = ptstats->AddText("HCalOtherDirectionCorrectionSimCaloHit");
   text->SetTextSize(0.0368);
   text = ptstats->AddText("Entries = 0      ");
   text = ptstats->AddText("Mean  =      0");
   text = ptstats->AddText("RMS   =      0");
   ptstats->SetOptStat(1111);
   ptstats->SetOptFit(0);
   ptstats->Draw();
   HCalOtherDirectionCorrectionSimCaloHit->GetListOfFunctions()->Add(ptstats);
   ptstats->SetParent(HCalOtherDirectionCorrectionSimCaloHit);

   ci = TColor::GetColor("#000099");
   HCalOtherDirectionCorrectionSimCaloHit->SetLineColor(ci);
   HCalOtherDirectionCorrectionSimCaloHit->GetXaxis()->SetTitle("Sim Calo Hit Direction Correction");
   HCalOtherDirectionCorrectionSimCaloHit->GetXaxis()->SetLabelFont(42);
   HCalOtherDirectionCorrectionSimCaloHit->GetXaxis()->SetLabelSize(0.035);
   HCalOtherDirectionCorrectionSimCaloHit->GetXaxis()->SetTitleSize(0.035);
   HCalOtherDirectionCorrectionSimCaloHit->GetXaxis()->SetTitleFont(42);
   HCalOtherDirectionCorrectionSimCaloHit->GetYaxis()->SetTitle("Entries");
   HCalOtherDirectionCorrectionSimCaloHit->GetYaxis()->SetLabelFont(42);
   HCalOtherDirectionCorrectionSimCaloHit->GetYaxis()->SetLabelSize(0.035);
   HCalOtherDirectionCorrectionSimCaloHit->GetYaxis()->SetTitleSize(0.035);
   HCalOtherDirectionCorrectionSimCaloHit->GetYaxis()->SetTitleFont(42);
   HCalOtherDirectionCorrectionSimCaloHit->GetZaxis()->SetLabelFont(42);
   HCalOtherDirectionCorrectionSimCaloHit->GetZaxis()->SetLabelSize(0.035);
   HCalOtherDirectionCorrectionSimCaloHit->GetZaxis()->SetTitleSize(0.035);
   HCalOtherDirectionCorrectionSimCaloHit->GetZaxis()->SetTitleFont(42);
   HCalOtherDirectionCorrectionSimCaloHit->Draw("");
   
   pt = new TPaveText(0.15,0.9349189,0.85,0.995,"blNDC");
   pt->SetName("title");
   pt->SetBorderSize(0);
   pt->SetFillColor(0);
   pt->SetFillStyle(0);
   pt->SetTextFont(42);
   text = pt->AddText("Distribution of Direction Corrections for SimCaloHits in the HCal Other (1==nPfoTargetsTotal && 1==nPfoTargetsNeutralHadrons && Contained in HCal)");
   pt->Draw();
   Canvas_3->Modified();
   Canvas->cd();
   Canvas->Modified();
   Canvas->cd();
   Canvas->SetSelected(Canvas);
}
