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
#great generic that checks for cleared history
CurrentUser=$(users)
ClearHistory=$(stat -c '%Y' /home/$CurrentUser/.bash_history)
ComputerStart=$(stat -c '%Y' /dev/null)
if [[ $ClearHistory > $ComputerStart ]]; then
echo "User has been detected for generic cheat D" >> /tmp/scanresults.txt
fi
