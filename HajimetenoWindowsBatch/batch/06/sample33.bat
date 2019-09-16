@echo off

set FolderPath=c:\batch\06\data\
set FilePath="%FolderPath%test.txt"

if exist %FolderPath% (
	echo.フォルダある
) else (
	echo.フォルダない
)

if exist %FilePath% (
	echo.ファイルある
) else (
	echo.ファイルない
)