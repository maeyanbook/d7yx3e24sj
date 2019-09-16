@echo off

rem 複数のファイルの内容をbinaryとしてコピー
copy /b ".\data\copy\a.txt"+".\data\copy\b.txt"+".\data\copy\c.txt" ".\data\copy\d.txt"