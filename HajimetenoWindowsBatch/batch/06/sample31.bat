@echo off

for /f "usebackq" %%a in ('.\data\a.txt .\data\b.txt') do (
    echo.%%a
)