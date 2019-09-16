@echo off

setlocal
rem 初期化
set IsLeapYear=F
pushd "%~dp0"

rem 引数の数を取得
call ArgSize %*

rem 引数個数チェック
if %ArgSize% neq 1 (
	set /a ErrorNo=1
	goto END_LOCAL
)

rem　引数を数字に変換
call ConvertToNumber %~1
if %errorlevel% == 0 (
	set /a year=%ConvertToNumber%
) else (
	set /a ErrorNo=1
	goto END_LOCAL
)

rem 閏年判定
set /a mod4=%year% %% 4
set /a mod100=%year% %% 100
set /a mod400=%year% %% 400

if %mod400% == 0 (
	set IsLeapYear=T
) else if %mod100% == 0 (
	set IsLeapYear=F
) else if %mod4% == 0 (
	set IsLeapYear=T
) else (
	set IsLeapYear=F
)

:END_LOCAL
popd

endlocal && set IsLeapYear=%IsLeapYear%&& set /a ErrorNo=%ErrorNo%

exit /b %ErrorNo%