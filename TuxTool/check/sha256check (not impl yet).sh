#!/bin/bash
echo This will test to see if a certain file exists on the system, it may take up to an hr depending on speed
cd /
if sudo find . -type f -exec sha256sum /home/$USER/{} \; | grep -q '51e379596c67b57560f13f21acc462ec15c892b662b7c391562300fc5b161b18'; then
kill -9 $(pidof find)
echo found Phantom
else
echo not found
fi
