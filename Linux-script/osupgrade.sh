#!/bin/sh

echo "OpenSim Grid upgrade aus dem Verzeichnis opensim"

# Grid Stoppen.
/opt/osstop.sh

# Log Dateien löschen.
/opt/oslogdel.sh

# Kopieren.
/opt/oscopy.sh

# Grid Starten.
/opt/osstart.sh