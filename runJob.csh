#!/bin/tcsh

cd $1

setenv SCRAM_ARCH slc6_amd64_gcc481; eval `scramv1 runtime -csh`
setenv X509_USER_PROXY $HOME/private/grid.proxy

#echo  "runJob 2=$2"
#echo  "runjob 3=$3"

root -q -b xAna_oot.C++\(\"$2\",-1,$3\) 
