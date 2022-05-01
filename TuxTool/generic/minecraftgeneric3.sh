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

# cool generic that checks if mod folder was modified after minecraft was launched
CurrentUser=$(users)
MCProcess=$(ps -eo pid,comm,lstart,etime,time,args | grep java | grep minecraft | awk '{ print $1 }' | awk '{ print $1 }' )
MCProcessDate=$(ps -eo pid,lstart | grep $MCProcess | awk '{ print $5 }' | cut -d ':' -f 1-2 | tr -d ":")
MCModDate=$(stat -c '%y' /home/$CurrentUser/.minecraft/mods | awk '{ print $2 }' | cut -d '.' -f 1 | cut -d ':' -f 1-2 | tr -d ":")
if [[ $MCModDate > $MCProcessDate ]]; then
echo "User has been flagged for generic cheat C" >> /tmp/scanresults.txt
fi
