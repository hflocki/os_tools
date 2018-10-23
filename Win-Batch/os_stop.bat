@Echo Off
taskkill /FI "IMAGENAME eq OpenSim.exe"
ping -n 5 127.0.0.1 > nul
taskkill /F /FI "IMAGENAME eq OpenSim.exe"
Echo true
