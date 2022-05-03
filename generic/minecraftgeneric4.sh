#!/bin/bash
lm=$(date -r /home/$USER/.minecraft/mods/)
lm1=$(date -r /home/$USER/.minecraft/mods/*)
gettime1=$(stat -c %Y .)
gettime2=$(stat -c %Y /home/$USER/.minecraft/mods/)
gettime3=$(stat -c %Y /home/$USER/.minecraft/mods/*)
if [ $gettime2 -gt $gettime1 ]; then
sudo echo "User modified a file in their mods folder after ss tool was installed" >> /tmp/scanresults.txt
elif [ $gettime3 -gt $gettime1 ]; then
sudo echo "User modified a file in their mods folder after ss tool was installed" >> /tmp/scanresults.txt
else
echo "User Did not touch mods folder after ss tool was installed" >> /tmp/scanresults.txt
echo "User's mods folder was last modified on" $lm >> /tmp/scanresults.txt
fi
if [ -d /home/$USER/.minecraft/mods/* ]; then
echo "the subdirectories in users mods folders were last modified on" $lm1 >> /tmp/scanresults.txt
fi

