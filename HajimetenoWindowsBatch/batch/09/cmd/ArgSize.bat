@echo off

rem ������
set /a ArgSize=0

for %%i in (%*) do (
    set /a ArgSize += 1
)

exit /b 0