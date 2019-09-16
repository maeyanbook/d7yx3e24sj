@echo off

dir > .\data\dir.txt
for /f "eol=ƒh" %%a in (.\data\dir.txt) do (
    echo.%%a
)