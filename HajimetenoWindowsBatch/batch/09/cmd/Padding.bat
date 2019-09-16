@echo off

setlocal enabledelayedexpansion
rem 初期化
set Padding=
pushd "%~dp0"

rem 引数の数を取得
call ArgSize %*

rem 引数個数チェック
if %ArgSize% neq 3 (
	set /a ErrorNo=1
	goto END_LOCAL
)

rem 3番目の引数(パディングする文字)が１文字かチェック
call Length "%~3"
if %Length% neq 1 (
    set /a ErrorNo = 1
    goto END_LOCAL
)
set PaddingChar=%~3

rem　2番目の引数(桁)を数字に変換
call ConvertToNumber %~2
if %errorlevel% == 0 (
	set /a keta=%ConvertToNumber%
) else (
	set /a ErrorNo=1
	goto END_LOCAL
)

rem 2番目の引数(桁)は1より小さいとエラー
if %keta% lss 1 (
    set /a ErrorNo=1
    goto END_LOCAL
)

rem 1番目の引数(パディングしたい文字列)に桁数分文字を追加
set Padding=%~1
for /l %%n in (1 1 %keta%) do (
    set Padding=%PaddingChar%!Padding!
)

call set Padding=%%Padding:~-%keta%%%

:END_LOCAL
popd
endlocal && set Padding=%Padding%&& set /a ErrorNo=%ErrorNo%

exit /b %ErrorNo%