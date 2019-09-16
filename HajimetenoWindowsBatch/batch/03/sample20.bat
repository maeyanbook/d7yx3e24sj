@echo off

set /a year=2020

set /a calcA=year %% 400
set /a calcB=year %% 100
set /a calcC=year %% 4

rem 400‚ÅŠ„Ø‚ê‚é/100‚ÅŠ„‚èØ‚ê‚È‚¢/4‚ÅŠ„‚èØ‚ê‚é ‚»‚ê‚¼‚ê‚ğ”»’è‚·‚é
set /a flagA=0, flagB=0, flagC=0
if %calcA% == 0     set /a flagA=1
if Not %calcB% == 0 set /a flagB=1
if %calcC% == 0     set /a flagC=1

rem ‰[”N”»’è
rem 400‚ÅŠ„Ø‚ê‚é or (100‚ÅŠ„‚èØ‚ê‚È‚¢ and 4‚ÅŠ„‚èØ‚ê‚é)
set /a "flag=flagA | (flagB & flagC)"

if %flag% == 0 (
    echo.•½”N
) else (
    echo.‰[”N
)