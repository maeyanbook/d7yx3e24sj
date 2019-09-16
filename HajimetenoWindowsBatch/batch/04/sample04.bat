@echo off

call :Label1
exit /b

:Label1
echo.Label1
call :Label2
exit /b

:Label2
echo.Label2
call :Label3
exit /b

:Label3
echo.Label3
exit /b