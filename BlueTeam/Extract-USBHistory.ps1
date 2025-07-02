# Extract-USBHistory.ps1
Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Enum\USBSTOR\*" | Select-Object FriendlyName, PSPath
