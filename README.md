# Notification_choco

After using [chocolatey](https://chocolatey.org) for the organization of software under windows, it quickly became apparent that no notification was provided to warn of outdated packages.

It is by starting from this principle and by failing with the other proposed methods, that I decided to build a powershell script in order to:
- obtain a notification when have outdated packages
- Ability to view outdated packages with the notification
- Ability to upgrade outdated packages with the notification
- **all without any action!**

> **In the end, you get a notification warning you of outdated packages and you can click to view all packages as well as click to upgrade them immediately.**

# 1 way to do
- **WINDOWS** : see all the details delow 

---
1. Position the 3 files at the root of your computer (*e.g. at the root of C*) :  
	- C:\notification_choco.ps1
	- C:\check_choco.ps1
	- C:\upgrade_choco.ps1
- Creation of the scheduled task: [tutorial](https://www.technipages.com/scheduled-task-windows)
- Add triggers: *e.g. every day at 12:00 p.m. and at each session opening*
- Add an action:  
	- Start a program (*powershell*)
	- Add arguments : `-WindowStyle Hidden -NonInteractive -ExecutionPolicy Bypass -File "C:\notification_choco.ps1"`

**And There you go !**

---
