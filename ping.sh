#!/bin/bash

for i in 10.93.161.{1..255}
do
ping -c 1 $i >> /dev/null
if [ $?=0 ]
then
echo $i > online.txt
else
echo $i > offline.txt
fi
done
echo "on a `wc -l online.txt` utilisateurs en ligne !"
echo "on a `wc -l offline.txt` utilisateurs hors ligne !"

