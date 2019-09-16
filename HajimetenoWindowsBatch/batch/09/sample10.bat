@echo off

setlocal
set sample=%~1
set ErrorNo=0
endlocal && set sample=%sample%&& set /a ErrorNo=%ErrorNo%
rem ↑文字列を格納する後の&&は、半角スペースを入れない

echo.[%sample%]
echo.[%ErrorNo%]