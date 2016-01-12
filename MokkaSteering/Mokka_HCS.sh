#!/bin/bash
source /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/init_ilcsoft.sh
workDir="/tmp"

#=================================================
rm -f $workDir/$2_$3_SiW.steer
cat > $workDir/$2_$3_SiW.steer << EOF

/Mokka/init/userInitString TIMEOUT_TO_RELAX_TMP 120
/Mokka/init/userInitInt SLEEP_BEFORE_RETRY 5
/Mokka/init/randomSeed 782354721
/Mokka/init/startEventNumber $3
/Mokka/init/detectorModel ILD_o1_v06
/Mokka/init/physicsListName QGSP_BERT
/Mokka/init/rangeCut 0.05 mm
/Mokka/init/savingTrajectories false
/Mokka/init/savingPrimaries false
/Mokka/init/lcioWriteMode WRITE_NEW
/Mokka/init/lcioStoreCalHitPosition true
/Mokka/init/MokkaGearFileName /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/GearFile/ILD_o1_v06.gear

/Mokka/init/EditGeometry/rmSubDetector SServices00

/Mokka/init/globalModelParameter Ecal_Sc_Si_mix 000000000000000
/Mokka/init/globalModelParameter Ecal_Sc_number_of_virtual_cells 1
/Mokka/init/globalModelParameter Ecal_cells_size 5.0
/Mokka/init/globalModelParameter Ecal_Sc_N_strips_across_module 36
/Mokka/init/globalModelParameter Ecal_MPPC_size 0.91
/Mokka/init/globalModelParameter Ecal_guard_ring_size 0.00001
/Mokka/init/globalModelParameter Ecal_nlayers1 20
/Mokka/init/globalModelParameter Ecal_nlayers2 9
/Mokka/init/globalModelParameter Ecal_nlayers3 0
/Mokka/init/globalModelParameter Ecal_radiator_layers_set1_thickness 2.1
/Mokka/init/globalModelParameter Ecal_radiator_layers_set2_thickness 4.2
/Mokka/init/globalModelParameter Ecal_radiator_layers_set3_thickness 0
/Mokka/init/globalModelParameter Ecal_Si_thickness 0.5
/Mokka/init/globalModelParameter Ecal_Sc_thickness 2.0
/Mokka/init/globalModelParameter Ecal_Slab_Sc_PCB_thickness 0.9
/Mokka/init/globalModelParameter Hcal_Ecal_gap 30.0
/Mokka/init/globalModelParameter Hcal_endcap_ecal_gap 15.0

/Mokka/init/globalModelParameter Hcal_nlayers 48
/Mokka/init/globalModelParameter Hcal_endcap_nlayers 48
/Mokka/init/globalModelParameter Yoke_Z_start_endcaps 4072
/Mokka/init/globalModelParameter Coil_Yoke_lateral_clearance 200
/Mokka/init/globalModelParameter Coil_extra_size 1522

/Mokka/init/lcioDetailedShowerMode true

/Mokka/init/BatchMode true
/Mokka/init/lcioFilename /r06/lc/sg568/DESYCollaboration/SlcioFiles/ILD_o1_v06_$2_$3.slcio
/Mokka/init/initialMacroFile $workDir/$2_$3_SiW.g4macro


EOF
#=================================================

rm -rf $workDir/$2_$3_SiW.g4macro
cat >  $workDir/$2_$3_SiW.g4macro << EOF

/generator/generator $1
/tracking/verbose 0
/run/particle/dumpCutValues
/run/beamOn $4

EOF
#=================================================
#echo $2_$3_SiW.steer
#more $workDir/$2_$3_SiW.steer
#echo $2_$3_SiW.g4macro
#more $workDir/$2_$3_SiW.g4macro
Mokka -U $workDir/$2_$3_SiW.steer

exit

rm -rf $workDir/$2_$3_SiW.steer
rm -rf $workDir/$2_$3_SiW.g4macro
