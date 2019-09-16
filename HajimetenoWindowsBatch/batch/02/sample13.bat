@echo off

rem 二つの変数を用意
set STR1=Command
set STR2=Prompt

rem 結合した結果を出力
echo %STR1%%STR2%

rem 半角スペースを挟んでも一続きの文字列とみなされる
set STR=%STR1% %STR2%
echo %STR%

echo 変数"STR"の値は"%STR%"
