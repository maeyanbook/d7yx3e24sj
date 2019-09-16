@echo off

for /f "tokens=*" %%a in (.\data\kuku.txt) do (
    echo.%%a
)