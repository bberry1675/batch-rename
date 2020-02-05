@echo off
setlocal enabledelayedexpansion
echo "Would you like to rename these files to include the extension?"
for %%A in ("%CD%\*.*") do (if not "%%~nxA"=="%~nx0" (echo %%~nxA))
set /P "AREYOUSURE=Are you sure (y/n)?"
if /I "!AREYOUSURE!"=="y" (for %%A in ("%CD%\*.*") do (
set "ext=%%~xA"
if not "%%~nxA"=="%~nx0" (ren "%%A" "%%~nA !ext:~1!%%~xA")
))