@echo off

rem �a
set /a ret=1 + 2
echo.1 + 2 = %ret%

rem ��
set /a ret=4 - 3
echo.4 - 3 = %ret%

rem ��
set /a ret=4 * 2
echo.4 * 2 = %ret%

rem ��(��)
set /a ret=7 / 3
echo.7 �� 3 �̏��� %ret%

rem ��(�])
set /a ret=7 %% 3
echo.7 �� 3 �̗]��� %ret%

rem �O���[�v��
set /a ret=(2 + 3) * 2
echo.(2 + 3) * 2 = %ret%