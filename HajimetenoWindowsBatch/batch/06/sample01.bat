@echo off

rem カレントディレクトリに新規出力(既に存在する場合は内容は消去)
echo.%time% > sample01a.txt
echo.%time% > sample01a.txt

rem カレントディレクトリに追加作成(存在しない場合でも作成)
echo.%time% >> sample01b.txt
echo.%time% >> sample01b.txt