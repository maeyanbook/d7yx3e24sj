@echo off

call :LeepYear 2001
call :LeepYear 2004
call :LeepYear 2100
call :LeepYear 2400
exit /b

:LeepYear
set /a year=%~1
call .\cmd\IsLeapYear.bat %year%
if "%IsLeapYear%" == "T" (
 	echo.%year%年は、閏年です
) else (
 	echo.%year%年は、閏年ではありません
)
exit /b