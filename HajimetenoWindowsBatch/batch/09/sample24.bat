@echo off

setlocal enabledelayedexpansion
echo.���f�N�������g
for /l %%a in (0, -1, -12) do (
	call .\cmd\AddMonth 2019/12/31 %%a
	echo.!AddMonth!
)


echo.���C���N�������g
for /l %%a in (0, 1, 12) do (
	call .\cmd\AddMonth 2019/12/31 %%a
	echo.!AddMonth!
)