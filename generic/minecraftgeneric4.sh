#!/bin/bash
check1=$(ps -p `pidof java` -o etimes= )

check2=$(expr `date +%s` - `stat -c %Y /home/$USER/.minecraft/mods/*/`)

if [ $check1 -gt $check2 ]; then
echo "User Modified Mods Folder After Minecraft was launched (Generic 4)" >> /tmp/scanresults.txt
else
echo "Minecraft was launched $check1 seconds ago & user""'""s mods folder was last modified" $check2 "seconds ago" >> /tmp/scanresults.txt
fi
