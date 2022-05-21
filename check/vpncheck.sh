userip=$(curl ident.me)
rm ipv4.txt
nohup wget https://raw.githubusercontent.com/X4BNet/lists_vpn/main/ipv4.txt
if grep -q $userip ipv4.txt; then
echo "user is using a generic vpn (Check C)" >> /tmp/scanresults.txt
rm ipv4.txt
else
echo .
fi
if pgrep -x openvpn >/dev/null; then
echo user has openvpn running "(Check C1)" >> /tmp/scanresults.txt
else
echo .
fi
if pgrep -x Windscribe >/dev/null; then
echo user has Windscribe VPN running "(Check C2)" >> /tmp/scanresults.txt
else
echo .
fi
if pgrep -x riseup-vpn >/dev/null; then
echo user has Riseup VPN running "(Check C3)" >> /tmp/scanresults.txt
else
echo .
fi
if pgrep -x protonvpn* >/dev/null; then
echo user has Proton VPN running "(Check C4)" >> /tmp/scanresults.txt
else
echo .
fi
if pgrep -x vyprvpn >/dev/null; then
echo user has vyprvpn running "(Check C5)" >> /tmp/scanresults.txt
else
echo .
fi
if pgrep -x nordvpn >/dev/null; then
echo user has nordvpn running "(Check C6)" >> /tmp/scanresults.txt
else
echo .
fi
rm ipv4.txt
