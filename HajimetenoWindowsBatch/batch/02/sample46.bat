@echo off

rem 0x00000000 の1の補数は 繰り上げが起きない最大数の0xFFFFFFFF つまり-1
set /a num=~0
echo.%num%