@echo off

rem 1�N��
call .\cmd\AddYear 2019/06/01 1
echo.%AddYear%

rem 1�N�O
call .\cmd\AddYear 2019/06/01 -1
echo.%AddYear%

rem 1�N��
call .\cmd\AddYear 2020/02/29 1
echo.%AddYear%

rem 1�N�O
call .\cmd\AddYear 2020/02/29 -1
echo.%AddYear%

rem 4�N��
call .\cmd\AddYear 2020/02/29 4
echo.%AddYear%

rem 4�N�O
call .\cmd\AddYear 2020/02/29 -4
echo.%AddYear%
