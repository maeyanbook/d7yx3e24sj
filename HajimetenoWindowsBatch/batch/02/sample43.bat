@echo off

rem 和
set /a ret=1 + 2
echo.1 + 2 = %ret%

rem 差
set /a ret=4 - 3
echo.4 - 3 = %ret%

rem 乗
set /a ret=4 * 2
echo.4 * 2 = %ret%

rem 徐(商)
set /a ret=7 / 3
echo.7 ÷ 3 の商は %ret%

rem 徐(余)
set /a ret=7 %% 3
echo.7 ÷ 3 の余りは %ret%

rem グループ化
set /a ret=(2 + 3) * 2
echo.(2 + 3) * 2 = %ret%