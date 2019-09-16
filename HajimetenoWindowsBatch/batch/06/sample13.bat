@echo off

echo.セミコロンで始まらない行  > .\temp\sample13.txt
echo.;セミコロンで始まる行    >> .\temp\sample13.txt

for /f "eol=" %%a in (.\temp\sample13.txt) do (
    echo.%%a
)