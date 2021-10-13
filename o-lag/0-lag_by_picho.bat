@ECHO OFF
Wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "My Restore Point", 100, 12
ipconfig /flushdns
ipconfig /release
ipconfig /renew
netsh winsock reset
netsh int tcp set global chimney=enabled
netsh int tcp set global autotuninglevel=normal
netsh int tcp set supplemental
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global ecncapability=enabled
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
del C:\Windows\Temp /F
sc config XboxNetApiSvc start= disabled
sc config XblGameSave start= disabled
sc config XblAuthManager start= disabled
start ms-settings:
start "" cmd /c "echo LEER!!! Ahora ve a juegos y quita xbox game bar, ayudara poco si no quieres no es nesesario, siguiente escribe, gpu en el b uscador de windows, activa la opcion y reinicia la compu&echo(&pause"
PAUSE