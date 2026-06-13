@echo off
REM ====================================================================
REM  LabCalc one-click deploy
REM  Double-click this file to push your latest changes to GitHub Pages.
REM  (The product/ folder is gitignored, so your paid PDF never uploads.)
REM ====================================================================
cd /d "%~dp0"

echo.
echo  Files that changed since your last deploy:
echo  ------------------------------------------
git status --short
echo  ------------------------------------------
echo.

set "msg="
set /p "msg=Describe what changed (or just press Enter): "
if "%msg%"=="" set "msg=Update site"

git add -A
git commit -m "%msg%"
if errorlevel 1 (
  echo.
  echo  Nothing new to deploy. You're already up to date.
  echo.
  pause
  exit /b 0
)
git push

echo.
echo  Done. Your site updates in 1-2 minutes at:
echo  https://bennettek99-spec.github.io/labcalc/
echo.
pause
