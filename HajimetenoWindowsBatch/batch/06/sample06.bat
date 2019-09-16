@echo off

rem 001.txt`010.txt‚Ìƒtƒ@ƒCƒ‹‚ðì¬‚·‚é
setlocal enabledelayedexpansion
for /l %%n in (1, 1, 10) do ( 
	set num=00%%n
	set num=!num:~-3!
	type nul >.\temp\!num!.txt
)