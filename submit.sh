#!/bin/bash
rWindow=4.
file=1.txt 
seq=1
while read line
do
    lines[$seq]=$line
    ((seq++))
done < $file
for (( i=1; i<=${#lines[@]}; i=i+1 ))
do



#echo  "in=$in"
#echo  "infilename=$infilename"
#./runJob.csh $PWD $infilename $rWindow
bsub -R "type=SLC6_64" -q 1nd $PWD/runJob.csh $PWD $ ${lines[$i]} $rWindow $i 
done



