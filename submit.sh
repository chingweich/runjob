#!/bin/bas
for (( i=1; i<=7; i=i+1 ))
do
b=$((3*${i}))
c=$(echo "scale=1;$b/2"|bc)
rWindow=$(echo "scale=1;$c+2"|bc)

file=1.txt 
seq=1
while read line
do
    lines[$seq]=$line
    ((seq++))
done < $file
for (( i=1; i<=${#lines[@]}; i=i+1 ))
do
newDir="$i"of"$rWindow"


#echo  "in=$in"
#echo  "infilename=$infilename"
#./runJob.csh $PWD $infilename $rWindow
bsub -R "type=SLC6_64" -q 1nd $PWD/runJob.csh $PWD  ${lines[$i]} $rWindow $newDir
done

done
