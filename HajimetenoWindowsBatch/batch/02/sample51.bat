@echo off

rem &同様|もダブルクォートで囲うかエスケープが必要
set /a "num1=1 | 1"
set /a "num2=1 | 0"
set /a "num3=0 | 1"
set /a "num4=0 | 0"

echo.1 ^| 1 = %num1%
echo.1 ^| 0 = %num2%
echo.0 ^| 1 = %num3%
echo.0 ^| 0 = %num4%