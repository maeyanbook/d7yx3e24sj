@echo off

setlocal enabledelayedexpansion
set /a num=1

if not num == 0 (
    set /a num=num + 1

    rem コマンド実行時はnumは1
    echo.%num%

    rem 変数参照時はnumは2
    echo.!num!
)

rem コマンド実行時はnumは2
echo.%num%