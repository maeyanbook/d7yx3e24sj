@echo off

set path=C:\Program Files
call :MESSAGE %path%
exit /b

:MESSAGE
echo.%1
exit /b