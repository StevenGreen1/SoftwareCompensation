#/bin/bash

for j in -211 130
do
    for i in "0.5" 1 2 5 10 20 50 
    do
         echo "/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/HEPEvtFiles/${i}_GeV_Energy_${j}_pdg_0_1000.HEPEvt ${i}_GeV_Energy_${j}_pdg_0_1000 0 1000" >> runfile.txt
         echo "/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/HEPEvtFiles/${i}_GeV_Energy_${j}_pdg_1000_2000.HEPEvt ${i}_GeV_Energy_${j}_pdg_1000_2000 0 1000" >> runfile.txt
         echo "/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/HEPEvtFiles/${i}_GeV_Energy_${j}_pdg_2000_3000.HEPEvt ${i}_GeV_Energy_${j}_pdg_2000_3000 0 1000" >> runfile.txt
         echo "/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/HEPEvtFiles/${i}_GeV_Energy_${j}_pdg_3000_4000.HEPEvt ${i}_GeV_Energy_${j}_pdg_3000_4000 0 1000" >> runfile.txt
         echo "/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/HEPEvtFiles/${i}_GeV_Energy_${j}_pdg_4000_5000.HEPEvt ${i}_GeV_Energy_${j}_pdg_4000_5000 0 1000" >> runfile.txt
         echo "/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/HEPEvtFiles/${i}_GeV_Energy_${j}_pdg_5000_6000.HEPEvt ${i}_GeV_Energy_${j}_pdg_5000_6000 0 1000" >> runfile.txt
         echo "/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/HEPEvtFiles/${i}_GeV_Energy_${j}_pdg_6000_7000.HEPEvt ${i}_GeV_Energy_${j}_pdg_6000_7000 0 1000" >> runfile.txt
         echo "/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/HEPEvtFiles/${i}_GeV_Energy_${j}_pdg_7000_8000.HEPEvt ${i}_GeV_Energy_${j}_pdg_7000_8000 0 1000" >> runfile.txt
         echo "/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/HEPEvtFiles/${i}_GeV_Energy_${j}_pdg_8000_9000.HEPEvt ${i}_GeV_Energy_${j}_pdg_8000_9000 0 1000" >> runfile.txt
         echo "/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/HEPEvtFiles/${i}_GeV_Energy_${j}_pdg_9000_10000.HEPEvt ${i}_GeV_Energy_${j}_pdg_9000_10000 0 1000" >> runfile.txt
    done
done

