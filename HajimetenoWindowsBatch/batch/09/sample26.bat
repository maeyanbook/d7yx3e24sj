@echo off

call :test
call :test 1
call :test 12
call :test 123
call :test 1234
call :test 12345
call :test 123456
exit /b

:test
set temp=000000%~1
echo.%temp:~-6%
exit /b