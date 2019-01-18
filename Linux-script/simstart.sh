#!/bin/sh
cd /opensim/bin

clear

echo 'Robust Server Starten'
sleep 5
screen -fa -S RO -d -U -m mono Robust.exe
sleep 10

echo 'Money Server Starten'
sleep 5
screen -fa -S MS -d -U -m mono MoneyServer.exe
sleep 10

echo 'Sim Server Starten'
sleep 5
screen -fa -S OS -d -U -m mono OpenSim.exe
sleep 10

echo 'Nachfolgende screens wurden gestartet RO, MS und OS.'
screen -ls