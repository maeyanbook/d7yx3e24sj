@echo off

for /f "tokens=2-4" %%a in (.\data\kuku.txt) do (
    echo.%%a %%b %%c
)