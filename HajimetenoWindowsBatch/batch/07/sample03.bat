@echo off

echo.nul指定無し
copy ".\aa\" ".\bb\"

echo.nul指定有り
copy ".\aa\" ".\bb\" > nul