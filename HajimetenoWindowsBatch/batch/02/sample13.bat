@echo off

rem ��̕ϐ���p��
set STR1=Command
set STR2=Prompt

rem �����������ʂ��o��
echo %STR1%%STR2%

rem ���p�X�y�[�X������ł��ꑱ���̕�����Ƃ݂Ȃ����
set STR=%STR1% %STR2%
echo %STR%

echo �ϐ�"STR"�̒l��"%STR%"
