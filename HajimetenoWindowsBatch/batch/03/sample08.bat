@echo off

set str=
set /p str=���͂��Ă�������:

if %str%==Batch (
    echo.HelloBatch
) else (
    echo.%str%
)