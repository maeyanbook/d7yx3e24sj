@echo off

dir > .\data\dir.txt

for /f "delims=0����:��" %%a in (.\data\dir.txt) do (
    echo.%%a
)