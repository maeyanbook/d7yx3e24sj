@echo off

dir > .\data\dir.txt
for /f %%a in (.\data\dir.txt) do (
    echo.%%a
)