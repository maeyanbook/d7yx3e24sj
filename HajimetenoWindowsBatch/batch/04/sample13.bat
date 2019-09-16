@echo off

call :MESSAGE HelloBatch
echo.%ret%

call :MESSAGE
echo.%ret%
exit /b

:MESSAGE
rem •Ô‚è’l‚Í’l‚ÉŠi”[‚·‚é
if "%1" == "" (
    set ret=ˆø”‚ª‚ ‚è‚Ü‚¹‚ñ
    exit /b 1
) else (
    set ret=%1
    exit /b 0
)