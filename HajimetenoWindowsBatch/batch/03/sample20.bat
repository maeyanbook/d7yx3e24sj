@echo off

set /a year=2020

set /a calcA=year %% 400
set /a calcB=year %% 100
set /a calcC=year %% 4

rem 400�Ŋ��؂��/100�Ŋ���؂�Ȃ�/4�Ŋ���؂�� ���ꂼ��𔻒肷��
set /a flagA=0, flagB=0, flagC=0
if %calcA% == 0     set /a flagA=1
if Not %calcB% == 0 set /a flagB=1
if %calcC% == 0     set /a flagC=1

rem �[�N����
rem 400�Ŋ��؂�� or (100�Ŋ���؂�Ȃ� and 4�Ŋ���؂��)
set /a "flag=flagA | (flagB & flagC)"

if %flag% == 0 (
    echo.���N
) else (
    echo.�[�N
)