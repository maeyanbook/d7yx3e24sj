@echo off

rem 引数として a, b, cの３つを渡す
call :MESSAGE a b c
exit /b

:MESSAGE
rem 引数を取り出す(%1〜%3)
echo.%1
echo.%2
echo.%3
exit /b