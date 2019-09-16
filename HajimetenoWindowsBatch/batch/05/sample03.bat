@echo off

set yyyymmdd=2019/08/01
rem 10の桁が0の時は半角スペースに置き換える
set yyyymmdd=%yyyymmdd:/0=/ %
set /a mm=%yyyymmdd:~5,2% + 1
echo.%mm%

rem 2桁の値に戻す
set mm=0%mm%
set mm=%mm:~-2%
echo.%mm%