@echo off

REM [ CHAMAR SCRIPT ADMIN ]
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%~dp0OptimizeGameMode.ps1""' -Verb RunAs"