#!/bin/sh

# Grid Stoppen.
/opt/osstop.sh

sleep 3

# Log Dateien löschen.
/opt/oslogdel.sh

sleep 5

# Grid Starten.
/opt/osstart.sh