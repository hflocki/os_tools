@Echo Off
For /F "Usebackq" %%i In (`Tasklist ^| Find /C "OpenSim"`) Do If /I %%i GTR 0 Echo false & Goto END
start "OpenSim" /D "C:\opensim\bin" OpenSim.exe
Echo true

:END