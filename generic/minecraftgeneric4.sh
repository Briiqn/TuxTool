#!/bin/bash
check1=$(ps -p `pidof java` -o etimes= )

check2=$(expr `date +%s` - `stat -c %Y /home/$(whoami)/.minecraft/mods/`)
check3=$(expr `date +%s` - `stat -c %Y /home/$(whoami)/.minecraft/mods//`)

if [ $check2 == ]; then
check2=$(echo "ERROR")
else
echo .
fi

if [ $check1 -gt $check2 ]; then
echo "User Modified Mods Folder After Minecraft was launched (Generic 4)" >> /tmp/scanresults.txt
else
echo "Minecraft was launched"$check1 "seconds ago & user""'""s mods folder was last modified" $check2 "seconds ago" >> /tmp/scanresults.txt
fi
if [ $check1 -gt $check3 ]; then
echo "User Modified Subdirectories in Mods Folder After Minecraft was launched (Generic 4A)" >> /tmp/scanresults.txt
else
echo "Minecraft was launched"$check1 "seconds ago & user""'""s mods folder was last modified" $check2 "seconds ago" >> /tmp/scanresults.txt
fi
if [ $check2 = "ERROR" ]; then
echo "The Error May be due to the user not having a existing mods folder, check if the user is running forge/fabric" >> /tmp/scanresults.txt
fi
