@echo off

for /f "tokens=* skip=2" %%a in (.\data\kuku.txt) do (
    echo.%%a
)