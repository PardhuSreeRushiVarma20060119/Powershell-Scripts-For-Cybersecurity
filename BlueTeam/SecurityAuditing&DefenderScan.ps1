# Enable-SecurityAuditing.ps1
auditpol /set /category:* /success:enable /failure:enable

# Start-DefenderScan.ps1
Start-MpScan -ScanType FullScan
