@echo off

set str=
set /p str=���͂��Ă�������:

if not defined str (
    echo.��ł�
) else (
    echo.%str%
)