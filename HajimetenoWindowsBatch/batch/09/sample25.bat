@echo off

echo.■デクリメント
call .\cmd\AddDay 2019/12/31 -1
echo %AddDay%

call .\cmd\AddDay 2019/12/31 -30
echo %AddDay%

call .\cmd\AddDay 2019/12/31 -31
echo %AddDay%

call .\cmd\AddDay 2019/12/31 -365
echo %AddDay%

echo.■インクリメント
call .\cmd\AddDay 2019/12/31 1
echo %AddDay%

call .\cmd\AddDay 2019/12/31 31
echo %AddDay%

call .\cmd\AddDay 2019/12/31 32
echo %AddDay%

call .\cmd\AddDay 2019/12/31 365
echo %AddDay%
