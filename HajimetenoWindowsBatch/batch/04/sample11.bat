@echo off

set path=C:\Program Files
call :MESSAGE "%path%"
exit /b

:MESSAGE
rem ~の有る無しで値の出力を行う
echo.%1
echo.%~1
exit /b