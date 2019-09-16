@echo off

set zzz=初期値

setlocal
rem 何かしらの処理
set temp=ローカルスコープ内での値

rem setlocal内の変数の値をグローバル変数に格納するつもりが…
rem ローカル変数のzzzに格納しているだけ
set zzz=%temp%
endlocal