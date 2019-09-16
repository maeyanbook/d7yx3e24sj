@echo off

for /f %%a in (.\data\a.txt .\data\b.txt) do (
    echo.%%a
)