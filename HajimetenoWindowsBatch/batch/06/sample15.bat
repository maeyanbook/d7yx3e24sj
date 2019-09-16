@echo off

dir > .\data\dir.txt

for /f "delims=0ƒ‰ƒŠ:ŒÂ" %%a in (.\data\dir.txt) do (
    echo.%%a
)