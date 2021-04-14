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
FenixCheck=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 945117)
GhostSenseCheck=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 232737)
NebulaCheck=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 705585)
BapeCheck=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 1489573)
TimeChangerCheck1=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 29284)
TimeChangerCheck2=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 14548)
RavenB2Check1=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 118223)
RavenB2Check2=$(ls -s /home/$CurrentUser/.minecraft/mods | grep 116)
RavenB1Check=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 54620)
GucciClientCheck=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 55628)
SumoClientCheck=$(ls -ls /home/$CurrentUser/.minecraft/mods | grep 149553)
# checks for all the popular mod cheats like raven, explicit, bape, etc. Can be easily bypassed, will be improved upon.
if [ -z !$ExplicitB9Check ]; then
echo -e User has been caught using Explicit \(Check A\) >> /tmp/scanresults.txt
fi
if [ -z !$FenixCheck ]; then
echo -e User has been caught using Fenix \(Check A\) >> /tmp/scanresults.txt
fi
if [ -z !$GhostSenseCheck ]; then 
echo -e User has been caught using Ghost Sense \(Check A\) >> /tmp/scanresults.txt 
fi
if [ -z !$NebulaCheck ]; then
echo -e User has been caught using Nebula God Client \(Check A\) >> /tmp/scanresults.txt
fi
if [ -z !$BapeCheck ]; then
echo -e User has been caught using Bape or Cracked vape \(Check A\)
fi
if [ -z !$TimeChangerCheck1 ]; then 
echo -e User has been caught using TimeChanger client \(Check A\) >> /tmp/scanresults.txt
fi
if [ -z !$TimeChangerCheck2 ]; then
echo -e User has been caught using TimeChanger client \(Check B\) >> /tmp/scanresults.txt
fi
if [ -z !$RavenB2Check1 ]; then
echo -e User has been caught using Raven B2 \(Check A\) >> /tmp/scanresults.txt
fi
if [ -z !$RavenB2Check2 ]; then
echo -e User has been caught using Raven B2 \(Check B\) >> /tmp/scanresults.txt
fi
if [ -z !$RavenB1Check ]; then
echo -e User has been caught using Raven B1 \(Check A\) >> /tmp/scanresults.txt
fi
if [ -z !$GucciClientCheck ]; then
echo -e User has been caught using Gucci Client \(Check A\) >> /tmp/scanresults.txt
fi
if [ -z !$SumoClientCheck ]; then
echo -e User has been caught using Gucci Client \(Check A\) >> /tmp/scanresults.txt
fi
