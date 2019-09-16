@echo off

rem ^は表示されない
echo 2^3は8です

rem ^は表示される
echo 2^^3は8です

rem 変数代入の時は、これでは^は表示されない
set str=2^^3は8です
echo %str%