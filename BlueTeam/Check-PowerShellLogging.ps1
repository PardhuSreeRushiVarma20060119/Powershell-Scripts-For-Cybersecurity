# Check-PowerShellLogging.ps1
$logSettings = @(
    "HKLM:\Software\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging",
    "HKLM:\Software\Policies\Microsoft\Windows\PowerShell\ModuleLogging"
)
foreach ($key in $logSettings) {
    Get-ItemProperty -Path $key -ErrorAction SilentlyContinue
}
