# Monitor-FileChanges.ps1
$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = "C:\SensitiveFolder"
$watcher.IncludeSubdirectories = $true
$watcher.EnableRaisingEvents = $true
Register-ObjectEvent $watcher Changed -Action {
    Write-Host "File Changed: $($Event.SourceEventArgs.FullPath)"
}
