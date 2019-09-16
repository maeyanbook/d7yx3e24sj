@echo off

setlocal
rem 初期化
set /a ConvertToNumber=0
set /a ErrorNo=0
pushd "%~dp0"

rem 引数の数を取得
call .\ArgSize.bat %*

rem 引数個数チェック
if %ArgSize% neq 1 (
    set /a ErrorNo=1
    goto END_LOCAL
)

rem 半角スペースは除外する
call Trim.bat %~1
set str=%Trim%

rem 最後の一桁が0だけになった時は、処理をやめるため
rem 文字数を取得しておく
call Length %str%
set /a keta=%Length%

rem 先頭の0を除外する
:loop1
if %keta% gtr 1 (
    if "%str:~0,1%"=="0" (
        rem 2文字目以降を取り出す
	    set str=%str:~1%

        rem 桁数を1減らす
        set keta-=1
	    goto :loop1
    )
)

rem 0-9以外が使われていないかチェックする
set temp=%str%
if defined temp set temp=%temp:0=%
if defined temp set temp=%temp:1=%
if defined temp set temp=%temp:2=%
if defined temp set temp=%temp:3=%
if defined temp set temp=%temp:4=%
if defined temp set temp=%temp:5=%
if defined temp set temp=%temp:6=%
if defined temp set temp=%temp:7=%
if defined temp set temp=%temp:8=%
if defined temp set temp=%temp:9=%

rem -10のように数値以外かつマイナスが先頭に一つだけある場合はエラーとしない
rem 何か残っているか？
if defined temp (
    rem 残ったものはマイナスか？
    if "%temp%" neq "-" (
        rem マイナスでない場合、エラー
        set /a ErrorNo=1
        goto END_LOCAL
    ) else (
        rem マイナスの場合は、先頭にあったか確認
        if "%temp%" neq "-" (
            rem 先頭にないとエラー
            set /a ErrorNo=1
            goto END_LOCAL
        )
    )
)

rem 先頭が0でなく0-9で構成されている文字列である確認がとれたので数値に変換
cd >nul
set /a ConvertToNumber=%str% 2>nul

if %errorlevel% neq 0 (
    set /a ConvertToNumber=0
    set /a ErrorNo=1
    goto END_LOCAL
)

:END_LOCAL
popd
endlocal && set /a ConvertToNumber=%ConvertToNumber% && set /a ErrorNo=%ErrorNo%

exit /b %ErrorNo%