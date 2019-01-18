!/bin/sh
cd /opensim/bin

clear

echo 'Regionen Server Beenden'
sleep 3
screen -fa -S OS -U -m -X stuff $'shutdown\n'
sleep 10

echo 'Money Server Beenden'
sleep 3
screen -fa -S MS -U -m -X stuff $'shutdown\n'
sleep 10

echo 'Robust Server Beenden'
sleep 3
screen -fa -S RO -U -m -X stuff $'shutdown\n'
sleep 10

echo 'Nachfolgende screens wurden beendet RO, MS und OS.'
screen -ls