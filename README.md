# Notification_choco

After using [chocolatey](https://chocolatey.org) for the organization of software under windows, it quickly became apparent that no notification was provided to warn of outdated packages.

It is by starting from this principle and by failing with the other proposed methods, that I decided to build a powershell script in order to:
- obtain a notification when have outdated packages
- Ability to view outdated packages with the notification
- Ability to upgrade outdated packages with the notification
- **all without any action!**

> **In the end, you get a notification warning you of outdated packages and you can click to view all packages as well as click to upgrade them immediately.**

## Requirements
- Install BurntToast (Powershell module):
```
Install-Module BurntToast
```
*This may require the installation of NuGet and a Powershell version ≥ 5.0*

# 2 ways to do
- **WINDOWS** : see all the details delow 

---
## First solution
1. Position the 3 files at the root of your computer (*e.g. at the root of C:*) :  
	- C:\notification_choco.ps1
	- C:\check_choco.ps1
	- C:\upgrade_choco.ps1
2. Creation of the scheduled task: [tutorial](https://www.technipages.com/scheduled-task-windows)
3. Check "Run with highest privileges"
4. Add triggers: e.g. *every day at 12:00 p.m.* and *at each session opening*
5. Add an action:  
	- Start a program : *powershell* or the full address of the program (*C: / ... powershell.exe*)
	- Add arguments : `-WindowStyle Hidden -NonInteractive -ExecutionPolicy Bypass -File "C:\notification_choco.ps1"`

## Second solution
You can also import the "**Notification_choco.xml**" file directly into the task scheduler (only if the **3 files are in the root of C:** and **powershell are in the path of the system**).

**And There you go !**

---
