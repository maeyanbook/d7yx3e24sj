@echo off

set str=環境変数

setlocal
	rem setlocal後、値を代入していないので
	rem 外の値(環境変数)が表示される
	echo.%str%
	set str=ローカル変数1
	
	setlocal
		rem setlocal後、値を代入していないので
		rem 外の値(ローカル変数1)が表示される
		echo.%str%
		set str=ローカル変数2

		rem setlocal後、値を代入しているので
		rem 変数の値(ローカル変数2)が表示される
		echo.%str%
	endlocal
	
	rem setlocal後、値を代入しているので
	rem 変数の値(ローカル変数1)が表示される
	echo.%str%
endlocal

rem グローバル変数の値(環境変数)が表示される
echo.%str%