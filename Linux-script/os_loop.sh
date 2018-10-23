#!/bin/sh
while true
do

cd /opensim/bin
running=`ps ax|grep $(cat /opensim/opensim.pid)|grep -v grep`
if [ -z "$running" ]; then
       # The Log Entry
       TIME="Server Down, Restarting: `date +"%A, %B %d - %r"`"
       echo $TIME
       cd /opensim/bin
#	ulimit -s 262144
       screen -fa -S OS -d -U -m mono --optimize=sse2 OpenSim.exe
fi

       sleep 30
done