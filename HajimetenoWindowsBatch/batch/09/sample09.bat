@echo off

setlocal
set sample=%~1
set ErrorNo=0
endlocal && set sample=%sample% && set /a ErrorNo=%ErrorNo%
rem ↑&&の前に半角スペースを入れるとそこまでが文字列として代入される

rem ↓半角スペースがついてしまう
echo.[%sample%]
echo.[%ErrorNo%]