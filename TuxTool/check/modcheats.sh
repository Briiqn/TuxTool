#! /bin/bash
#    This file is part of TuxTool.
#
#    TuxTool is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    TuxTool is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with TuxTool.  If not, see <https://www.gnu.org/licenses/>.
CurrentUser=$(users)
ExplicitB9Check=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 476303)
FenixCheck=$(ls  -ls /home/$CurrentUser/.minecraft/mods | grep 945117)
GhostSenseCheck=$(ls  -ls /home/$CurrentUser/.minecraft/mods | grep 232737)
NebulaCheck=$(ls  -ls /home/$CurrentUser/.minecraft/mods | grep 705585)
BapeCheck=$(ls  -ls /home/$CurrentUser/.minecraft/mods | grep 1489573)
TimeChangerCheck1=$(ls  -ls /home/$CurrentUser/.minecraft/mods | grep 29284)
TimeChangerCheck2=$(ls  -ls /home/$CurrentUser/.minecraft/mods | grep 14548)
RavenB2Check1=$(ls  -ls /home/$CurrentUser/.minecraft/mods | grep 118223)
RavenB2Check2=$(ls  -s /home/$CurrentUser/.minecraft/mods | grep 116)
RavenB1Check=$(ls  -ls /home/$CurrentUser/.minecraft/mods | grep 54620)
GucciClientCheck=$(ls  -ls /home/$CurrentUser/.minecraft/mods | grep 55628)
SumoClientCheck=$(ls  -ls /home/$CurrentUser/.minecraft/mods | grep 149553)
IncognitoCheck=$(ls  -ls /home/$CurrentUser/.minecraft/mods | grep 8674753)
LowkeyCheck=$(ls  -ls /home/$CurrentUser/.minecraft/mods | grep 770390)
OnycCheck=$(ls  -ls /home/$CurrentUser/.minecraft/mods | grep 149594)
SakeCheck=$(ls  -ls /home/$CurrentUser/.minecraft/mods | grep 588131)
SkilledCheck=$(ls  -ls /home/$CurrentUser/.minecraft/mods | grep 251173)
SkilledB1Check=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 239784)
ReachModCheck=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 4631)
ReachModCheck2=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 5996)
AzuryaCheck=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 69653)
RemoveHitDelay=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 7179)
ButterflyMod=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 3785)
GhostClient=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 236695)
LiquidBounce=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 7245326)
SativaCheck=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 951771)
UboaCheck=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 221595)
VeneCheck=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 291968)
WillyCheck=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 3461783)
# checks for all the popular mod cheats like raven, explicit, bape, etc. Can be easily bypassed, will be improved upon.
if [[ $ExplicitB9Check == *'476303'* ]]; then
echo -e User has been caught using Explicit \(Check A\) >> /tmp/scanresults.txt
fi
if [[ $FenixCheck == *'945117'* ]]; then
echo -e User has been caught using Fenix \(Check A\) >> /tmp/scanresults.txt
fi
if [[ $GhostSenseCheck == *'232737'* ]]; then
echo -e User has been caught using Ghost Sense \(Check A\) >> /tmp/scanresults.txt 
fi
if [[ $NebulaCheck == *'705585'* ]]; then
echo -e User has been caught using Nebula God Client \(Check A\) >> /tmp/scanresults.txt
fi
if [[ $BapeCheck == '*1489573'* ]]; then
echo -e User has been caught using Bape or Cracked vape \(Check A\)
fi
if [[ $TimeChangerCheck1 == *'29284'* ]]; then
echo -e User has been caught using TimeChanger client \(Check A\) >> /tmp/scanresults.txt
fi
if [[ $TimeChangerCheck2 == *'14548'* ]]; then
echo -e User has been caught using TimeChanger client \(Check B\) >> /tmp/scanresults.txt
fi
if [[ $RavenB2Check1 == *'118223'* ]]; then
echo -e User has been caught using Raven B2 \(Check A\) >> /tmp/scanresults.txt
fi
if [[ $RavenB2Check2 == *'116'* ]]; then
echo -e User has been caught using Raven B2 \(Check B\) >> /tmp/scanresults.txt
fi
if [[ $RavenB1Check == *'54620'* ]]; then
echo -e User has been caught using Raven B1 \(Check A\) >> /tmp/scanresults.txt
fi
if [[ $GucciClientCheck == *'55628'* ]]; then
echo -e User has been caught using Gucci Client \(Check A\) >> /tmp/scanresults.txt
fi
if [[ $SumoClientCheck == *'149553'* ]]; then
echo -e User has been caught using Gucci Client \(Check A\) >> /tmp/scanresults.txt
fi
if [[ $IncognitoCheck == *'8674753'* ]]; then
echo -e User has been caught using Incognito Client \(Check A\) >> /tmp/scanresults.txt
fi
if [[ $LowkeyCheck == *'770390'* ]]; then
echo -e User has been caught using Incognito Client \(Check A\) >> /tmp/scanresults.txt
fi
if [[ $OnycCheck == *'149594'* ]]; then
echo -e User has been caught using Onyx Client \(Check A\) >> /tmp/scanresults.txt
fi
if [[ $SakeCheck == *'588131'* ]]; then
echo -e User has been caught using Sake Client \(Check A\) >> /tmp/scanresults.txt
fi
if [[ $SkilledCheck == *'251173'* ]];then
echo -e User has been caught using Skilled B2 \(Check A\) >> /tmp/scanresults.txt
fi
if [[ $SkilledB1Check == *'239784'* ]]; then
echo -e User has been caught using Skilled B1 \(Check A\) >> /tmp/scanresults.txt
fi
if [[ $ReachModCheck == *"4631"* ]]; then
echo -e User has been caught using a reach mod \(Check A\) >> /tmp/scanresults.txt
fi
if [[ $ReachModCheck2 == *'5996'* ]]; then
echo -e User has been caught using a reach mod \(Check B\) >> /tmp/scanresults.txt
fi
if [[ $AzuryaCheck == *'69653'* ]]; then
echo -e User has been caught using Azurya Client \(Check A\) >> /tmp/scanresults.txt
fi
if [[ $RemoveHitDelay == *'7179'* ]]; then
echo -e User has been caught using a mod that removes the 1.8.9 hit delay. >> /tmp/scanresults.txt
fi
if [[ $ButterflyMod == *'3785'* ]]; then
echo -e User has been caught using a mod that simulates butterfly clicks \(BANNABLE\) >> /tmp/scanresults.txt
fi
if [[ $GhostClient == *'236695'* ]]; then
echo -e User has been caught using a generic Ghost Client \( Check A\) >> /tmp/scanresults.txt
fi
if [[ $LiquidBounce == *'7245326'* ]]; then
echo -e User is using LiquidBounce \(Check A\) >> /tmp/scanresults.txt
fi
if [[ $SativaCheck == *'951771'* ]]; then
echo -e User has been caught using Sativa Client \(Check A\) >> /tmp/scanresults.txt
fi
if [[ $UboaCheck == *'221595'* ]]; then
echo -e User has been caught using Uboa Client \(Check A\) >> /tmp/scanresults.txt
fi
if [[ $VeneCheck == *'291968'* ]]; then
echo -e User has been caught using Vene Client \(Check A\) >> /tmp/scanresults.txt
fi
if [[ $WillyCheck == *'3461783'* ]]; then
echo -e User has been caught using Willy Client \(haha funny name\) >> /tmp/scanresults.txt
fi
