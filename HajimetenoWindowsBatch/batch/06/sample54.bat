@echo off

rem �t�H���_���Ȃ������
if not exist .\data\sample54\aa\empty ( mkdir .\data\sample54\aa\empty )

rem aa�t�H���_��bb�̒��ɕۑ�������(NG))
echo.d| xcopy ".\data\sample54\aa" ".\data\sample54\bb\aa" /y