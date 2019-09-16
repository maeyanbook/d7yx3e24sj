@echo off

rem 半角スペースを含んだ引数を渡す
call :MESSAGE Hello Batch
exit /b

:MESSAGE
echo.%1
exit /b