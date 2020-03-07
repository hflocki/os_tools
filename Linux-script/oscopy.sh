#!/bin/sh

cd /

echo 'Kopiervorgang startet!'

echo 'Kopiere Robust!'
cp -r /opt/opensim/bin /opt/robust

echo 'Kopiere Sim1!'
cp -r /opt/opensim/bin /opt/sim1

echo 'Kopiere Sim2!'
cp -r /opt/opensim/bin /opt/sim2

echo 'Kopiere Sim3!'
cp -r /opt/opensim/bin /opt/sim3

echo 'Kopiere Sim4!'
cp -r /opt/opensim/bin /opt/sim4

echo 'Kopiere Sim5!'
cp -r /opt/opensim/bin /opt/sim5

echo 'Kopiervorgang beendet!'