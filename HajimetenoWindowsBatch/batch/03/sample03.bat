@echo off

set flag=3

if %flag%==0 (
    echo.0です
) else if %flag%==1 (
    echo.1です
) else (
    echo.0,1以外です
)