@echo off

rem いろんな変数名
set str=英文字で始まる
echo %str%

set @var=記号で始まる
echo %@Var%

set l33t=途中に数字を使うのはOK
echo %l33t%

set 変数=日本語でも認識します
echo %変数%

set a b=間に半角スペース
echo %a b%