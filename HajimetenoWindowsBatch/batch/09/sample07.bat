@echo off

set str=グローバル
echo.%str%

setlocal
set str=ローカル
endlocal && set str=%str%

echo.%str%