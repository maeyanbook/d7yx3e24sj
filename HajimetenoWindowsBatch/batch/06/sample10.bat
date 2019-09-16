@echo off

dir > .\data\dir.txt
for /f "eol=2" %%a in (.\data\dir.txt) do (
    echo.%%a
)