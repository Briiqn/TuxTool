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
CurrentUser=$USER
Sha256Check=$(sha256sum /home/$USER/.minecraft/mods/* /home/$USER/.minecraft/mods/*/*)
echo $Sha256Check >> /tmp/TuxTool$RANDOM.tmp
# checks for all the popular mod cheats like raven, explicit, bape, etc. Bypassing would req the user to know how to build src or edit string with Jbyteedit
if grep -q "af0cf1f38f6ad0cb9b22a3ebe8560f323112947f3232e09b41c00626db8aaf86" /tmp/TuxTool*.tmp; then
echo -e User has been caught using LiquidBounce B72 \(Check A\) >> /tmp/scanresults.txt

fi
if grep -q "320ec3ef32f50693fea5d821491fb60c18cf94524c7be99ac60b535a3c13bcfe" /tmp/TuxTool*.tmp; then
echo -e User has been caught using Raven B+ v.1.0.16 \(Check A\) >> /tmp/scanresults.txt
fi
if grep -q "03f069fa7fcd395492088329ceda11bacc666612979882704982c97073034163" /tmp/TuxTool*.tmp; then
echo -e User has been caught using Raven B+ Experimental \(Check A\) >> /tmp/scanresults.txt
fi
if grep -q "59c1f741f198c68cb70f94630fa36739f6106c7a06eb2a04514feb2c84ef6ad6" /tmp/TuxTool*.tmp; then
echo -e User has been caught using Raven B+ Beta \(Check A\) >> /tmp/scanresults.txt
fi
if grep -q "30023ad5e824d2f17c3724b488b66d1afbf4bdf191fc453f61fe4b0ec4a91eb5" /tmp/TuxTool*.tmp; then
echo -e User has been caught using Vape Crack "(Fake)" \(Check A\) >> /tmp/scanresults.txt
fi
if grep -q "761576f9445ef431171e0eb6d08d9989f2a7f40184a35605801336eea257b3c1" /tmp/TuxTool*.tmp; then
echo -e User is using NoHitDelay, May be a Cheat \(Check A\) >> /tmp/scanresults.txt
fi
if grep -q "0c495411826534916323ace825e0e734ac6e5ddc643276c834db7de54f2ab091" /tmp/TuxTool*.tmp; then
echo -e User has been caught using Skidp "(FDP Client)" \(Check A\) >> /tmp/scanresults.txt
fi
if grep -q "99781fa9716552e2abad20304f39d673fa530c941928b104e17df8d94ae31673" /tmp/TuxTool*.tmp; then
echo -e User has been caught using Old Raven B+ \(Check A\) >> /tmp/scanresults.txt
fi
if grep -q "e447a0a259f90d7b2fe918fad190b29b506bc59f15e41dd8475326c099399783" /tmp/TuxTool*.tmp; then
echo -e User has been caught using Skilled V3 \(Check A\) >> /tmp/scanresults.txt
fi
if grep -q "057fea175bc72640196b17dc35431e74bbc5b4757812b78f692af9007717ce10" /tmp/TuxTool*.tmp; then
echo -e User has been caught using Explicit B9 Type A \(Check A\) >> /tmp/scanresults.txt
fi
if grep -q "9caf3b1ebb212de31709fe64f4ab0b59634c663f3e7434682440ff5895d01dbb" /tmp/TuxTool*.tmp; then
echo -e User has been caught using Explicit B9 Type B \(Check A\) >> /tmp/scanresults.txt
fi
if grep -q "0390ae40f4763bec2a0c77452e096adad1289d1a5e94c3ad2156d6c815755caf" /tmp/TuxTool*.tmp; then
echo -e User has been caught using Explicit B9 Type C \(Check A\) >> /tmp/scanresults.txt
fi
if grep -q "b6ddf8cd68d0c130183f192a751610a91d05a966050052fcf18a375d1eb1e5db" /tmp/TuxTool*.tmp; then
echo -e User has been caught using GhostSense \(Check A\) >> /tmp/scanresults.txt
rm /tmp/TuxTool*.tmp
else
echo .
rm /tmp/TuxTool*.tmp
fi
