@echo off

setlocal
rem ������
set /a Length=0
set /a ErrorNo=0
pushd "%~dp0"

rem �����̐����擾
call .\ArgSize.bat %*

rem �������`�F�b�N
if %ArgSize% neq 1 ( goto END_LOCAL )

rem ���������J�E���g
set str=%~1
set /a Length=0

:LOOP_START
if "%str%" == "" (
	goto :LOOP_END
) else (
	set str=%str:~1%
	set /a Length += 1
)
goto :LOOP_START
:LOOP_END

:END_LOCAL
popd
endlocal && set /a Length=%Length%&& set /a ErrorNo=%ErrorNo%

exit /b %ErrorNo%