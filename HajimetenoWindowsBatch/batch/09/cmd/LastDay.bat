@echo off

setlocal
rem ������
set LastDay=
set /a ErrorNo=0
pushd "%~dp0"

rem �����̐����擾
call .\ArgSize.bat %*

rem �������`�F�b�N
if %ArgSize% neq 2 (
	set /a ErrorNo=1
	goto END_LOCAL
)

rem�@�����𐔎��ɕϊ�
rem �N
call ConvertToNumber %~1
if %errorlevel% == 0 (
	set /a year=%ConvertToNumber%
) else (
	set /a ErrorNo=1
	goto END_LOCAL
)

rem ��
call ConvertToNumber %~2
if %errorlevel% == 0 (
	set /a month=%ConvertToNumber%
) else (
	set /a ErrorNo=1
	goto END_LOCAL
)

rem ���̒l��1�`12���`�F�b�N
if %month% lss 1 (
	set /a ErrorNo=1
	goto END_LOCAL
) else if %month% gtr 12 (
	set /a ErrorNo=1
	goto END_LOCAL
)

rem �ŏI�� 2���ȊO
if %month% neq 2 (
    if %month% == 1 ( 
        set /a LastDay=31 
    ) else if %month% == 3 (
        set /a LastDay=31
    ) else if %month% == 4 (
        set /a LastDay=30
    ) else if %month% == 5 (
        set /a LastDay=31
    ) else if %month% == 6  (
        set /a LastDay=30 
    ) else if %month% == 7  (
        set /a LastDay=31
    ) else if %month% == 8  (
        set /a LastDay=31
    ) else if %month% == 9  (
        set /a LastDay=30
    ) else if %month% == 10 (
        set /a LastDay=31
    ) else if %month% == 11 (
        set /a LastDay=30
    ) else if %month% == 12 (
        set /a LastDay=31
    )
	goto END_LOCAL
)

rem �ŏI�� 2��
rem �[�N���H
call IsLeapYear %year%
if %errorlevel% neq 0 (
	set /a ErrorNo=1
	goto END_LOCAL
)

if "%IsLeepYear%" == "T" (
    set /a LastDay=29
) else (
    set /a LastDay=28
)

:END_LOCAL
popd
endlocal && set LastDay=%LastDay%&& set /a ErrorNo=%ErrorNo%

exit /b %ErrorNo%
