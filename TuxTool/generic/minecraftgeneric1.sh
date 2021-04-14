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
SystemBoot=$(who -b | cut -b 31-33)
CurrentUser=$(users)
MinecraftLaunchTime=$(stat -c '%y' /home/$CurrentUser/.minecraft/launcher_log.txt | cut -b 9-10)
MCProcess=$(ps -eo pid,comm,lstart,etime,time,args | grep java | cut -b 33-34)
DotMinecraft=/home/$CurrentUser/.minecraft/
if [[ $SystemBoot > $MinecraftLaunchTime ]] 
then
echo -e User has been flagged for generic cheat A >> /tmp/scanresults.txt 
fi
# generic to check if the user changed their minecraft directory
