@echo off

echo.%date%

set yyyy=%date:~0,4%
set mm=%date:~5,2%
set dd=%date:~8,2%

rem 年,月,日
echo.%yyyy%
echo.%mm%
echo.%dd%

rem 年月日をファイル名等に利用
echo.%date:/=%