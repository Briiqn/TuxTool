#!/bin/bash

echo running as $USER
if pgrep -x wineserver >/dev/null; then
echo wine is running, checking for java in wine instance
sleep 0.5
if pgrep -x java.exe >/dev/null; then
echo getting process args
mcproc=$(ps aux | grep java.exe)
sleep 1
echo minecraft under wine has been launched with the arguments below
echo ___________________________________________________
echo $mcproc
sudo echo -e __________________________ >> /tmp/scanresults.txt
sudo echo Wine Check >> /tmp/scanresults.txt
if grep -q "javaagent"  /tmp/scanresults.txt; then
echo Minecraft has been launched with a javaagent, $USER is most likely cheating
sudo echo -e Minecraft is running under wine, please proceed to use normal ss methods, i dont think echo will work tho >> /tmp/scanresults.txt
sudo echo -e Failed Wine and Wine Java Agent test >> /tmp/scanresults.txt
else
sudo echo -e Passed Wine agent test >> /tmp/scanresults.txt
sudo echo -e Failed Wine test >> /tmp/scanresults.txt
sudo echo -e Minecraft is running under wine, please proceed to use normal ss methods, i dont think echo will work tho >> /tmp/scanresults.txt
fi
else
echo Minecraft is not running under wine... exiting
exit
fi
fi

