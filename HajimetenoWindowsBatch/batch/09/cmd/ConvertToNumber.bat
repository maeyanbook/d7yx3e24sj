@echo off

setlocal
rem ������
set /a ConvertToNumber=0
set /a ErrorNo=0
pushd "%~dp0"

rem �����̐����擾
call .\ArgSize.bat %*

rem �������`�F�b�N
if %ArgSize% neq 1 (
    set /a ErrorNo=1
    goto END_LOCAL
)

rem ���p�X�y�[�X�͏��O����
call Trim.bat %~1
set str=%Trim%

rem �Ō�̈ꌅ��0�����ɂȂ������́A��������߂邽��
rem ���������擾���Ă���
call Length %str%
set /a keta=%Length%

rem �擪��0�����O����
:loop1
if %keta% gtr 1 (
    if "%str:~0,1%"=="0" (
        rem 2�����ڈȍ~�����o��
	    set str=%str:~1%

        rem ������1���炷
        set keta-=1
	    goto :loop1
    )
)

rem 0-9�ȊO���g���Ă��Ȃ����`�F�b�N����
set temp=%str%
if defined temp set temp=%temp:0=%
if defined temp set temp=%temp:1=%
if defined temp set temp=%temp:2=%
if defined temp set temp=%temp:3=%
if defined temp set temp=%temp:4=%
if defined temp set temp=%temp:5=%
if defined temp set temp=%temp:6=%
if defined temp set temp=%temp:7=%
if defined temp set temp=%temp:8=%
if defined temp set temp=%temp:9=%

rem -10�̂悤�ɐ��l�ȊO���}�C�i�X���擪�Ɉ��������ꍇ�̓G���[�Ƃ��Ȃ�
rem �����c���Ă��邩�H
if defined temp (
    rem �c�������̂̓}�C�i�X���H
    if "%temp%" neq "-" (
        rem �}�C�i�X�łȂ��ꍇ�A�G���[
        set /a ErrorNo=1
        goto END_LOCAL
    ) else (
        rem �}�C�i�X�̏ꍇ�́A�擪�ɂ��������m�F
        if "%temp%" neq "-" (
            rem �擪�ɂȂ��ƃG���[
            set /a ErrorNo=1
            goto END_LOCAL
        )
    )
)

rem �擪��0�łȂ�0-9�ō\������Ă��镶����ł���m�F���Ƃꂽ�̂Ő��l�ɕϊ�
cd >nul
set /a ConvertToNumber=%str% 2>nul

if %errorlevel% neq 0 (
    set /a ConvertToNumber=0
    set /a ErrorNo=1
    goto END_LOCAL
)

:END_LOCAL
popd
endlocal && set /a ConvertToNumber=%ConvertToNumber% && set /a ErrorNo=%ErrorNo%

exit /b %ErrorNo%