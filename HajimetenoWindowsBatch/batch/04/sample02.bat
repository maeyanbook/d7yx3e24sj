@echo off

call :HELLO_BATCH
echo.終了
pause
exit /b

:HELLO_BATCH
echo.Hello Batch
pause
rem /bスイッチ無しだとコマンドプロンプト自身が終了する
exit