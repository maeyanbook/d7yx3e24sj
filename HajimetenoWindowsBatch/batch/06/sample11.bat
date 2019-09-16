@echo off

dir > .\data\dir.txt
for /f "eol=:" %%a in (.\data\dir.txt) do (
    echo.%%a
)