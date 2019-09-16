@echo off

rem setlocal外でpushd
pushd "%~dp0"

setlocal

rem 何かしらのエラーを検知しsetlocal内でpopdしてexitする場合
popd
exit /b

endlocal