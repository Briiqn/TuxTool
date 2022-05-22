#!/bin/bash
rm /tmp/MCDUMP*.tmp
rm /tmp/DMP*.tmp
rm /tmp/javaStrings.tmp
mc=$(pidof java)
pmap -p --show-path $mc >> /tmp/MCDUMP$RANDOM.tmp
cut -c 32-128 /tmp/MCDUMP*.tmp >> /tmp/DMP2.tmp
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
grep -v "[ ]" /tmp/DMP2.tmp >> /tmp/DMP3.tmp

while read line; do strings "$line">> /tmp/javaStrings.tmp & sleep .01; done < /tmp/DMP3.tmp
if grep -q "libphantom.so" /tmp/DMP2.tmp; then
echo "User was found using Phantom Ghost Client (Check D)" >> /tmp/scanresults.txt
elif grep -q "_ZN5ReachC1EP7Phantom" /tmp/javaStrings.tmp; then
echo "User was found using Phantom Ghost Client (Check D)" >> /tmp/scanresults.txt
elif grep -q "_ZN9MinecraftC1EP7Phantom" /tmp/javaStrings.tmp; then
echo "User was found using Phantom Ghost Client (Check D)" >> /tmp/scanresults.txt
else
echo .
fi
rm /tmp/MCDUMP*.tmp
rm /tmp/DMP*.tmp
rm /tmp/javaStrings.tmp
