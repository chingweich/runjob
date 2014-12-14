#!/bin/tcsh

cd $1
mkdir $4
cp xAna_oot.C ./$4
cp untuplizer.h ./$4
cd $4

#setenv SCRAM_ARCH slc6_amd64_gcc481; eval `scramv1 runtime -csh`
#setenv X509_USER_PROXY $HOME/private/grid.proxy

#echo  "runJob 2=$2"
#echo  "runjob 3=$3"

root -q -b xAna_oot.C++\(\"$2\",-1,$3\)

cd ..
cp ./$4/*.root . 
rm -rf ./$4 
