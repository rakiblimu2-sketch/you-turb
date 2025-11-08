@echo off
echo ========================================
echo Powerful Hybrid YouTube Search Bot
echo Node.js + Python (yt-dlp)
echo ========================================
echo.
echo Checking for existing bot instances...
taskkill /F /IM node.exe 2>nul
taskkill /F /IM python.exe 2>nul
if %errorlevel% equ 0 (
    echo Stopped existing processes.
    timeout /t 2 /nobreak >nul
) else (
    echo No existing instances found.
)
echo.
echo Starting hybrid bot...
echo.
node bot_hybrid.js
if %errorlevel% neq 0 (
    echo.
    echo Bot stopped with an error.
    pause
)
