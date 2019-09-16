@echo off

setlocal enabledelayedexpansion
rem ������
set Padding=
pushd "%~dp0"

rem �����̐����擾
call ArgSize %*

rem �������`�F�b�N
if %ArgSize% neq 3 (
	set /a ErrorNo=1
	goto END_LOCAL
)

rem 3�Ԗڂ̈���(�p�f�B���O���镶��)���P�������`�F�b�N
call Length "%~3"
if %Length% neq 1 (
    set /a ErrorNo = 1
    goto END_LOCAL
)
set PaddingChar=%~3

rem�@2�Ԗڂ̈���(��)�𐔎��ɕϊ�
call ConvertToNumber %~2
if %errorlevel% == 0 (
	set /a keta=%ConvertToNumber%
) else (
	set /a ErrorNo=1
	goto END_LOCAL
)

rem 2�Ԗڂ̈���(��)��1��菬�����ƃG���[
if %keta% lss 1 (
    set /a ErrorNo=1
    goto END_LOCAL
)

rem 1�Ԗڂ̈���(�p�f�B���O������������)�Ɍ�����������ǉ�
set Padding=%~1
for /l %%n in (1 1 %keta%) do (
    set Padding=%PaddingChar%!Padding!
)

call set Padding=%%Padding:~-%keta%%%

:END_LOCAL
popd
endlocal && set Padding=%Padding%&& set /a ErrorNo=%ErrorNo%

exit /b %ErrorNo%