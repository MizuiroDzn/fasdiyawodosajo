@echo off
setlocal enabledelayedexpansion
set "ESC="
for /F "delims=#" %%a in ('"prompt #$E# & for %%b in (1) do rem"') do set "ESC=%%a"
set "GREEN=%ESC%[32m"
set "RESET=%ESC%[0m"
title BEMZ Vanguard Bypass
echo %GREEN%[BEMZ] Bypass Enabled!%RESET%
echo [BEMZ] Press Any Key to Disable.
pause >nul
exit