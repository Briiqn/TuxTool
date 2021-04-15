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
SystemBoot=$(stat -c '%Y' /dev/null)
CurrentUser=$(users)
MCProcessTime=$(stat -c '%Y' /home/$CurrentUser/.minecraft/launcher_log.txt)
if [[ $SystemBoot > $MCProcessTime ]]; then
echo -e User has been detected for Generic cheat A >> /tmp/scanresults.txt
fi
# generic to check if the user changed their minecraft directory
