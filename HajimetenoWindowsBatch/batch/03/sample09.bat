@echo off

set str=
set /p str=入力してください:

if "%str%"=="Batch" (
    echo.HelloBatch
) else (
    echo.%str%
)