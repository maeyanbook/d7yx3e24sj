@echo off

setlocal enabledelayedexpansion
echo.■デクリメント
for /l %%a in (0, -1, -12) do (
	call .\cmd\AddMonth 2019/12/31 %%a
	echo.!AddMonth!
)


echo.■インクリメント
for /l %%a in (0, 1, 12) do (
	call .\cmd\AddMonth 2019/12/31 %%a
	echo.!AddMonth!
)