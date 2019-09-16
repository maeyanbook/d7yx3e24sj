@echo off

for /f "tokens=2*" %%a in (.\data\kuku.txt) do (
    echo.%%a %%b
)