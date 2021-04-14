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
ProcessCheck=$(ps -ef | grep 'java' | grep 'minecraft' | sort -g | sed -r 's/^([^.]+).*$/\1/; s/^[^0-9]*([0-9]+).*$/\1/')
CheckDeletedFile=$(cat /proc/$ProcessCheck/task/$ProcessCheck | grep deleted | grep .minecraft)
if [ -z !$CheckDeletedFile ]; then
echo -e 'User has been flagged for generic cheat B' >> /tmp/scanresults.txt 
fi
# revolutionary linux method, is able to detect any mod cheat if it's deleted
