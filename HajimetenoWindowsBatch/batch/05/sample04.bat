@echo off

set t=%time%
echo.%t%

set hh=%t:~0,2%
set mm=%t:~3,2%
set ss=%t:~6,2%
set ff=%t:~9,2%

rem Žž,•ª,•b
echo.%hh%
echo.%mm%
echo.%ss%
echo.%ff%