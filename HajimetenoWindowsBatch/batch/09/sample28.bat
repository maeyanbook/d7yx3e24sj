@echo off

setlocal enabledelayedexpansion
set /a count=0
for /f %%a in ('tasklist') do (
	if "%%a"=="notepad.exe" (
		set /a count=!count! + 1
	)
)

if %count% == 0 (
	start notepad.exe
) else (
	echo.Šù‚É‹N“®‚µ‚Ä‚¢‚Ü‚·
)