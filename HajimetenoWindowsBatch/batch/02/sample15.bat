@echo off

rem 末尾に^を付けて文字列を複数行で表示
set str=abc^
def^
ghi

rem 表示が複数行なだけで改行をしているわけではない
echo %str%