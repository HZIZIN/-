::�T�T�T�T�T���T�T�T��T�T�T���T�T�Tʼ�T�T�T�T�T 
@echo off&cd/d "C:\Program Files (x86)\AsiaStar\Mars8.1\"
setlocal enabledelayedexpansion 
md d:\000 >nul 2>nul 
for /f "delims=" %%a in ('dir /a-d/b/s *.txt') do ( 
move /y "%%a" "d:\000\%%~nxa") 
pause 
::Created By escortmnm from VBS�Ŷ� 
::�T�T�T�T�T���T�T�T��T�T�T��T�T�T���T�T�T�T�T