@echo off

call :MESSAGE HelloBatch
echo.%ErrorLevel%

call :MESSAGE
echo.%ErrorLevel%
exit /b

:MESSAGE
if "%1" == "" (
    echo.����������܂���
    exit /b 1
) else (
    echo.%1
    exit /b 0
)