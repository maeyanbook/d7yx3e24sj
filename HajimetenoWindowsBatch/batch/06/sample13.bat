@echo off

echo.�Z�~�R�����Ŏn�܂�Ȃ��s  > .\temp\sample13.txt
echo.;�Z�~�R�����Ŏn�܂�s    >> .\temp\sample13.txt

for /f "eol=" %%a in (.\temp\sample13.txt) do (
    echo.%%a
)