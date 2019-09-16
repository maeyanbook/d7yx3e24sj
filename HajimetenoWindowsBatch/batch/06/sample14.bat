@echo off

dir > .\data\dir.txt

for /f "delims=/" %%a in (.\data\dir.txt) do (
    echo.%%a
)