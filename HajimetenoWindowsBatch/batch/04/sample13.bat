@echo off

call :MESSAGE HelloBatch
echo.%ret%

call :MESSAGE
echo.%ret%
exit /b

:MESSAGE
rem �Ԃ�l�͒l�Ɋi�[����
if "%1" == "" (
    set ret=����������܂���
    exit /b 1
) else (
    set ret=%1
    exit /b 0
)