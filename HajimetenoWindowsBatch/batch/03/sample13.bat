@echo off

set str=
set /p str=入力してください:

if not defined str (
    echo.空です
) else (
    echo.%str%
)