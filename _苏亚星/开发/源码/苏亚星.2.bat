@echo off
title �����ǿ��ƽű�
::COLOR 2B
::����ǰ����16����0��F
mode con cols=60 lines=15 & color 9f
echo %date% %time%
echo ��ӭʹ�������ǿ��ƽű���һ�ι�������ʹ�ã���ֹ��������!
Echo �����������������Ը���& pause > nul
echo 0:�ƽ�
echo 1:�ָ�
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