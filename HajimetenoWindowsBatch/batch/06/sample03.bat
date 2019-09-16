@echo off

set relativePath=.\temp\sample03.txt
set absolutePath="%~dp0%relativePath%"

echo.%time% > %absolutePath%