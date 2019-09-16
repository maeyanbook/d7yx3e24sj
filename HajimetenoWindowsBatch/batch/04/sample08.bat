@echo off

rem 半角スペースの引数は、ダブルクォートで囲む
call :MESSAGE "Hello Batch"
exit /b

:MESSAGE
echo.%1
exit /b