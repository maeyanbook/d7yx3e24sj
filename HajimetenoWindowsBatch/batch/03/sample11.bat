@echo off

set str=
set /p str=入力してください:

if @%str%==@ (
    echo.空です
) else (
    echo.%str%
)