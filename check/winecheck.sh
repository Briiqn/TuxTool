#!/bin/bash

if pgrep -x wineserver >/dev/null; then
echo ...
sleep 0.5
if pgrep -x java.exe >/dev/null; then
echo ..
mcproc=$(ps aux | grep java.exe)
echo $mcproc >> /tmp/WineScan.tmp
sleep 1
sudo echo "User Failed Wine Test (Check B)" >> /tmp/scanresults.txt
if grep -q "javaagent" /tmp/WineScan.tmp; then
sudo echo "User Failed Wine Java Agent Test (Check B1)" >> /tmp/scanresults.txt
else
echo .
fi
else
echo Minecraft is not running under wine... exiting
exit
fi
fi
rm /tmp/WineScan*.tmp

