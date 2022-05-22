 #!/bin/bash
 mcproc=$(ps aux | grep java)
echo $mcproc >> /tmp/NativeAgent.tmp
 if grep -q "javaagent" /tmp/NativeAgent.tmp; then
echo "User Failed Native Java Agent Test (Check E)" >> /tmp/scanresults.txt
else
echo .
fi
rm /tmp/NativeAgent.tmp
