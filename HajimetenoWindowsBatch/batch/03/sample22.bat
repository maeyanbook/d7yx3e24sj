@echo off

setlocal enabledelayedexpansion
set /a num=1

if not num == 0 (
    set /a num=num + 1

    rem �R�}���h���s����num��1
    echo.%num%

    rem �ϐ��Q�Ǝ���num��2
    echo.!num!
)

rem �R�}���h���s����num��2
echo.%num%