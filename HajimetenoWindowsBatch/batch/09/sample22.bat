@echo off

setlocal enabledelayedexpansion
for /l %%n in ( 1, 1, 12 ) do (
	call .\cmd\LastDay.bat 2019 %%n
	echo.2019年%%n月は、!LastDay!まで
)