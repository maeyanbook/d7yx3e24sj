@echo off

setlocal enabledelayedexpansion
rem 初期化
set AddYear=
pushd "%~dp0"

rem 引数の数を取得
call ArgSize %*

rem 引数個数チェック
if "%ArgSize%" neq "2" (
	set /a ErrorNo=1
	goto END_LOCAL
)

rem 第二引数が数字かチェックする
call ConvertToNumber %~2
if %errorlevel% == 0 (
	set /a value=%ConvertToNumber%
) else (
	set /a ErrorNo=1
	goto END_LOCAL
)

set temp=%~1
set /a y=%temp:~0,4% + value
set m=%temp:~5,2%
set d=%temp:~8,2%

rem 変更前が閏年かつ２月の月末の場合、変更後の年が閏年かチェックする
if "%m%" == "02" (
    if "%d%" == "29" (
        call IsLeapYear %y%
        if "!IsLeapYear!" == "F" (
            set d=28
        ) 
    )
)

set AddYear=%y%/%m%/%d%
:END_LOCAL
popd

endlocal && set AddYear=%AddYear%&& set /a ErrorNo=%ErrorNo%

exit /b %ErrorNo%