# Enumerate-PrivEscVectors.ps1
Get-Service | Where-Object {$_.StartType -eq "Auto" -and $_.Status -eq "Running"} | Select-Object Name, PathName
