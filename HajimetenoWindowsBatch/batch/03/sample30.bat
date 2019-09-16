@echo off

for /l %%i in (1, 1, 10) do (
    if 5 lss %%i ( goto for_end )
    echo.%%i
)
:for_end