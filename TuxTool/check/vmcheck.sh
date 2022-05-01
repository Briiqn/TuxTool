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
vboxMacCheck=$(sudo ifconfig -a | grep 08:00:)
VMwareMacCheck0=$(sudo ifconfig -a | grep 00:05:)
VMWareMacCheck1=$(sudo ifconfig -a | grep 00:0C:)
VMWareMacCheck2=$(sudo ifconfig -a | grep 00:1C:)
VMWareMacCheck3=$(sudo ifconfig -a | grep 00:50:)
GeneralCPUCheck=$(sudo cat /proc/cpuinfo | grep hypervisor)
RealAMDCheck=$(cat /proc/cpuinfo | grep -i AMD)
AMDAuth=$(cat /proc/cpuinfo | grep -i AuthenticAMD)
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
echo -e User has been detected for using a virtual machine 1C >> /tmp/scanresults.txt
fi
if [ -z !$vboxBiosVersion ]; then
echo -e User has been detected for using a virtual machine 2C >> /tmp/scanresults.txt
fi

if [ -z !$VMwareDriverCheck ]; then 
echo -e User has been detected for using a virtual machine 1D >> /tmp/scanresults.txt
fi
if [ -z !$vboxMacCheck ]; then
echo -e User has been detected for using a virtual machine 4A >> /tmp/scanresults.txt
fi
if [ -z !$VMwareMacCheck0 ]; then
echo -e User has been detected for using a virtual machine 3A >> /tmp/scanresults.txt
fi
if [ -z !$VMwareMacCheck1 ]; then
echo -e User has been detected for using a virtual machine 3B >> /tmp/scanresults.txt
fi
if [ -z !$VMwareMacCheck2 ]; then
echo -e User has been detected for using a virtual machine 3C >> /tmp/scanresults.txt
fi
if [ -z !$VMwareMacCheck3 ]; then
echo -e User has been detected for using a virtual machine 3D >> /tmp/scanresults.txt
fi
if [ -z !$GeneralCPUCheck ]; then
echo -e User has been detected for using a virtual machine 5A >> /tmp/scanresults.txt
fi
if dmidecode | grep 'Microsoft'; then
echo -e User has been detected for using a virtual machine 5B >> /tmp/scanresults.txt
fi
if [ -z !$vboxBiosDate ]; then 
echo -e User has been detected for using a virtual machine 2E >> /tmp/scanresults.txt
fi
if [ -f /proc/xen/privcmd ]; then
echo -e User has been detected for using a virtual machine 6A >> /tmp/scanresults.txt
elif [ -f /proc/xen/capabilities ]; then 
echo -e User has been detected for using a virtual machine 6B >> /tmp/scanresults.txt
fi
if grep 'QEMU' /proc/cpuinfo; then
echo -e User has been detected for using a virtual machine 6C >> /tmp/scanresults.txt
fi
if [[ -z !$RealAMDCheck ]] && [[ -z $AMDAuth ]]; then
echo -e User has been detected for using a virtual machine 7A 
fi
