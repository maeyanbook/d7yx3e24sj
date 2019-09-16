@echo off

rem 1年後
call .\cmd\AddYear 2019/06/01 1
echo.%AddYear%

rem 1年前
call .\cmd\AddYear 2019/06/01 -1
echo.%AddYear%

rem 1年後
call .\cmd\AddYear 2020/02/29 1
echo.%AddYear%

rem 1年前
call .\cmd\AddYear 2020/02/29 -1
echo.%AddYear%

rem 4年後
call .\cmd\AddYear 2020/02/29 4
echo.%AddYear%

rem 4年前
call .\cmd\AddYear 2020/02/29 -4
echo.%AddYear%
