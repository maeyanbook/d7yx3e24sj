@echo off

for /f "delims= eol=" %%a in (.\data\sample17.txt) do (
    echo.%%a
)