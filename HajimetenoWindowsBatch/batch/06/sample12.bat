@echo off

echo.�Z�~�R�����Ŏn�܂�Ȃ��s  > .\temp\sample12.txt
echo.;�Z�~�R�����Ŏn�܂�s    >> .\temp\sample12.txt

rem eol�͎w�肵�Ȃ�
for /f %%a in (.\temp\sample12.txt) do (
    echo.%%a
)