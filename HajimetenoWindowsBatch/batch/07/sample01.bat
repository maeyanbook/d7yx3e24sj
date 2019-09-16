@echo off

rem エラーなし
dir >result1.txt 2>error1.txt

rem エラーあり(存在しないフォルダ)
dir c:\aaaa >result2.txt 2>error2.txt