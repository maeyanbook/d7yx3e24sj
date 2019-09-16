@echo off

call ".\cmd\LengthB.bat" abcde
echo.%LengthB%[byte]

call ".\cmd\LengthB.bat" ‚ ‚¢‚¤‚¦‚¨
echo.%LengthB%[byte]