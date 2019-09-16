@echo off

set relativePath=..\sample04.txt
set absolutePath="%~dp0%relativePath%"

echo.%time% > %absolutePath%