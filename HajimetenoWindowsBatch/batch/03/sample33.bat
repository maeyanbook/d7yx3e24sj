@echo off

set /a num=0

:while
set /a num+=1
if %num% == 3 ( goto while_end )

echo.%num%

goto while
:while_end

echo.èIóπ