@echo off

setlocal
set /a ErrorNo=0
set /a ReturnValue=0

rem 0��菬�����ƃG���[
if %~1 lss 0 (
	set /a ErrorNo=1
    rem ������ exit �ŌĂяo�����ɓn���ϐ��ւ̒l��ݒ�ł��Ȃ�
	goto endlocal
)

set /a ReturnValue=%~1

:endlocal
endlocal && set /a ReturnValue=%ReturnValue% && set /a ErrorNo=%ErrorNo%

echo.[ErrorNo]%ErrorNo%
echo.[ReturnValue]%ReturnValue%