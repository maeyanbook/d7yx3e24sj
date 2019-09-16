@echo off

set str=
set /p str=“ü—Í‚µ‚Ä‚­‚¾‚³‚¢:

if %str%==Batch (
    echo.HelloBatch
) else (
    echo.%str%
)