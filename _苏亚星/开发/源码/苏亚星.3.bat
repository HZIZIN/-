@echo off
cls
title �����ǿ��ƽű�
mode con cols=60 lines=26
:menu
cls
color 3F
echo.
echo                         Kill ������
echo                ==============================
echo                ��ѡ��Ҫ���еĲ��� Ȼ�󰴻س�
echo                ==============================
echo.
echo                 %date% %time%
echo.
echo                1.�ر�(�����ܿأ�
echo.
echo                2.�ָ�(�ɿ�״̬)
echo.
echo                3.���������ǳ���
echo.
echo                4.��ʱ�ر�������
echo.
echo                5.ɾ��(���ɻָ���
echo.
echo                6.����
echo.
echo                0.�˳�
echo.
echo.
:user_input

rem set choice=Q
set /p choice=          ��ѡ��:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto P
if /i "%choice%"=="2" goto H
if /i "%choice%"=="3" goto S
if /i "%choice%"=="4" goto T
if /i "%choice%"=="5" goto D
if /i "%choice%"=="6" goto A
if /i "%choice%"=="0" exit
echo ѡ����Ч������������
echo.
goto user_input

:P
taskkill -F -IM "Student.exe" 
ren "c:\Program Files (x86)\AsiaStar\Mars8.1\*.exe" *.NON 
rem ren "C:\Program Files\AsiaStar\Mars8.1\*.exe " *.NO
pause
goto menu

:H
echo һ�����: &ren "c:\Program Files (x86)\AsiaStar\Mars8.1\*.*" *.exe
rem echo ��������: &ren "C:\Program Files\AsiaStar\Mars8.1\*.NO " *.exe
pause
goto menu

:S
echo ������������...
taskkill -F -IM "Student.exe"
start "" "C:\Program Files (x86)\AsiaStar\Mars8.1\Student.exe"
pause
goto menu

:T
echo ������
pause
goto menu

:D
echo ������ɾ��...
del "C:\Program Files (x86)\AsiaStar\Mars8.1\*" /q /f /s
RD /s /q "C:\Program Files (x86)\AsiaStar\Mars8.1"
pause
goto menu

:A
cls
color 34
echo.
echo.
echo             ������������óѧԺ
echo             ��ԭ�����ƾ�ѧУ��
echo             17�����һ��ѧ��
echo             Ұ����ʿ--������
echo             �����һ�ι���������Ч
echo             ��ֹ���δ���������
echo             ��Ԫ����һ�ȡ
pause
goto menu

rem 666.lnk 360.exe 
rem Student.exe S.png q
::https://www.cnblogs.com/mq0036/p/3412171.html
::del %0 d:\wind.batɾ�Լ�
::https://www.cnblogs.com/mq0036/p/3412171.html