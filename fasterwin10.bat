@echo off
title FasterWİN10  ~V1.0
ipconfig /flushdns
netsh int ip reset
netsh winsock reset

netsh interface ipv4 reset
netsh interface ipv6 reset

del /s /f /q %temp%\*
rmdir /s /q %temp%\*

echo Gorsel efektler kapatiliyor...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v FontSmoothing /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v DragFullWindows /t REG_SZ /d 0 /f

echo İslemler tamamlandı.
pause
