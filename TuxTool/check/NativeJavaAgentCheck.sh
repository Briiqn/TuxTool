 #!/bin/bash
 mcproc=$(ps aux | grep java)
echo $mcproc >> /tmp/NativeAgent.tmp
 if grep -q "javaagent" /tmp/NativeAgent.tmp; then
sudo echo "User Failed Native Java Agent Test (Check D)" >> /tmp/scanresults.txt
else
echo .
fi
rm /tmp/NativeAgent.tmp
