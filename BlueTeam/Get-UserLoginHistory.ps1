# Get-UserLoginHistory.ps1
Get-WinEvent -FilterHashtable @{LogName='Security';ID=4624,4625} | ForEach-Object {
    $msg = [xml]$_.ToXml()
    $user = $msg.Event.EventData.Data | Where-Object {$_.Name -eq "TargetUserName"} | Select-Object -ExpandProperty '#text'
    $ip = $msg.Event.EventData.Data | Where-Object {$_.Name -eq "IpAddress"} | Select-Object -ExpandProperty '#text'
    "$($_.TimeCreated): $user from $ip - Event ID: $($_.Id)"
}
