@Echo Off
tasklist /FI "IMAGENAME eq OpenSim.exe" 2>NUL | find /I /N "OpenSim.exe">NUL
if "%ERRORLEVEL%"=="0" echo true
ping -n 5 127.0.0.1 > nul