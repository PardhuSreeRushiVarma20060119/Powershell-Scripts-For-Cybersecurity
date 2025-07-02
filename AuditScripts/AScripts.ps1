# Get-ScheduledPersistence.ps1
Get-ScheduledTask | Where-Object {
    $_.TaskPath -notlike "\\Microsoft*"
} | Select-Object TaskName, TaskPath, Actions

# Invoke-WhoamiAll.ps1
whoami /all | Out-String

# Audit-LocalAdmins.ps1
Get-LocalGroupMember -Group "Administrators" | Select-Object Name, ObjectClass

# List-Startups.ps1
Get-ItemProperty "HKLM:\Software\Microsoft\Windows\CurrentVersion\Run" | Select-Object *

# Audit-FirewallRules.ps1
Get-NetFirewallRule | Select-Object DisplayName, Enabled, Direction, Action

# Check-UnsignedDrivers.ps1
Get-WmiObject Win32_PnPSignedDriver | Where-Object {$_.IsSigned -eq $false} | Select-Object DeviceName, DriverVersion

# Detect-SuspiciousProcesses.ps1
Get-Process | Where-Object {
    $_.CPU -gt 100 -or $_.Parent -eq $null
} | Select-Object Name, CPU, Id, StartTime
