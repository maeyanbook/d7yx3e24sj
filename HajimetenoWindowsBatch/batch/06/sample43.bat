@echo off

for /f "tokens=*" %%a in ('dir /ad /b .\data\temp*') do (
	rmdir /s /q ".\data\%%a"
)