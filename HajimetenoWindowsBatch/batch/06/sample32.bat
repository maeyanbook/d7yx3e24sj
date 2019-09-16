@echo off

for /f "usebackq" %%a in (`cd`) do (
    echo.%%a
)