@echo off

rem ファイルを別名でコピー(同名ファイルは確認無く上書き)
copy ".\data\sample46\a.txt" ".\data\sample46\b.txt"

rem フォルダ内のファイルを別フォルダへコピー(同名ファイルは確認無く上書き)
copy ".\data\sample46\aa\*.txt" ".\data\sample46\bb\"