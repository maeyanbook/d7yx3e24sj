@echo off

rem 変換元の文字列
set program=VBScript

rem 変換前後の文字列
set before=VB
set after=Type

rem 変換前後の文字列を変数で指定(間違いです)
echo %program:%before%=%after%%