@echo off

echo.セミコロンで始まらない行  > .\temp\sample12.txt
echo.;セミコロンで始まる行    >> .\temp\sample12.txt

rem eolは指定しない
for /f %%a in (.\temp\sample12.txt) do (
    echo.%%a
)