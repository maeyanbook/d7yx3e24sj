@echo off

rem 0以外の数値は、!で0になる
set /a ret=!-1
echo.!-1 = %ret%

set /a ret=!1
echo.!1 = %ret%

rem 0は、!で1になる
set /a ret=!0
echo.!0 = %ret%