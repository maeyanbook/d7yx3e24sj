@echo off

for /l %%a in (1, 1, 50) do (
	start /MIN CountUp2.bat
)