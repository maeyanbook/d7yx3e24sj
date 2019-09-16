@echo off

set str=00012345

:loop
if "%str:~0,1%"=="0" (
	set str=%str:~1%
	goto :loop
)

echo.%str%