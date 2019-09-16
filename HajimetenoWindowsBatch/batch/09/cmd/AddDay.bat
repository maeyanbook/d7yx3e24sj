@echo off

setlocal enabledelayedexpansion
rem ������
set AddDay=
set /a ErrorNo=0
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
set /a y=%temp:~0,4%
set /a m=1%temp:~5,2% - 100
set /a d=1%temp:~8,2% - 100 + value

:Loop
rem 1��菬�������A�O�̔N��
if %d% lss 1 ( 
    set /a m=!m! - 1
    if !m! lss 1 ( 
        set /a y=!y! - 1         
        set /a m=12
    )

    call LastDay !y! !m!
    set /a d=!d! + !LastDay!
    goto Loop
)

call LastDay %y% %m%
if !d! gtr !LastDay! (
    set /a m=!m! + 1
    if !m! gtr 12 ( 
        set /a y=!y! + 1 
        set /a m=1
    )

    set /a d=!d! - !LastDay!
	goto Loop
)

call Padding %m% 2 0
set m=%Padding%
call Padding %d% 2 0
set d=%Padding%

set AddDay=%y%/%m%/%d%
:END_LOCAL
popd

endlocal && set AddDay=%AddDay%&& set /a ErrorNo=%ErrorNo%

exit /b %ErrorNo%