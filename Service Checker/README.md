# PowerShell Service Status Checker

## Overview
This repository provides PowerShell scripts for auditing Windows service statuses. Useful for system administrators, IT support, and cybersecurity professionals who need visibility into running or stopped services.

## Scripts

### ServiceStatusCheck.ps1
- Prints all service statuses to the terminal.
- Uses color-coded output: green for running, red for stopped.

### ServiceStatusCheckCSV.ps1
- Displays service statuses in the terminal.
- Additionally exports results to a CSV file on the user's desktop.

## How to Use

1. Open PowerShell (Administrator recommended).
2. Run either script using:
   ```powershell
   .\ServiceStatusCheck.ps1
   ```
   or
   ```powershell
   .\ServiceStatusCheckCSV.ps1
   ```
## Script Requirements  (only do this step if you know what you are doing)
If your system blocks script execution, temporarily allow it by running:
```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```
## Sample CSV Output
```
Name,DisplayName,Status
Spooler,Print Spooler,Running
wuauserv,Windows Update,Stopped
BITS,Background Intelligent Transfer Service,Running
```
## Contributions
Feature ideas are welcome—suggest enhancements such as HTML output, scheduled runs, or alerting. Pull requests and issues are appreciated.
## Contact
Questions, feedback, or collaboration ideas? Reach out via [GitHub](https://github.com/Toast-stack) or [LinkedIn](https://www.linkedin.com/in/zachary-nicholas1341/).
