@echo off

rem ���͂��܂��Ȃ��Ƃ��Ēǉ�
setlocal enabledelayedexpansion

rem �ϊ����̕�����
set program=VBScript

rem �ϊ��O��̕�����
set before=VB
set after=Type

rem �ϊ��O��̕������ϐ��Ŏw��
echo !program:%before%=%after%!