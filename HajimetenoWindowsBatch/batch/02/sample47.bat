@echo off

rem 0101(2)=5 ‚Ì1‚Ì•â”‚Í 1010(2)=10
set /a num="~5 & 0xF"
echo.%num%