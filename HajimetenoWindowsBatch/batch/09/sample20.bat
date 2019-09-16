@echo off

call .\cmd\ConvertToNumber.bat -1
echo.%ConvertToNumber%

call .\cmd\ConvertToNumber.bat 0
echo.%ConvertToNumber%

call .\cmd\ConvertToNumber.bat 10
echo.%ConvertToNumber%

call .\cmd\ConvertToNumber.bat 100
echo.%ConvertToNumber%

rem 空文字
call .\cmd\ConvertToNumber.bat
echo.[Error]%errorlevel%

rem 数値じゃない文字を渡す
call .\cmd\ConvertToNumber.bat a
echo.[Error]%errorlevel%

rem 32 ビットでより大きい文字を渡す
call .\cmd\ConvertToNumber.bat 10000000000
echo.[Error]%errorlevel%