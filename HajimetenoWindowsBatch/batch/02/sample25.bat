@echo off

set str=WindowsServer2016

rem X番目以降の文字全て
set X1=13
call echo %%str:~%X1%%%

rem X番目以降、末尾からN文字削る
set X2=7
set N2=-4
call echo %%str:~%X2%,%N2%%%