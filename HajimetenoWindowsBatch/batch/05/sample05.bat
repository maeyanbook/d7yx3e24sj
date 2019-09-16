@echo off

set t=%time%

rem 現在の時刻を表示
echo.%t%

rem :0を: に置換
set t=%t::0=: %
set t=%t:.0=. %

set /a mm=%t:~3,2% + 1
set /a ss=%t:~6,2% + 1
set /a ff=%t:~9,2% + 1

rem 時,分,秒
echo.%mm%
echo.%ss%
echo.%ff%