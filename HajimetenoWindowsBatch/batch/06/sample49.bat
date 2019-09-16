@echo off

rem ファイルを別名でコピー
xcopy ".\data\sample49\a.txt" ".\data\sample49\b.txt" /y

rem フォルダ内のファイルを別フォルダへコピー
xcopy ".\data\sample49\aa\*.txt" ".\data\sample49\bb\" /y