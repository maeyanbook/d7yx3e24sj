@echo off

for /f "tokens=2,4,6" %%a in (.\data\kuku.txt) do (
    echo.%%a Å~ %%b = %%c
)