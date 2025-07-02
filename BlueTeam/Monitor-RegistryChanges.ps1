# Monitor-RegistryChanges.ps1
$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = "C:\Windows\System32"
$watcher.Filter = "*.reg"
$watcher.IncludeSubdirectories = $true
$watcher.EnableRaisingEvents = $true
Register-ObjectEvent $watcher Changed -Action {
    Write-Host "Registry Modified: $($Event.SourceEventArgs.FullPath)"
}
