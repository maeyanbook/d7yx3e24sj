@echo off

rem 存在するフォルダにファイルをコピー(標準出力)
copy ".\a.txt" ".\bb\" >".\temp.log" 2>&1

rem 存在しないフォルダにファイルをコピー(エラーログ)
copy ".\a.txt" ".\cc\" >>".\temp.log" 2>&1