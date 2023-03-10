@echo off

PowerShell.exe -Command "Set-ExecutionPolicy RemoteSigned -scope CurrentUser"
PowerShell.exe -Command "& { Invoke-WebRequest -Uri 'https://aka.ms/install-powershell.ps1' -OutFile 'install-powershell.ps1' }"
PowerShell.exe -Command ".\install-powershell.ps1"

PowerShell.exe -Command "Set-ExecutionPolicy AllSigned -scope CurrentUser"
PowerShell.exe -COmmand "& { $(irm https://aka.ms/install-winget.ps1) }"

net session >nul 2>&1
if %errorLevel% == 0 (
	echo Running as administrator...
) else (
	echo Please run as administrator...
	pause >nul
	exit
)


pause >nul