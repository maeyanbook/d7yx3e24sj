@echo off

rem �����J�E���g
set /a ArgSize = 0
for %%i in (%*) do (
	set /a ArgSize += 1
)

rem �������`�F�b�N
if %ArgSize% neq 1 (
	exit /b 1
)