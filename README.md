
# 🛡️ Custom PowerShell Scripts for Cybersecurity

A curated collection of essential PowerShell scripts for **Red Team**, **Blue Team**, **Reconnaissance**, and **Audit** operations. This repository is designed to assist cybersecurity professionals, students, and researchers with powerful one-liners and tools for offensive and defensive purposes — all in one place.

---

## 📁 Directory Structure

```
custom-scripts/
├── RedTeam/          # Offensive enumeration, token abuse, persistence
├── BlueTeam/         # Logging, monitoring, threat detection
├── Recon/            # System, network, and AD recon
├── Audit/            # Post-exploitation or audit phase enumeration
└── README.md         # You're here!
```

---

## 🔴 RedTeam Scripts

| Script                      | Description                                     |
|-----------------------------|-------------------------------------------------|
| `Invoke-LSASSDump.ps1`      | Dumps lsass memory using comsvcs.dll            |
| `Find-AVProcesses.ps1`      | Detects running AV or EDR processes             |
| `Bypass-UAC.ps1`            | Bypasses UAC via registry hijack                |
| `Invoke-TokenManipulation.ps1` | Impersonates or duplicates user tokens     |
| `Dump-ChromePasswords.ps1`  | Extracts Chrome stored credentials (lab use)    |
| `Invoke-PhantomUser.ps1`    | Creates a hidden/phantom user                   |
| `Enumerate-PrivEscVectors.ps1` | Finds services vulnerable to privilege escalation |

---

## 🔵 BlueTeam Scripts

| Script                      | Description                                     |
|-----------------------------|-------------------------------------------------|
| `Monitor-FileChanges.ps1`   | Real-time file system change watcher            |
| `Get-UserLoginHistory.ps1`  | Parses event logs for user logins               |
| `Check-PowerShellLogging.ps1` | Verifies logging status for scripts/modules  |
| `Enable-SecurityAuditing.ps1` | Enables key Windows audit policies           |
| `Start-DefenderScan.ps1`    | Triggers Windows Defender quick/full scan       |
| `Detect-MimikatzArtifacts.ps1` | Detects common signs of memory tampering   |
| `Monitor-RegistryChanges.ps1` | Monitors sensitive registry keys             |
| `Extract-USBHistory.ps1`    | Lists all USB devices historically connected    |

---

## 📡 Recon Scripts

| Script                      | Description                                     |
|-----------------------------|-------------------------------------------------|
| `Get-OpenPorts.ps1`         | Scans ports on remote hosts                     |
| `Get-SystemInfoReport.ps1`  | Collects system-level info (OS, BIOS, arch)     |
| `Find-AdminShares.ps1`      | Discovers admin shares across the LAN           |
| `Invoke-ADRecon.ps1`        | Performs Active Directory structure recon       |
| `Get-NetworkAdapters.ps1`   | Shows all NICs, IPs, MAC addresses              |
| `Dump-ARPTable.ps1`         | Pulls ARP table from system                     |
| `Resolve-DNS.ps1`           | Performs DNS resolution for targets             |
| `Get-InstalledPrograms.ps1` | Lists registry-based installed apps             |
| `Get-UserGroups.ps1`        | Maps local users to their group memberships     |

---

## 🕵️ Audit Scripts

| Script                      | Description                                     |
|-----------------------------|-------------------------------------------------|
| `Get-ScheduledPersistence.ps1` | Finds tasks with persistence behavior     |
| `Invoke-WhoamiAll.ps1`      | Detailed privilege and identity dump            |
| `Audit-LocalAdmins.ps1`     | Lists all local admin accounts                  |
| `List-Startups.ps1`         | Checks registry and folders for autoruns       |
| `Audit-FirewallRules.ps1`   | Dumps all configured Windows firewall rules     |
| `Check-UnsignedDrivers.ps1` | Detects unsigned drivers (rootkit indicator)    |
| `Detect-SuspiciousProcesses.ps1` | Flags odd child-parent process trees     |

---

## ⚙️ Usage

To run any script:

```powershell
# Run script in PowerShell (Administrator recommended)
.\RedTeam\Invoke-LSASSDump.ps1
```

Or import functions:

```powershell
Import-Module .\BlueTeam\Check-PowerShellLogging.ps1
Check-PowerShellLogging
```

> ⚠️ **Some scripts require Administrator privileges. Use responsibly.**

---

## 🔐 Legal & Ethical Use Disclaimer

> This repository is intended for **educational**, **research**, and **authorized penetration testing** purposes **only**.  
> Misuse of any script for unauthorized access, privilege escalation, or privacy violations is strictly forbidden.  
> You are solely responsible for any consequences arising from improper use.

---

## 🧠 MITRE ATT&CK Mapping (Examples)

| Script                      | ATT&CK Technique ID | Name                           |
|-----------------------------|----------------------|--------------------------------|
| `Invoke-LSASSDump.ps1`      | T1003.001             | Credential Dumping: LSASS      |
| `Get-UserLoginHistory.ps1`  | T1078                 | Valid Accounts                 |
| `Bypass-UAC.ps1`            | T1548.002             | Abuse Elevation Control        |
| `Invoke-PhantomUser.ps1`    | T1136                 | Create Account                 |
| `Monitor-RegistryChanges.ps1` | T1112              | Modify Registry                |

> For full mapping: [https://attack.mitre.org](https://attack.mitre.org)

---

## 📦 Coming Soon

- Script signing
- Auto-installer (`install.ps1`)
- GitHub Actions Linter
- Shellcode / obfuscation modules (advanced)

---

## 📄 License

This project is licensed under the MIT License.  
See the `LICENSE` file for details.

---

## 👨‍💻 Author

**PardhuVarma**  
Cybersecurity | Red Team Operations.  
> *“Scripts don’t hack systems. People do.”*

---

## 🌟 Give this repo a ⭐ if it helps you!
