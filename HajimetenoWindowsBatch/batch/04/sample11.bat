@echo off

set path=C:\Program Files
call :MESSAGE "%path%"
exit /b

:MESSAGE
rem ~�̗L�閳���Œl�̏o�͂��s��
echo.%1
echo.%~1
exit /b