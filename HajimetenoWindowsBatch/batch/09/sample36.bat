@echo off
setlocal enabledelayedexpansion

rem BackSpace�̃L�[�R�[�h���擾
for /f %%a in (BackSpaceKey.txt) do (
	set BackSpaceKey=%%a
)

set /a max=5
for /l %%a in (1, 1, %max%) do (
	if %%a gtr 1 ( call :Delete )

	call ".\cmd\Padding" %%a 2 0
	set num1=!Padding!
	call ".\cmd\Padding" %max% 2 0
	set num2=!Padding!
	
	set message=�������c[!num1!/!num2!]
	set /p str=!message!< nul

	timeout /t 1 /nobreak >nul
)

exit /b

:Delete
rem �O����͂������������J�E���g����Delete����
call ".\cmd\Length" %message%
for /l %%a in (1, 1, %length%) do (
	set /p str=%BackSpaceKey%< nul
)