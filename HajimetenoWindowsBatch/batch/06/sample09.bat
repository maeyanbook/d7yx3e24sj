@echo off

dir > .\data\dir.txt
for /f "eol=�h" %%a in (.\data\dir.txt) do (
    echo.%%a
)