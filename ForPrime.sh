#!/bin/bash
echo "enter the starting range";
read start;
echo "entr the ending range";
read end;
for ((j=$start;j<=$end;j++))
do
count=0
for ((i=2;i<$j;i++))
do
if [ `expr $j % $i` -eq 0 ]
then
count=`expr $count + 1 `
fi
done
if [ $count -eq 0 ]
then
echo primenumber$j
else
echo notprime$j
fi
done
