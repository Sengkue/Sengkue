@echo off
echo Starting Auto-Push to GitHub...
echo Press Ctrl+C to stop.
echo.

:loop
echo Checking for changes...
git add .
git commit -m "Auto update profile"
git push origin main
echo Waiting for 60 seconds...
timeout /t 60 /nobreak >nul
goto loop
