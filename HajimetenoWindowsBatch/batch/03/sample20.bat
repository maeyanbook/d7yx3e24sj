@echo off

set /a year=2020

set /a calcA=year %% 400
set /a calcB=year %% 100
set /a calcC=year %% 4

rem 400で割切れる/100で割り切れない/4で割り切れる それぞれを判定する
set /a flagA=0, flagB=0, flagC=0
if %calcA% == 0     set /a flagA=1
if Not %calcB% == 0 set /a flagB=1
if %calcC% == 0     set /a flagC=1

rem 閏年判定
rem 400で割切れる or (100で割り切れない and 4で割り切れる)
set /a "flag=flagA | (flagB & flagC)"

if %flag% == 0 (
    echo.平年
) else (
    echo.閏年
)