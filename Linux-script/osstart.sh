#!/bin/sh

# Einstellungen.
/opt/ossettings.sh

#OpenSim: Robust OpenSimulator starten
#OpenSim: Start Robust OpenSimulator
#OpenSim: démarrer Robust OpenSimulator
echo "$(tput setaf 4)OpenSim: $(tput setab 3)RobustServer Start$(tput sgr 0)"
cd /opt/robust/bin
sleep 5
screen -fa -S RO -d -U -m mono Robust.exe
sleep 10

echo "$(tput sgr 0)--------------------------------------------------"

#OpenSim: MoneyServer starten
#OpenSim: Start MoneyServer
#OpenSim: démarrez MoneyServer
echo "$(tput setaf 4)OpenSim: $(tput setab 3)MoneyServer Start$(tput sgr 0)"
cd /opt/robust/bin
sleep 5
screen -fa -S MO -d -U -m mono MoneyServer.exe
sleep 40

echo "$(tput sgr 0)--------------------------------------------------"

#OpenSim: Regionen starten
#OpenSim: start regions
#OpenSim: régions de départ
echo "$(tput setaf 1)OpenSim: $(tput setab 6)Welcome Region des OpenSimulator Starten$(tput sgr 0)"
echo "$(tput setaf 6)Bitte diese Region klein und schnell halten,$(tput sgr 0)"
echo "$(tput setaf 6)lagg auf dieser Region reduziert die Leistung des gesamten Grids.$(tput sgr 0)"
cd /opt/sim1/bin
sleep 5
screen -fa -S OS1 -d -U -m mono OpenSim.exe
sleep 10

echo "$(tput sgr 0)--------------------------------------------------"

echo "$(tput setaf 1)OpenSim: $(tput setab 7)Region sim2 Starten$(tput sgr 0)"
cd /opt/sim2/bin
sleep 5
screen -fa -S OS2 -d -U -m mono OpenSim.exe
sleep 10
#echo 'offline'

echo "$(tput sgr 0)--------------------------------------------------"

echo "$(tput setaf 1)OpenSim: $(tput setab 7)Region sim3 Starten$(tput sgr 0)"
cd /opt/sim3/bin
sleep 5
screen -fa -S OS3 -d -U -m mono OpenSim.exe
sleep 10
#echo 'offline'

echo "$(tput sgr 0)--------------------------------------------------"

echo "$(tput setaf 1)OpenSim: $(tput setab 7)Region sim4 Starten$(tput sgr 0)"
cd /opt/sim4/bin
sleep 5
screen -fa -S OS4 -d -U -m mono OpenSim.exe
sleep 10
#echo 'offline'

echo "$(tput sgr 0)--------------------------------------------------"

echo "$(tput setaf 1)OpenSim: $(tput setab 7)Region sim5 Starten$(tput sgr 0)"
cd /opt/sim5/bin
sleep 5
screen -fa -S OS5 -d -U -m mono OpenSim.exe
sleep 10
#echo 'offline'

echo "$(tput sgr 0)--------------------------------------------------"

echo "$(tput setaf 2)Nachfolgende screens wurden gestartet $(tput sgr 0)RO $(tput setaf 2)und $(tput sgr 0)OS$(tput setaf 2).$(tput sgr 0)"
screen -ls