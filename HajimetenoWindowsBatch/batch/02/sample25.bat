@echo off

set str=WindowsServer2016

rem X�Ԗڈȍ~�̕����S��
set X1=13
call echo %%str:~%X1%%%

rem X�Ԗڈȍ~�A��������N�������
set X2=7
set N2=-4
call echo %%str:~%X2%,%N2%%%