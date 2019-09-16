@echo off

set t=%time%

rem Œ»İ‚Ì‚ğ•\¦
echo.%t%

rem :0‚ğ: ‚É’uŠ·
set t=%t::0=: %
set t=%t:.0=. %

set /a mm=%t:~3,2% + 1
set /a ss=%t:~6,2% + 1
set /a ff=%t:~9,2% + 1

rem ,•ª,•b
echo.%mm%
echo.%ss%
echo.%ff%