@echo off

rem フォルダがない時作る
if not exist .\data\sample54\aa\empty ( mkdir .\data\sample54\aa\empty )

rem aaフォルダをbbの中に保存したい(NG))
echo.d| xcopy ".\data\sample54\aa" ".\data\sample54\bb\aa" /y