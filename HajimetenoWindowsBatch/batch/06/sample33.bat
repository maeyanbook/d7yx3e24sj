@echo off

set FolderPath=c:\batch\06\data\
set FilePath="%FolderPath%test.txt"

if exist %FolderPath% (
	echo.�t�H���_����
) else (
	echo.�t�H���_�Ȃ�
)

if exist %FilePath% (
	echo.�t�@�C������
) else (
	echo.�t�@�C���Ȃ�
)