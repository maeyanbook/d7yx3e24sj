@echo off

for /f "usebackq tokens=3" %%a in (`REG QUERY "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v zzz`) do (
    echo.%%a
)