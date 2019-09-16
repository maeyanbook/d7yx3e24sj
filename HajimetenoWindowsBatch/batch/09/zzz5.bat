@echo off

set zzz=初期値

setlocal

rem 何かしらの処理
set temp=ローカルスコープ内での値

endlocal && set zzz=%temp%