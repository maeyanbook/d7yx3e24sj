@echo off

set yyyymmdd=2019/08/01
rem 10�̌���0�̎��͔��p�X�y�[�X�ɒu��������
set yyyymmdd=%yyyymmdd:/0=/ %
set /a mm=%yyyymmdd:~5,2% + 1
echo.%mm%

rem 2���̒l�ɖ߂�
set mm=0%mm%
set mm=%mm:~-2%
echo.%mm%