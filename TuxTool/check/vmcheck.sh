#! /bin/bash 
#   This file is part of TuxTool.
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
VMwaresysname=$(cat /etc/hostname | grep VMware)
VMwaresysname2=$(cat /etc/hostname | grep VM)
Vboxsysname=$(cat /etc/hostname | grep virtual)
Vboxsysname2=$(cat /etc/hostname | grep vbox)
VMwareAdapter=$(sudo lshw -C network | grep VMware)
vboxBiosVersion=$(sudo dmidecode | grep VBOX)
vboxBiosDate=$(sudo dmidecode | grep "06/23/99")
vboxDriverCheck=$(sudo lsmod | grep vbox)
VMwareDriverCheck=$(sudo lsmod | grep vmware)
vboxMacCheck=$(sudo ifconfig -a | grep 08:00:27)
VMwareMacCheck0=$(sudo ifconfig -a | grep 00:05:69)
VMWareMacCheck1=$(sudo ifconfig -a | grep 00:0C:29)
VMWareMacCheck2=$(sudo ifconfig -a | grep 00:1C:14)
VMWareMacCheck3=$(sudo ifconfig -a | grep 00:50:56)
if [ -z !$VMwaresysname ]; then
echo -e User has been detected for using a virtual machine 1A >> /tmp/scanresults.txt
fi
if [ -z !$VMwaresysname2 ]; then 
echo -e User has been detected for using a virtual machine 1B >> /tmp/scanresults.txt
fi
if [ -z !$Vboxsysname ]; then
echo -e User has been detected for using a virtual machine 2A >> /tmp/scanresults.txt
fi
if [ -z !$Vboxsysname2 ]; then 
echo -e User has been detected for using a virtual machine 2B >> /tmp/scanresults.txt
fi
if [ -z !$VMwareAdapter ]; then
echo -e User has been detected for using a virtual machine 3A >> /tmp/scanresults.txt
fi
if [ -z !$vboxBiosVersion ]; then
echo -e User has been detected for using a virtual machine 4A >> /tmp/scanresults.txt
fi
if [ -z !$vboxDriverCheck ]; then
echo -e User has been detected for using a virtual machine 5A >> /tmp/scanresults.txt
fi
if [ -z !$VMwareDriverCheck ]; then 
echo -e User has been detected for using a virtual machine 5B >> /tmp/scanresults.txt
fi
if [ -z !$vboxMacCheck ]; then
echo -e User has been detected for using a virtual machine 6A >> /tmp/scanresults.txt
fi
if [ -z !$VMwareMacCheck0 ]; then
echo -e User has been detected for using a virtual machine 6B >> /tmp/scanresults.txt
fi
if [ -z !$VMwareMacCheck1 ]; then
echo -e User has been detected for using a virtual machine 6C >> /tmp/scanresults.txt
fi
if [ -z !$VMwareMacCheck2 ]; then
echo -e User has been detected for using a virtual machine 6D >> /tmp/scanresults.txt
fi
if [ -z !$VMwareMacCheck3 ]; then
echo -e User has been detected for using a virtual machine 6E >> /tmp/scanresults.txt
fi
