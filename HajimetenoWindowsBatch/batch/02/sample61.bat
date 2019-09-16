@echo off

for /f "tokens=3" %%a in ('REG QUERY HKCU\Environment /v zzz') do (
    echo.%%a
)