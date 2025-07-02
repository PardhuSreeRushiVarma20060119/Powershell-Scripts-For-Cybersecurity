# Get-OpenPorts.ps1
param (
    [string]$Target = "localhost",
    [int[]]$Ports = (1..1024)
)
foreach ($port in $Ports) {
    $connection = Test-NetConnection -ComputerName $Target -Port $port
    if ($connection.TcpTestSucceeded) {
        Write-Output "Port $port open on $Target"
    }
}

# Get-SystemInfoReport.ps1
Get-ComputerInfo | Select-Object CsName, OsName, OsArchitecture, WindowsVersion, BiosSerialNumber

# Find-AdminShares.ps1
$computers = Get-Content computers.txt
foreach ($comp in $computers) {
    Invoke-Command -ComputerName $comp -ScriptBlock {
        Get-SmbShare | Where-Object { $_.Name -match "\\$" }
    } -ErrorAction SilentlyContinue
}

# Invoke-ADRecon.ps1
Get-ADUser -Filter * -Property DisplayName, Title, MemberOf | Format-Table DisplayName, Title, MemberOf

# Get-NetworkAdapters.ps1
Get-NetAdapter | Select-Object Name, Status, MacAddress, LinkSpeed

# Dump-ARPTable.ps1
arp -a

# Resolve-DNS.ps1
Resolve-DnsName -Name example.local

# Get-InstalledPrograms.ps1
Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher

# Get-UserGroups.ps1
Get-LocalUser | ForEach-Object {
    $user = $_.Name
    $groups = (Get-LocalGroupMember -Member $user -ErrorAction SilentlyContinue).Group
    [PSCustomObject]@{User=$user;Groups=$groups -join ", "}
}
