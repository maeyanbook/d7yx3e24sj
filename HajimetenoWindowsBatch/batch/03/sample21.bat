@echo off

set /a num=1

if not num == 0 (
    set /a num=num + 1
    echo.%num%
)

echo.%num%