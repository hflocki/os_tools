#!/bin/sh

cd /opt/opensim

echo 'Prebuildvorgang startet!'
./runprebuild.sh

echo 'Kompilierungsvorgang startet!'
# Ersteres ist ohne log Datei zweites ist mit log Datei.

#msbuild /p:Configuration=Release
msbuild /p:Configuration=Release /fileLogger /flp:logfile=opensim.log /v:d