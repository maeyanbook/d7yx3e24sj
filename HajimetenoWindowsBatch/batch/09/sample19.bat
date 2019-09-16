@echo off

call :test 08
call :test 0010
call :test 00001234
exit /b

:test
set /a num=1%~1 - (11%~1 - 10%~1)
echo.%num%
exit /b