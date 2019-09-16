@echo off

call .\cmd\Trim.bat "  abc"
echo.[%Trim%]

call .\cmd\Trim.bat "abc  "
echo.[%Trim%]

call .\cmd\Trim.bat "  abc  "
echo.[%Trim%]