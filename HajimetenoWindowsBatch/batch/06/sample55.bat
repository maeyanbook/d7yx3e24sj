@echo off

rem �t�H���_���Ȃ������
if not exist .\data\sample55\aa\empty ( mkdir .\data\sample55\aa\empty )

rem aa�t�H���_��bb�̒��ɕۑ�������
echo.d| xcopy ".\data\sample55\aa" ".\data\sample55\bb\aa" /y /e