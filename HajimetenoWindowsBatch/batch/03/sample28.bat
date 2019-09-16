@echo off

set /a mod=0
for /l %%i in (1, 1, 3) do (
    set /a mod=%%i %% 2
    echo.%mod%
)