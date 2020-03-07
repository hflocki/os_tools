#!/bin/sh

clear

#Num  Colour    #define         R G B

#0    black     COLOR_BLACK     0,0,0
#1    red       COLOR_RED       1,0,0
#2    green     COLOR_GREEN     0,1,0
#3    yellow    COLOR_YELLOW    1,1,0
#4    blue      COLOR_BLUE      0,0,1
#5    magenta   COLOR_MAGENTA   1,0,1
#6    cyan      COLOR_CYAN      0,1,1
#7    white     COLOR_WHITE     1,1,1

datum=$(date +%Y-%m-%d)

# Regionen sichern.

# Regionen Server 1 Backup
echo "$(tput setaf 1)OpenSim: $(tput setab 7)Regionen Server 1 Backup$(tput sgr 0)"
sleep 3
screen -S OS1 -p 0 -X eval "stuff 'change region Welcome'^M"
screen -S OS1 -p 0 -X eval "stuff 'save oar /opt/sicherung/'$datum'-Welcome.oar'^M"
sleep 3

# Regionen Server 2 Backup
echo "$(tput setaf 1)OpenSim: $(tput setab 7)Regionen Server 2 Backup$(tput sgr 0)"
sleep 3
screen -S OS2 -p 0 -X eval "stuff 'change region Spectrum'^M"
screen -S OS2 -p 0 -X eval "stuff 'save oar /opt/sicherung/'$datum'-Spectrum.oar'^M"

screen -S OS2 -p 0 -X eval "stuff 'change region Regularix'^M"
screen -S OS2 -p 0 -X eval "stuff 'save oar /opt/sicherung/'$datum'-Regularix.oar'^M"

screen -S OS2 -p 0 -X eval "stuff 'change region Buledania'^M"
screen -S OS2 -p 0 -X eval "stuff 'save oar /opt/sicherung/'$datum'-Buledania.oar'^M"
sleep 3

# Regionen Server 3 Backup
echo "$(tput setaf 1)OpenSim: $(tput setab 7)Regionen Server 3 Backup$(tput sgr 0)"
sleep 3
screen -S OS3 -p 0 -X eval "stuff 'change region Nibelungen'^M"
screen -S OS3 -p 0 -X eval "stuff 'save oar /opt/sicherung/'$datum'-Nibelungen.oar'^M"

screen -S OS3 -p 0 -X eval "stuff 'change region Siegerland'^M"
screen -S OS3 -p 0 -X eval "stuff 'save oar /opt/sicherung/'$datum'-Siegerland.oar'^M"

screen -S OS3 -p 0 -X eval "stuff 'change region Paloma'^M"
screen -S OS3 -p 0 -X eval "stuff 'save oar /opt/sicherung/'$datum'-Paloma.oar'^M"
sleep 3

# Regionen Server 4 Backup
echo "$(tput setaf 1)OpenSim: $(tput setab 7)Regionen Server 4 Backup$(tput sgr 0)"
sleep 3
screen -S OS4 -p 0 -X eval "stuff 'change region Renegate'^M"
screen -S OS4 -p 0 -X eval "stuff 'save oar /opt/sicherung/'$datum'-Renegate.oar'^M"

screen -S OS4 -p 0 -X eval "stuff 'change region Trisolda'^M"
screen -S OS4 -p 0 -X eval "stuff 'save oar /opt/sicherung/'$datum'-Trisolda.oar'^M"

screen -S OS4 -p 0 -X eval "stuff 'change region Province'^M"
screen -S OS4 -p 0 -X eval "stuff 'save oar /opt/sicherung/'$datum'-Province.oar'^M"
sleep 3

# Regionen Server 5 Backup
echo "$(tput setaf 1)OpenSim: $(tput setab 7)Regionen Server 5 Backup$(tput sgr 0)"
sleep 3
screen -S OS5 -p 0 -X eval "stuff 'change region Manni'^M"
screen -S OS5 -p 0 -X eval "stuff 'save oar /opt/sicherung/'$datum'-Manni.oar'^M"

screen -S OS5 -p 0 -X eval "stuff 'change region Manni2'^M"
screen -S OS5 -p 0 -X eval "stuff 'save oar /opt/sicherung/'$datum'-Manni2.oar'^M"

sleep 3