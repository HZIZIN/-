@echo off 
:loop 
ping -n 6 127.1
tasklist | find "cmd.exe"  || goto fa
tasklist | find "cmd.exe"  && goto su 
 
 
:su 
echo 有进程 
goto loop 
 
:fa 
echo 没有进程 
goto loop
::https://blog.csdn.net/zerodanny/article/details/2082254