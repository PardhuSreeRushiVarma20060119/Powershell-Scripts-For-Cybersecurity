# Find-AVProcesses.ps1
$avProcesses = @("MsMpEng", "avp", "McShield", "savservice", "egui")
Get-Process | Where-Object { $avProcesses -contains $_.Name } | Select-Object Name, Id, StartTime
