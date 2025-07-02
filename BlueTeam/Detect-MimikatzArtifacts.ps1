# Detect-MimikatzArtifacts.ps1
Get-WinEvent -LogName Security | Where-Object { $_.Message -like "*sekurlsa*" -or $_.Message -like "*mimikatz*" }
