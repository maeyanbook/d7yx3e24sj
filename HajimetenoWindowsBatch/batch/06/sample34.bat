@echo off

set Path1=c:\batch\06\data
set Path2=c:\batch\06\data\test.txt

call :CHECK_EXIST %Path1%
call :CHECK_EXIST %Path2%
exit /b

:CHECK_EXIST
if exist "%1" (
	if exist "%1\" (
		echo.���݂��܂���(�t�H���_^)
	) else (
		echo.���݂��܂���(�t�@�C��^)
	)
) else (
	echo.���݂��܂���ł���
)
