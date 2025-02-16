#!/bin/bash

#File lists for 2016 legacy data:
for i in F G H
do
    echo creating file list for data sample DoubleMuon_Run2016${i}
    ls /pnfs/desy.de/cms/tier2/store/user/lsreelat/NTuples/2016/HtoAA/DoubleMuon/DoubleMuon-Run2016${i}-UL2016/*root > DoubleMuon_Run2016${i}
done

#File lists for 2016 MC ntuples v2:
echo creating file lists for HToAA_AToMuMu_AToTauTau samples
for i in 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 
do
    ls /pnfs/desy.de/cms/tier2/store/user/lsreelat/NTuples/2016/HtoAA/SUSYGluGluToHToAA_AToMuMu_AToTauTau/SUSYGluGluToHToAA_AToMuMu_AToTauTau_M-125_M-${i}/*root > SUSYGluGluToHToAA_AToMuMu_AToTauTau_M-${i}
done

#File lists for 2016 UL MC signal samples:
echo creating file lists for HToAA_To4Tau samples
for i in {4..21}
do 
	ls /pnfs/desy.de/cms/tier2/store/user/lsreelat/NTuples/2016/HtoAA/SUSYGluGluHToAA_AToTauTau/SUSYGluGluHToAA_AToTauTau_M-125_M-${i}/*root > SUSYGluGluToHToAA_AToTauTau_M-125_M-${i}
	ls /pnfs/desy.de/cms/tier2/store/user/lsreelat/NTuples/2016/HtoAA/SUSYVBFHToAA_AToTauTau/SUSYVBFHToAA_AToTauTau_M-125_M-${i}/*root > SUSYVBFToHToAA_AToTauTau_M-125_M-${i}
	ls /pnfs/desy.de/cms/tier2/store/user/lsreelat/NTuples/2016/HtoAA/SUSYVHToAA_AToTauTau/SUSYVHToAA_AToTauTau_M-125_M-${i}/*root > SUSYVH_HToAA_AToTauTau_M-125_M-${i}
	ls /pnfs/desy.de/cms/tier2/store/user/lsreelat/NTuples/2016/HtoAA/SUSYttHToAA_AToTauTau/SUSYttHToAA_AToTauTau_M-125_M-${i}/*root > SUSYttH_HToAA_AToTauTau_M-125_M-${i}
done

# TTSemileptonic sample should be split (long list for ls command)
echo "Creating file list for sample TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8"
    ls /pnfs/desy.de/cms/tier2/store/user/acardini/ntuples/Oktoberfest21/2016_postVFP/mc/TTToSemiLeptonic/*0.root > TTToSemiLeptonic
for index in {1..9}
do
    ls /pnfs/desy.de/cms/tier2/store/user/acardini/ntuples/Oktoberfest21/2016_postVFP/mc/TTToSemiLeptonic/*${index}.root >> TTToSemiLeptonic
done

# WJetsToLNu sample should be split (long list for ls command)
echo "Creating file list for sample WJetsToLNu"
    ls /pnfs/desy.de/cms/tier2/store/user/acardini/ntuples/Oktoberfest21/2016_postVFP/mc/WJetsToLNu/*0.root > WJetsToLNu
for index in {1..9}
do
    ls /pnfs/desy.de/cms/tier2/store/user/acardini/ntuples/Oktoberfest21/2016_postVFP/mc/WJetsToLNu/*${index}.root >> WJetsToLNu
done

#File lists for VV background MC samples
samples_VV=(WW_TuneCP5_13TeV-pythia8_2016
WZ_TuneCP5_13TeV-pythia8_2016
ZZ_TuneCP5_13TeV-pythia8_2016
)

names_VV=(WW_13TeV-pythia8
WZ_13TeV-pythia8
ZZ_13TeV-pythia8
)

#File lists for background MC samples
samples=(DYJetsToLL_M-10to50
DYJetsToLL_M-50
ST_t-channel_antitop_4f
ST_t-channel_top_4f
ST_tW_top_5f_inclusiveDecays
ST_tW_antitop_5f_inclusiveDecays
TTTo2L2Nu
TTToHadronic
)

names=(DYJetsToLL_M-10to50
DYJetsToLL_M-50
ST_t-channel_top
ST_t-channel_antitop
ST_tW_top
ST_tW_antitop
TTTo2L2Nu
TTToHadronic
)

names_QCD=(QCD_Pt-15To20_MuEnrichedPt5
QCD_Pt-20To30_MuEnrichedPt5  
QCD_Pt-30To50_MuEnrichedPt5
QCD_Pt-50To80_MuEnrichedPt5
QCD_Pt-80To120_MuEnrichedPt5
QCD_Pt-120To170_MuEnrichedPt5
QCD_Pt-170To300_MuEnrichedPt5
QCD_Pt-300To470_MuEnrichedPt5
QCD_Pt-470To600_MuEnrichedPt5
QCD_Pt-600To800_MuEnrichedPt5
QCD_Pt-800To1000_MuEnrichedPt5
QCD_Pt-1000_MuEnrichedPt5
)

i=0
while [ $i -lt ${#samples[@]} ] 
do
    echo "Creating file list for sample" ${samples[$i]} 

    ls /pnfs/desy.de/cms/tier2/store/user/acardini/ntuples/Oktoberfest21/2016_postVFP/mc/${samples[$i]}*/*root > ${names[$i]}
      
    i=`expr $i + 1` 
done

k=0
while [ $k -lt ${#samples_VV[@]} ] 
do
    echo "Creating file list for sample" ${samples_VV[$k]} 

    ls /pnfs/desy.de/cms/tier2/store/user/lsreelat/NTuples/2016/HtoAA/VV_inclusive/${samples_VV[$k]}*/*root > ${names_VV[$k]}
      
    k=`expr $k + 1` 
done

j=0
while [ $j -lt ${#names_QCD[@]} ] 
do
    echo "Creating file list for sample" ${names_QCD[$j]} 
    ls /pnfs/desy.de/cms/tier2/store/user/lsreelat/NTuples/2016/HtoAA/QCD/${names_QCD[$j]}/*root > ${names_QCD[$j]}
      
    j=`expr $j + 1` 
done

