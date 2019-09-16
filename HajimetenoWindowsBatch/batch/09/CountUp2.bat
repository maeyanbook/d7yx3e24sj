@echo off

setlocal enabledelayedexpansion
set lockFolder=%~dp0lock
set CountFile=%~dp0Count.txt

rem ロック取得
:SLoop
 
mkdir "%lockFolder%" >nul 2>&1
if %ErrorLevel% == 0 goto ELoop 
 
timeout /t 1 /nobreak >nul
goto SLoop

:ELoop
 
rem カウントアップ
if Not Exist "%CountFile%" (
	echo.1 >"%CountFile%"
) else (
	for /f %%a in (%CountFile%) do (
		set /a num=%%a + 1
	)
	echo.!num! >%CountFile%
)

rem ロックフォルダ削除 
rmdir "%lockFolder%"

exit