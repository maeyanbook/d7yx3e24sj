@echo off

setlocal
rem 初期化
set LastDay=
set /a ErrorNo=0
pushd "%~dp0"

rem 引数の数を取得
call .\ArgSize.bat %*

rem 引数個数チェック
if %ArgSize% neq 2 (
	set /a ErrorNo=1
	goto END_LOCAL
)

rem　引数を数字に変換
rem 年
call ConvertToNumber %~1
if %errorlevel% == 0 (
	set /a year=%ConvertToNumber%
) else (
	set /a ErrorNo=1
	goto END_LOCAL
)

rem 月
call ConvertToNumber %~2
if %errorlevel% == 0 (
	set /a month=%ConvertToNumber%
) else (
	set /a ErrorNo=1
	goto END_LOCAL
)

rem 月の値が1～12かチェック
if %month% lss 1 (
	set /a ErrorNo=1
	goto END_LOCAL
) else if %month% gtr 12 (
	set /a ErrorNo=1
	goto END_LOCAL
)

rem 最終日 2月以外
if %month% neq 2 (
    if %month% == 1 ( 
        set /a LastDay=31 
    ) else if %month% == 3 (
        set /a LastDay=31
    ) else if %month% == 4 (
        set /a LastDay=30
    ) else if %month% == 5 (
        set /a LastDay=31
    ) else if %month% == 6  (
        set /a LastDay=30 
    ) else if %month% == 7  (
        set /a LastDay=31
    ) else if %month% == 8  (
        set /a LastDay=31
    ) else if %month% == 9  (
        set /a LastDay=30
    ) else if %month% == 10 (
        set /a LastDay=31
    ) else if %month% == 11 (
        set /a LastDay=30
    ) else if %month% == 12 (
        set /a LastDay=31
    )
	goto END_LOCAL
)

rem 最終日 2月
rem 閏年か？
call IsLeapYear %year%
if %errorlevel% neq 0 (
	set /a ErrorNo=1
	goto END_LOCAL
)

if "%IsLeepYear%" == "T" (
    set /a LastDay=29
) else (
    set /a LastDay=28
)

:END_LOCAL
popd
endlocal && set LastDay=%LastDay%&& set /a ErrorNo=%ErrorNo%

exit /b %ErrorNo%
