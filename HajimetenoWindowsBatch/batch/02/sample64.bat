@echo off

set str=���ϐ�

setlocal
	rem setlocal��A�l�������Ă��Ȃ��̂�
	rem �O�̒l(���ϐ�)���\�������
	echo.%str%
	set str=���[�J���ϐ�1
	
	setlocal
		rem setlocal��A�l�������Ă��Ȃ��̂�
		rem �O�̒l(���[�J���ϐ�1)���\�������
		echo.%str%
		set str=���[�J���ϐ�2

		rem setlocal��A�l�������Ă���̂�
		rem �ϐ��̒l(���[�J���ϐ�2)���\�������
		echo.%str%
	endlocal
	
	rem setlocal��A�l�������Ă���̂�
	rem �ϐ��̒l(���[�J���ϐ�1)���\�������
	echo.%str%
endlocal

rem �O���[�o���ϐ��̒l(���ϐ�)���\�������
echo.%str%