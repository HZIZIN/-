@echo off 
:loop 
ping -n 6 127.1
tasklist | find "cmd.exe"  || goto fa
tasklist | find "cmd.exe"  && goto su 
 
 
:su 
echo �н��� 
goto loop 
 
:fa 
echo û�н��� 
goto loop
::https://blog.csdn.net/zerodanny/article/details/2082254