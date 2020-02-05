@echo off
setlocal enabledelayedexpansion
for %%A in ("%CD%\*.*") do (
set "ext=%%~xA"
if not "%%~nxA"=="%~nx0" (ren "%%A" "%%~nA !ext:~1!%%~xA")
)