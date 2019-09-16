@echo off

setlocal
rem ������
set IsLeapYear=F
pushd "%~dp0"

rem �����̐����擾
call ArgSize %*

rem �������`�F�b�N
if %ArgSize% neq 1 (
	set /a ErrorNo=1
	goto END_LOCAL
)

rem�@�����𐔎��ɕϊ�
call ConvertToNumber %~1
if %errorlevel% == 0 (
	set /a year=%ConvertToNumber%
) else (
	set /a ErrorNo=1
	goto END_LOCAL
)

rem �[�N����
set /a mod4=%year% %% 4
set /a mod100=%year% %% 100
set /a mod400=%year% %% 400

if %mod400% == 0 (
	set IsLeapYear=T
) else if %mod100% == 0 (
	set IsLeapYear=F
) else if %mod4% == 0 (
	set IsLeapYear=T
) else (
	set IsLeapYear=F
)

:END_LOCAL
popd

endlocal && set IsLeapYear=%IsLeapYear%&& set /a ErrorNo=%ErrorNo%

exit /b %ErrorNo%