@echo off

rem 空ファイルを作る
type nul > .\temp\type.txt
copy nul .\temp\copy.txt
sort nul > .\temp\sort.txt
md nul > .\temp\md.txt