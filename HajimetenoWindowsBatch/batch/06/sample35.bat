@echo off

rem 存在しない場合
mkdir ".\temp\a\b\c\d"
echo.%errorlevel%

rem 存在する場合
mkdir ".\temp\a\b\c\d"
echo.%errorlevel%