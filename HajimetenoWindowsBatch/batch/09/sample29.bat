@echo off

rem ���b�N�t�H���_�̃p�X
set LockFolder=%~dp0lock

rem ���b�N�擾
:SLoop
mkdir "%lockFolder%" >nul 2>&1

if %ErrorLevel% == 0 goto ELoop 
 
timeout /t 1 /nobreak >nul
goto SLoop
:ELoop

rem ���Ԃ̂����鏈��
timeout /t 5

rem ���b�N�t�H���_�폜 
rmdir "%lockFolder%"