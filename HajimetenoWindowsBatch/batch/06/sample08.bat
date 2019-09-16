@echo off

dir > .\data\dir.txt
for /f "eol=C" %%a in (.\data\dir.txt) do (
    echo.%%a
)