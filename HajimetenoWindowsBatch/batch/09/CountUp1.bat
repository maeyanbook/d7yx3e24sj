@echo off

setlocal enabledelayedexpansion
set CountFile=%~dp0Count.txt

rem �J�E���g�A�b�v
if Not Exist "%CountFile%" (
	echo.1 >"%CountFile%"
) else (
	for /f %%a in (%CountFile%) do (
        set /a num=%%a + 1
	)
	echo.!num! >%CountFile%
)

exit