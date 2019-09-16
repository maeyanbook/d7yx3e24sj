@echo off

rem カレントディレクトリを自動的に保存し
rem 指定されたパスをカレントディレクトリにする
pushd "%~dp0"

echo.test3
call test2.bat

rem popdコマンドで、自動的に保存してある
rem カレントディレクトリに戻してくれる
popd