@echo off

setlocal
rem 初期化
set Trim=
set /a ErrorNo=0
pushd "%~dp0"

rem 引数の数を取得
call .\ArgSize.bat %*

rem 引数個数チェック
if %ArgSize% neq 1 (
	set /a ErrorNo=1
	goto END_LOCAL
)

rem 引数を取得
set Trim=%~1

:loop1
if "%Trim:~0,1%"==" " (
	set Trim=%Trim:~1%
	goto :loop1
)

:loop2
if "%Trim:~-1,1%"==" " (
	set Trim=%Trim:~0,-1%
	goto :loop2
)

:END_LOCAL
popd
endlocal && set Trim=%Trim%&& set /a ErrorNo=%ErrorNo%

exit /b %ErrorNo%