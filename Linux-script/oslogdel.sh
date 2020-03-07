#!/bin/sh
echo "$(tput sgr 0)--------------------------------------------------"

echo "$(tput setaf 1)$(tput setab 7)Log Dateien löschen$(tput sgr 0)"

echo "$(tput setaf 2)Lösche Robust log Dateien$(tput sgr 0)"
cd /opt/robust/bin
rm *.log

echo "$(tput setaf 2)Lösche Sim1 log Dateien$(tput sgr 0)"
cd /opt/sim1/bin
rm *.log

echo "$(tput setaf 2)Lösche Sim2 log Dateien$(tput sgr 0)"
cd /opt/sim2/bin
rm *.log

echo "$(tput setaf 2)Lösche Sim3 log Dateien$(tput sgr 0)"
cd /opt/sim3/bin
rm *.log

echo "$(tput setaf 2)Lösche Sim4 log Dateien$(tput sgr 0)"
cd /opt/sim4/bin
rm *.log

echo "$(tput setaf 2)Lösche Sim5 log Dateien$(tput sgr 0)"
cd /opt/sim5/bin
rm *.log

echo "$(tput sgr 0)--------------------------------------------------"