@echo off
echo Stopping YouTube Search Telegram Bot...
echo.
for /f "tokens=2" %%a in ('tasklist /FI "IMAGENAME eq node.exe" /FO LIST ^| findstr /I "PID"') do (
    wmic process where "ProcessId=%%a" get CommandLine 2>nul | findstr /I "bot.js" >nul
    if !errorlevel! equ 0 (
        echo Stopping process %%a...
        taskkill /F /PID %%a >nul 2>&1
    )
)
echo.
echo All bot instances stopped.
timeout /t 2 /nobreak >nul




