#!/bin/sh

# Regionen herunterfahren.
# Shut down regions.
# Arrêtez les régions.
echo "$(tput setaf 1)OpenSim: $(tput setab 7)Regionen OpenSimulator 2 Beenden$(tput sgr 0)"
sleep 3
screen -S OS2 -p 0 -X eval "stuff 'shutdown'^M"
sleep 3

echo "$(tput sgr 0)--------------------------------------------------"

echo "$(tput setaf 1)OpenSim: $(tput setab 7)Regionen OpenSimulator 3 Beenden$(tput sgr 0)"
sleep 3
screen -S OS3 -p 0 -X eval "stuff 'shutdown'^M"
sleep 3

echo "$(tput sgr 0)--------------------------------------------------"

echo "$(tput setaf 1)OpenSim: $(tput setab 7)Regionen OpenSimulator 4 Beenden$(tput sgr 0)"
sleep 3
screen -S OS4 -p 0 -X eval "stuff 'shutdown'^M"
sleep 3

echo "$(tput sgr 0)--------------------------------------------------"

echo "$(tput setaf 1)OpenSim: $(tput setab 7)Regionen OpenSimulator 5 Beenden$(tput sgr 0)"
sleep 3
screen -S OS5 -p 0 -X eval "stuff 'shutdown'^M"
sleep 3

echo "$(tput sgr 0)--------------------------------------------------"

# Grid herunterfahren.
# Shut down the grid.
# Fermez les grids.
echo "$(tput setaf 1)OpenSim: $(tput setab 7)OpenSimulator Startregion Beenden$(tput sgr 0)"
sleep 3
screen -S OS1 -p 0 -X eval "stuff 'shutdown'^M"
sleep 3

echo "$(tput sgr 0)--------------------------------------------------"

echo "$(tput setaf 4)OpenSim: $(tput setab 3)MoneyServer Beenden$(tput sgr 0)"
sleep 20
screen -S MO -p 0 -X eval "stuff 'shutdown'^M"
sleep 30

echo "$(tput sgr 0)--------------------------------------------------"

echo "$(tput setaf 4)OpenSim: $(tput setab 3)RobustServer Beenden$(tput sgr 0)"
sleep 3
screen -S RO -p 0 -X eval "stuff 'shutdown'^M"
sleep 30

echo "$(tput sgr 0)--------------------------------------------------"

screen -ls
echo "$(tput setaf 2)Sollte hier - $(tput sgr 0)No Sockets found $(tput setaf 2)- stehen, dann wurde alles beendet.$(tput sgr 0)"

echo "$(tput sgr 0)--------------------------------------------------"