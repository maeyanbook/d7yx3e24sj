@echo off

call .\cmd\ConvertToNumber.bat -1
echo.%ConvertToNumber%

call .\cmd\ConvertToNumber.bat 0
echo.%ConvertToNumber%

call .\cmd\ConvertToNumber.bat 10
echo.%ConvertToNumber%

call .\cmd\ConvertToNumber.bat 100
echo.%ConvertToNumber%

rem �󕶎�
call .\cmd\ConvertToNumber.bat
echo.[Error]%errorlevel%

rem ���l����Ȃ�������n��
call .\cmd\ConvertToNumber.bat a
echo.[Error]%errorlevel%

rem 32 �r�b�g�ł��傫��������n��
call .\cmd\ConvertToNumber.bat 10000000000
echo.[Error]%errorlevel%