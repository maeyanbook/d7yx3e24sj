@echo off

set t=%time%

rem 0–„‚ß
set t=%t: =0%

rem :.œŠO
set t=%t::=%
set t=%t:.=%

echo.%t%