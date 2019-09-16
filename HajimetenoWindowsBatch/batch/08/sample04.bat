@echo off

set /a sum=0
:LoopStart
	if "%~1" == "" ( goto LoopEnd )
	set /a sum +=%~1
	shift
goto LoopStart
:LoopEnd

echo.%sum%