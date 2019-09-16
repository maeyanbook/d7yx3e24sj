@echo off

call :SUM 1 2 3 4 5
exit /b

:SUM
set /a num=0
for %%i in (%*) do (
    set /a num+=%%i
)

echo.%num%
exit /b