@echo off

call :HELLO_BATCH
echo.終了
rem exitしていないので、:HELLO_BATCH以降を２回実行する

:HELLO_BATCH
echo.Hello Batch
exit /b