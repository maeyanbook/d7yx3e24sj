@echo off

setlocal
set /a ErrorNo=0
set /a ReturnValue=0

rem 0より小さいとエラー
if %~1 lss 0 (
	set /a ErrorNo=1
    rem ここで exit で呼び出し元に渡す変数への値を設定できない
	goto endlocal
)

set /a ReturnValue=%~1

:endlocal
endlocal && set /a ReturnValue=%ReturnValue% && set /a ErrorNo=%ErrorNo%

echo.[ErrorNo]%ErrorNo%
echo.[ReturnValue]%ReturnValue%