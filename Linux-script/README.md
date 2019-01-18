# Ubuntu Linux Skripte
getestet mit Ubuntu 18.10 Server.

Shell Bash Skripte startbar machen mit:

      chmod +x skriptname.sh

Skript starten mit:

     ./skriptname.sh

## mono5.sh
Prüft ob mono-complete installiert ist.
Wenn nicht wird mono-complete 5.x ohne weitere abfrage installiert.

Stand 18.01.2019 mono 5.18

## simstart.sh
Startet Robust, OpenSim und Money Server aus dem Verzeichnis opensim/bin.

Bitte Pfade und Namen anpassen.

## simstop.sh
Fährt Robust, OpenSim und Money Server herunter mit "shutdown", welches zuvor mit simstart.sh gestartet wurde.

Bitte Pfade und Namen anpassen.
