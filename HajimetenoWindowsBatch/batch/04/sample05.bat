@echo off

rem �����Ƃ��� a, b, c�̂R��n��
call :MESSAGE a b c
exit /b

:MESSAGE
rem ���������o��(%1�`%3)
echo.%1
echo.%2
echo.%3
exit /b