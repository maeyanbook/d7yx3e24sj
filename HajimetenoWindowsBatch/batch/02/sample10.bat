@echo off

rem 動的環境変数のDATEを出力
echo %DATE%

rem 動的環境変数を上書きする
set DATE=動的な環境変数を上書き
echo %DATE%