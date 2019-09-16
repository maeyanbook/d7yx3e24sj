@echo off

rem ˆø”‚Æ‚µ‚Ä a, b, c‚Ì‚R‚Â‚ð“n‚·
call :MESSAGE a b c
exit /b

:MESSAGE
rem ˆø”‚ðŽæ‚èo‚·(%1`%3)
echo.%1
echo.%2
echo.%3
exit /b