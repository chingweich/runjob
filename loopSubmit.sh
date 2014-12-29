#!/bin/bas
for (( i=1; i<=7; i=i+1 ))
do
b=$((3*${i}))
c=$(echo "scale=1;$b/2"|bc)
rWindow=$(echo "scale=1;$c+2"|bc)

./submit.sh $rWindow
done
