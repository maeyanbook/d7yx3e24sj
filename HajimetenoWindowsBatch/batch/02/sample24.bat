@echo off

set str=WindowsServer2016

rem X�Ԗڈȍ~�̕����S��
echo %str:~13%

rem ��납��N������؂�o��
echo %str:~-4%

rem �擪����N���������o��
echo %str:~0,7%

rem X�Ԗڂ���N������؂�o��
echo %str:~7,6%

rem X�Ԗڈȍ~�A��������N�������
echo %str:~7,-4%

rem ��������X�Ԗڂ̕����̂����A����N���������
echo %str:~-10,-4%