@echo off

setlocal
rem 初期化
set /a Length=0
set /a ErrorNo=0
pushd "%~dp0"

rem 引数の数を取得
call .\ArgSize.bat %*

rem 引数個数チェック
if %ArgSize% neq 1 ( goto END_LOCAL )

rem 文字数をカウント
set str=%~1
set /a Length=0

:LOOP_START
if "%str%" == "" (
	goto :LOOP_END
) else (
	set str=%str:~1%
	set /a Length += 1
)
goto :LOOP_START
:LOOP_END

:END_LOCAL
popd
endlocal && set /a Length=%Length%&& set /a ErrorNo=%ErrorNo%

exit /b %ErrorNo%