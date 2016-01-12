{
//=========Macro generated from canvas: 2D Historgram/2D Histogram
//=========  (Thu Jan  7 14:51:16 2016) by ROOT version5.34/30
   TCanvas *2D Historgram = new TCanvas("2D Historgram", "2D Histogram",0,0,1400,1400);
   gStyle->SetOptStat(0);
   gStyle->SetOptTitle(0);
   2D Historgram->SetHighLightColor(2);
   2D Historgram->Range(-3.75,-3.75,33.75,33.75);
   2D Historgram->SetFillColor(0);
   2D Historgram->SetBorderMode(0);
   2D Historgram->SetBorderSize(2);
   2D Historgram->SetFrameBorderMode(0);
   2D Historgram->SetFrameBorderMode(0);
   
   TH2F *histCSM = new TH2F("histCSM","Hadronic Energy Scale PandoraPFA Calibration, Chi Squared Method",300,0,30,300,0,30);
   histCSM->SetStats(0);
   histCSM->GetXaxis()->SetTitle("Hadronic Energy Measured in the HCal / GeV");
   histCSM->GetYaxis()->SetTitle("Hadronic Energy Measured in the ECal / GeV");
   histCSM->Draw("COLZ");
   2D Historgram->Modified();
   2D Historgram->cd();
   2D Historgram->SetSelected(2D Historgram);
}
