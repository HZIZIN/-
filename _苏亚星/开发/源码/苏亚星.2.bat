@echo off
title 苏亚星控制脚本
::COLOR 2B
::背景前景，16进制0—F
mode con cols=60 lines=15 & color 9f
echo %date% %time%
echo 欢迎使用苏亚星控制脚本，一次购买，终身使用，禁止二次售卖!
Echo 按任意键继续，后果自负！& pause > nul
echo 0:破解
echo 1:恢复
set /p dz= 
echo %dz%

if {%dz%}=={0} echo 01 
taskkill -F -IM Student.exe
ren "c:\Program Files (x86)\AsiaStar\Mars8.1\*.exe" *.png
ren "C:\Program Files\AsiaStar\Mars8.1\*.exe " *.SB
if {%dz%}=={1} echo 10
echo 101
ren 666.lnk 360.exe
ren Student.exe S.png q
https://www.cnblogs.com/mq0036/p/3412171.html