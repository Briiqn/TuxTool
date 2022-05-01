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
echo 16.6%
sleep 1
bash $ScriptDir/generic/minecraftgeneric2.sh
clear
echo 33.2%
sleep 1
bash $ScriptDir/check/modcheats.sh
clear
echo 49.8%
sleep 1
bash $ScriptDir/check/vmcheck.sh
clear
echo 66.4%
sleep 1
bash $ScriptDir/generic/minecraftgeneric3.sh
clear
echo 83%
sleep 1
bash $ScriptDir/generic/clearhist.sh
clear
echo 100%
# insert more scripts here
sleep 5
cat /tmp/scanresults.txt

