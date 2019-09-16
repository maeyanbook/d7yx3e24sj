@echo off

rem 引数カウント
set /a ArgSize = 0
for %%i in (%*) do (
	set /a ArgSize += 1
)

rem 引数個数チェック
if %ArgSize% neq 1 (
	exit /b 1
)