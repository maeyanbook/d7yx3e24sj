@echo off

set /a num=2
echo.%num%

rem 1つずつ左へシフトする
set /a "num=num << 1"
echo.%num%

set /a "num=num << 1" 
echo.%num%

set /a "num=num << 1" 
echo.%num%

set /a "num=num << 1" 
echo.%num%

set /a "num=num << 1" 
echo.%num%