@echo off

call :MESSAGE HelloBatch
echo.%ret%

call :MESSAGE
echo.%ret%
exit /b

:MESSAGE
rem 返り値は値に格納する
if "%1" == "" (
    set ret=引数がありません
    exit /b 1
) else (
    set ret=%1
    exit /b 0
)