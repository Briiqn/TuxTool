#! /bin/bash
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
echo "
 **********                 **********                    **
/////**///                 /////**///                    /**
    /**     **   ** **   **    /**      ******   ******  /**
    /**    /**  /**//** **     /**     **////** **////** /**
    /**    /**  /** //***      /**    /**   /**/**   /** /**
    /**    /**  /**  **/**     /**    /**   /**/**   /** /**
    /**    //****** ** //**    /**    //****** //******  ***
    //      ////// //   //     //      //////   //////  /// 
"
echo checking for compatibility...
MacOSCheck=/proc/
Unixcheck=/home/
sudo chmod ugo+rwx /tmp/scanresults.txt
rm -R /tmp/scanresults.txt
touch /tmp/scanresults.txt
sudo chmod ugo+rwx /tmp/scanresults.txt
if [ -e "$UnixCheck" ]; then
echo User is running unix...
fi 
if [ -e "$MacOSCheck" ]; then
echo User is running $(cat /etc/*-release | grep "PRETTY_NAME" | sed 's/PRETTY_NAME=//g')
else 
echo User is running MacOS
fi
if [ -e "$MacOSCheck" ]; then
OperatingSystem=$(cat /etc/issue | awk '{ print $1 $2 }')
fi
echo Scanning...
sleep 2
ScriptDir=$(pwd)
sleep 1
echo 0%
sudo bash $ScriptDir/generic/minecraftgeneric1.sh
clear
echo 14.2%
sleep 1
bash $ScriptDir/generic/minecraftgeneric2.sh
clear
echo 28.5%
sleep 1
bash $ScriptDir/check/modcheats.sh & bash $ScriptDir/check/winecheck.sh
clear
echo 42.8%
sleep 1
bash $ScriptDir/check/vmcheck.sh
clear
echo 57.1%
sleep 1
bash $ScriptDir/generic/minecraftgeneric3.sh
clear
echo 71.4%
sleep 1
bash $ScriptDir/generic/minecraftgeneric4.sh
clear
echo 85.7%
sleep 1
bash $ScriptDir/generic/clearhist.sh
clear
echo 100%
sleep 0.5
clear
echo ___________________
echo running extra check
nohup bash $ScriptDir/check/vpncheck.sh
rm nohup.out
clear
echo Done! results are in /tmp/scanresults "(use cat /tmp/scanresults)" to get he output
# insert more scripts here
sleep 5
cat /tmp/scanresults.txt
exit

