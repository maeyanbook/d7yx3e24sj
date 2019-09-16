@echo off
setlocal enabledelayedexpansion

set /a s=0
set /a increment=1

:continue
for /l %%i in (%s%, %increment%, 10) do (
    set /a ret=%%i %% 2
    
    if !ret! == 0 (
        set /a s=%%i + %increment%
        goto continue
    )

    echo.%%i    
)