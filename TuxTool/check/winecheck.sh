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
rm /tmp/TuxTool.tmp
echo $mcproc >> /tmp/TuxTool.tmp
if grep -q "javaagent"  /tmp/TuxTool.tmp; then
echo Minecraft has been launched with a javaagent, $USER is most likely cheating
echo Minecraft is running under wine, please proceed to use normal ss methods, i dont think echo will work tho
else
echo No Java Agents detected
echo Minecraft is running under wine, please proceed to use normal ss methods, i dont think echo will work tho
fi
else
echo Minecraft is not running under wine... exiting
exit
fi
fi

