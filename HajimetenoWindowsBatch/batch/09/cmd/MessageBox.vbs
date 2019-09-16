Option Explicit

dim ReturnValue
ReturnValue = 0

if WScript.Arguments.Count <> 3 then
    WScript.Quit(ReturnValue)
end if

dim prompt, button, title
prompt = WScript.Arguments(0)
button = WScript.Arguments(1)
title = WScript.Arguments(2)

ReturnValue = Msgbox(prompt, button, title)
WScript.Quit(ReturnValue)