@echo off

set /a num=2
echo.%num%

set /a "num<<=8"
echo.%num%

set /a "num<<=8" 
echo.%num%

set /a "num<<=8" 
echo.%num%

set /a "num>>=8" 
echo.%num%

set /a "num>>=8" 
echo %num%

set /a "num>>=8" 
echo.%num%
