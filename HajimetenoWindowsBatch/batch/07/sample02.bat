@echo off

rem ���݂���t�H���_�Ƀt�@�C�����R�s�[(�W���o��)
copy ".\a.txt" ".\bb\" >".\temp.log" 2>&1

rem ���݂��Ȃ��t�H���_�Ƀt�@�C�����R�s�[(�G���[���O)
copy ".\a.txt" ".\cc\" >>".\temp.log" 2>&1