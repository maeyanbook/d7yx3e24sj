@echo off

rem setlocal�O��pushd
pushd "%~dp0"

setlocal

rem ��������̃G���[�����m��setlocal����popd����exit����ꍇ
popd
exit /b

endlocal