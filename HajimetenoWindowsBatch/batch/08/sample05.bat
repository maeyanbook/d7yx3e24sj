@echo off

set /a sum=0
for %%a in (%*) do (
	set /a sum+=%%a
)

echo.%sum%