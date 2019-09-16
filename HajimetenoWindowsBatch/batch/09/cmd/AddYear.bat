@echo off

setlocal enabledelayedexpansion
rem ������
set AddYear=
pushd "%~dp0"

rem �����̐����擾
call ArgSize %*

rem �������`�F�b�N
if "%ArgSize%" neq "2" (
	set /a ErrorNo=1
	goto END_LOCAL
)

rem ���������������`�F�b�N����
call ConvertToNumber %~2
if %errorlevel% == 0 (
	set /a value=%ConvertToNumber%
) else (
	set /a ErrorNo=1
	goto END_LOCAL
)

set temp=%~1
set /a y=%temp:~0,4% + value
set m=%temp:~5,2%
set d=%temp:~8,2%

rem �ύX�O���[�N���Q���̌����̏ꍇ�A�ύX��̔N���[�N���`�F�b�N����
if "%m%" == "02" (
    if "%d%" == "29" (
        call IsLeapYear %y%
        if "!IsLeapYear!" == "F" (
            set d=28
        ) 
    )
)

set AddYear=%y%/%m%/%d%
:END_LOCAL
popd

endlocal && set AddYear=%AddYear%&& set /a ErrorNo=%ErrorNo%

exit /b %ErrorNo%