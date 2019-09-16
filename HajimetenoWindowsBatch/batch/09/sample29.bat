@echo off

rem ロックフォルダのパス
set LockFolder=%~dp0lock

rem ロック取得
:SLoop
mkdir "%lockFolder%" >nul 2>&1

if %ErrorLevel% == 0 goto ELoop 
 
timeout /t 1 /nobreak >nul
goto SLoop
:ELoop

rem 時間のかかる処理
timeout /t 5

rem ロックフォルダ削除 
rmdir "%lockFolder%"