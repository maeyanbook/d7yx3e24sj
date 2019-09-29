@echo off

rem フォルダがない時作る
if not exist .\data\sample55\aa\empty ( mkdir .\data\sample55\aa\empty )

rem aaフォルダをbbの中に保存したい
echo.d| xcopy ".\data\sample55\aa" ".\data\sample55\bb\aa" /y /e