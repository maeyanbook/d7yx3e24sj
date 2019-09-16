@echo off

set str=WindowsServer2016

rem X番目以降の文字全て
echo %str:~13%

rem 後ろからN文字を切り出す
echo %str:~-4%

rem 先頭からN文字を取り出す
echo %str:~0,7%

rem X番目からN文字を切り出す
echo %str:~7,6%

rem X番目以降、末尾からN文字削る
echo %str:~7,-4%

rem 末尾からX番目の文字のうち、末尾N文字を削る
echo %str:~-10,-4%