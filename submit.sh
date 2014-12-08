#!/bin/bash

rWindow=4.5
for (( i=1; i<22; i=i+1 ))
do
in=$i
infilename="root://grid71.phy.ncu.edu.tw//dpm/phy.ncu.edu.tw/home/cms/store/user/chchen/DYToMuMu_M-20_TuneZ2star_14TeV-pythia6-tauola/crab_DY_14TeV/141106_184757/0000/DY_$in.root"

#echo  "in=$in"
#echo  "infilename=$infilename"
#./runJob.csh $PWD $infilename $rWindow
bsub -R "type=SLC6_64" -q 1nd $PWD/runJob.csh $PWD $infilename $rWindow $i



