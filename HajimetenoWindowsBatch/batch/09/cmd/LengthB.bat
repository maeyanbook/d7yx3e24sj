@echo off

setlocal
rem 初期化
set /a LengthB=0
set /a ErrorNo=0
pushd "%~dp0"

rem 引数の数を取得
call .\ArgSize.bat %*

rem 引数個数チェック
if %ArgSize% neq 1 ( goto END_LOCAL )

rem 一時ファイルに出力
set temp=%time: =0%
set temp=%temp::=%
set TempFileName=TempLengthB_%Date:/=%_%temp%_%random%

echo.%~1>%TempFileName%
call :FileSize %TempFileName%

rem 一時ファイルを削除する
del %TempFileName%

:END_LOCAL
popd
endlocal && set /a LengthB=%LengthB%&& set /a ErrorNo=%ErrorNo%

rem 改行コードの分(0D 0A)の2バイト分ひく
set /a LengthB=%LengthB% - 2
exit /b %ErrorNo%

:FileSize
set /a LengthB=%~z1
exit /b