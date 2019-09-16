@echo off

call .\cmd\Padding 1 5 0
echo.%Padding%

call .\cmd\Padding 123 5 0
echo.%Padding%

call .\cmd\Padding 12345 5 0
echo.%Padding%

call .\cmd\Padding 1 5 " "
echo.%Padding%

call .\cmd\Padding ÅöÅö 5 Åô
echo.%Padding%