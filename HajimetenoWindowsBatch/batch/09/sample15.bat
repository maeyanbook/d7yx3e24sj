@echo off

call .\cmd\Length.bat
echo.%Length%

call .\cmd\Length.bat 1
echo.%Length%

call .\cmd\Length.bat 123
echo.%Length%

call .\cmd\Length.bat 123456789
echo.%Length%