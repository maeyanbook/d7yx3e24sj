@echo off

setlocal
rem ������
set /a LengthB=0
set /a ErrorNo=0
pushd "%~dp0"

rem �����̐����擾
call .\ArgSize.bat %*

rem �������`�F�b�N
if %ArgSize% neq 1 ( goto END_LOCAL )

rem �ꎞ�t�@�C���ɏo��
set temp=%time: =0%
set temp=%temp::=%
set TempFileName=TempLengthB_%Date:/=%_%temp%_%random%

echo.%~1>%TempFileName%
call :FileSize %TempFileName%

rem �ꎞ�t�@�C�����폜����
del %TempFileName%

:END_LOCAL
popd
endlocal && set /a LengthB=%LengthB%&& set /a ErrorNo=%ErrorNo%

rem ���s�R�[�h�̕�(0D 0A)��2�o�C�g���Ђ�
set /a LengthB=%LengthB% - 2
exit /b %ErrorNo%

:FileSize
set /a LengthB=%~z1
exit /b