#!/bin/bash
echo
if [ -f "/usr/bin/xclicker" ]; then
echo "User has Generic AutoClicker A Installed" >> /tmp/scanresults.txt
fi
if [ -f "/usr/bin/xdotool" ]; then
echo "User has Generic Macro Tool A Installed" >> /tmp/scanresults.txt
fi
if [ -f "/usr/bin/click4ever" ]; then
echo "User has Generic AutoClicker B Installed" >> /tmp/scanresults.txt
fi
if [ -f "/usr/bin/clicker" ]; then
echo "User has Generic AutoClicker C Installed" >> /tmp/scanresults.txt
fi


