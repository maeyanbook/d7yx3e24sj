@echo off

setlocal enabledelayedexpansion

set /p num=”Žš‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢:
call ".\cmd\ConvertToNumber.bat" %num%
if %ErrorLevel% neq 0 (
	echo.”Žš‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢
)

set /a count=0
for /l %%a in (1, 1, %num%) do (
	call :ProgressBar %%a
	
	rem ‰½‚©‚Ìˆ—
	timeout /t 1 /nobreak >nul
)
set /p str=-^>OK< nul
exit /b

:ProgressBar  
set /a value1=%count% * %num%
set /a value2=%~1 * 10
if %value2% gtr %value1% (
	if !count! == 0 (
		set /p str=[-< nul
	) else if !count! lss 9 (
		set /p str=-< nul
	)
	set /a count=!count! + 1
	goto ProgressBar
)
exit /b