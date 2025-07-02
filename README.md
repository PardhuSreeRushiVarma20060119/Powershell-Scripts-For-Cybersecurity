# 🛠️ Custom PowerShell Scripts for Cybersecurity

A curated collection of PowerShell scripts for red team operations, blue team defense, reconnaissance, and auditing. These scripts are designed for **educational, research, and authorized security testing purposes only**.

> ⚠️ **Disclaimer:** These scripts are intended for ethical use in lab environments, red team engagements, or defensive monitoring only. **Do not use** these on systems you do not own or without proper authorization. Misuse may be illegal and unethical.

---

## 📁 Categories

- [🔴 Red Team Scripts](#-red-team-scripts)
- [🔵 Blue Team Scripts](#-blue-team-scripts)
- [🕵️ Recon Scripts](#-recon-scripts)
- [🛡️ Audit Scripts](#-audit-scripts)

---

## 🔴 Red Team Scripts

| Script | Description |
|--------|-------------|
| `Invoke-LSASSDump.ps1` | Dumps LSASS memory using `rundll32` and `comsvcs.dll`. |
| `Find-AVProcesses.ps1` | Detects common antivirus/EDR processes. |
| `Bypass-UAC.ps1` | Bypasses UAC using registry hijack with `eventvwr.exe`. |
| `Invoke-TokenManipulation.ps1` | Enumerates privileges and tokens for potential abuse. |
| `Dump-ChromePasswords.ps1` | Copies Chrome's Login Data SQLite DB for offline credential extraction. |
| `Invoke-PhantomUser.ps1` | Creates a stealthy local admin user for persistence. |
| `Enumerate-PrivEscVectors.ps1` | Lists auto-started services to find privilege escalation paths. |

---

## 🔵 Blue Team Scripts

| Script | Description |
|--------|-------------|
| `Monitor-FileChanges.ps1` | Watches directory for file changes in real-time. |
| `Get-UserLoginHistory.ps1` | Parses Event Logs for logon success/failure attempts. |
| `Check-PowerShellLogging.ps1` | Checks status of PowerShell ScriptBlock/Module logging. |
| `Enable-SecurityAuditing.ps1` | Enables full system auditing via `auditpol`. |
| `Start-DefenderScan.ps1` | Triggers a full Windows Defender scan. |
| `Detect-MimikatzArtifacts.ps1` | Scans logs for signs of Mimikatz usage. |
| `Monitor-RegistryChanges.ps1` | Watches registry file writes in System32. |
| `Extract-USBHistory.ps1` | Lists historical USB device connections. |

---

## 🕵️ Recon Scripts

| Script | Description |
|--------|-------------|
| `Get-OpenPorts.ps1` | Scans local/remote ports using `Test-NetConnection`. |
| `Get-SystemInfoReport.ps1` | Summarizes system and OS info. |
| `Find-AdminShares.ps1` | Finds admin shares on a list of hosts. |
| `Invoke-ADRecon.ps1` | Extracts user, title, group info from AD. |
| `Get-NetworkAdapters.ps1` | Lists adapter name, MAC, link speed. |
| `Dump-ARPTable.ps1` | Displays ARP cache entries. |
| `Resolve-DNS.ps1` | Resolves given domain to IP. |
| `Get-InstalledPrograms.ps1` | Lists installed applications from registry. |
| `Get-UserGroups.ps1` | Maps local users to their groups. |

---

## 🛡️ Audit Scripts

| Script | Description |
|--------|-------------|
| `Get-ScheduledPersistence.ps1` | Lists scheduled tasks excluding Microsoft defaults. |
| `Invoke-WhoamiAll.ps1` | Dumps full token info for current user. |
| `Audit-LocalAdmins.ps1` | Shows local administrators group members. |
| `List-Startups.ps1` | Lists auto-run programs via registry. |
| `Audit-FirewallRules.ps1` | Enumerates all configured firewall rules. |
| `Check-UnsignedDrivers.ps1` | Finds device drivers lacking digital signatures. |
| `Detect-SuspiciousProcesses.ps1` | Flags high-CPU or parentless processes. |

---

## 📜 License

This project is licensed under the [MIT License](https://choosealicense.com/licenses/mit/). Feel free to fork, modify, and contribute responsibly.

---

## 💬 Contributions

Pull requests are welcome! Please submit ethically sound, well-documented scripts only.

---

## 🔒 Reminder

This repository is for **educational and authorized security research only**. Abide by legal and ethical standards at all times.
