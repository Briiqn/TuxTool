#!/bin/bash

mc=$(pidof java)
pmap -p --show-path $mc >> /tmp/MCDUMP$RANDOM.tmp
cut -c 32-128 /tmp/MCDUMP*.tmp >> /tmp/DMP2$RANDOM.tmp
if grep -q "libphantom.so" /tmp/DMP2*.tmp; then
sudo echo "User Was Found Using Phantom External Ghost Client (Check D)" >> /tmp/scanresults.txt
else
echo .
fi
echo \ >> /tmp/scanresults1.txt
echo \ >> /tmp/scanresults1.txt
echo \ >> /tmp/scanresults1.txt
echo \ >> /tmp/scanresults1.txt
echo \ >> /tmp/scanresults1.txt
echo \ >> /tmp/scanresults1.txt
echo \ >> /tmp/scanresults1.txt
echo \ >> /tmp/scanresults1.txt
echo \ >> /tmp/scanresults1.txt
echo \ >> /tmp/scanresults1.txt
echo \ >> /tmp/scanresults1.txt
echo \ >> /tmp/scanresults1.txt
echo \ >> /tmp/scanresults1.txt
echo \ >> /tmp/scanresults1.txt

echo ____________________________________________________________ >> /tmp/scanresults1.txt
echo                        Memory Dump >> /tmp/scanresults1.txt
cat /tmp/DMP2*.tmp >> /tmp/scanresults1.txt
rm /tmp/MCDUMP*.tmp
rm /tmp/DMP2*.tmp
