@echo off
:wait
echo [BEMZ] Waiting for Valorant...
tasklist /FI "IMAGENAME eq VALORANT.exe" 2>NUL | find /I /N "VALORANT.exe">NUL
if "%ERRORLEVEL%"=="1" (
    timeout /t 5 /nobreak > NUL
    goto wait
)
color 4
cls
echo [BEMZ] DO NOT CLOSE THIS CMD, OTHERWISE YOU WILL GET BANNED
:loop
tasklist /FI "IMAGENAME eq VALORANT.exe" 2>NUL | find /I /N "VALORANT.exe">NUL
if "%ERRORLEVEL%"=="0" (
    timeout /t 1 /nobreak > NUL
    goto loop
)
timeout /t 5 /nobreak > NUL
del "C:\Riot Games\VALORANT\live\ShooterGame\Binaries\Win64\CompPkgSup.dll"

