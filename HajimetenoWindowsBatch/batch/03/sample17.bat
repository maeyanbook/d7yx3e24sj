@echo off

rem 2は1より大きいか？→〇
if 2 gtr 1 echo.ok1

rem 02を数値として判断し、1より大きいか？→〇
if 02 gtr 1 echo.ok2

rem 文字列02は文字列1より大きいか？→×
if "02" gtr "1" echo.ok3