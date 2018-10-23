@Echo Off
Echo OpenSim wird beendet und neu gestartet!
taskkill /FI "IMAGENAME eq OpenSim.exe"
ping -n 15 127.0.0.1 > nul
taskkill /F /FI "IMAGENAME eq OpenSim.exe"
ping -n 15 127.0.0.1 > nul
start "OpenSim" /D "C:\opensim\bin" OpenSim.exe
ping -n 15 127.0.0.1 > nul