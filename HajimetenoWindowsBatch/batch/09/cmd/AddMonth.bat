@echo off

setlocal
rem 初期化
set AddMonth=
set /a ErrorNo=0
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
set /a y=%temp:~0,4%
set /a m=1%temp:~5,2% - 100 + value
set /a d=1%temp:~8,2% - 100

:Loop
rem 1より小さい時、前の年へ
if %m% lss 1 (
	set /a y-=1
	set /a m+=12
	goto Loop
)

if %m% gtr 12 (
	set /a y+=1
	set /a m-=12
	goto Loop
)

call LastDay %y% %m%
if %d% gtr %LastDay% (
	set d=%LastDay%
)

call Padding %m% 2 0
set m=%Padding%
call Padding %d% 2 0
set d=%Padding%

set AddMonth=%y%/%m%/%d%
:END_LOCAL
popd

endlocal && set AddMonth=%AddMonth%&& set /a ErrorNo=%ErrorNo%

exit /b %ErrorNo%