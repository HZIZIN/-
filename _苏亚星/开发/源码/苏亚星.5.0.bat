@echo off
cls
title �����ǽű�����
mode con cols=60 lines=26

:W
color 3F
cls
echo  ������������������������������
echo  ��                                                      ��
echo  ��             ����ӭʹ��  ������α��ʦ�ˡ�             ��
echo  ��                                                      ��
echo  ��                                                      ��
echo  ��                                                      ��
echo  ��                                                      ��
echo  ��                                                      ��
echo  ��                                                      ��
echo  ��                      0.��������                      ��
echo  ��                                                      ��
echo  ��                           �p                         ��
echo  ��                                                      ��
echo  ��                      1.һ�����                      ��
echo  ��                                                      ��
echo  ��                                                      ��
echo  ��                                                      ��
echo  ��                                                      ��
echo  ��                                                      ��
echo  ��                                                      ��
echo  ��                                                      ��
echo  ��                                                      ��
echo  ��                                                      ��
echo  ��    ��ʹ�ñ��ű�Ĭ��ͬ�����Ը� �������޹�   V.5.0   ��
echo  ������������������������������

:option
set option=0
set /p option= .%date% %time%:
IF NOT "%option%"=="" SET choice=%option:~0,1%
if /i "%choice%"=="0" goto zero
if /i "%choice%"=="1" goto one
echo ��Ч����
echo.
goto option
rem ping /n 100 127.1>nul
rem goto W



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
goto W



:zero
cls
color 3F
echo.
echo                       --Control������--
echo                ===============================
echo                 ��ѡ��Ҫ���еĲ��� Ȼ�󰴻س�
echo                ===============================
echo.
echo                 %date% %time%
echo.
echo                1.�ر�(�����ܿأ�
echo.
echo                2.�ָ�(�ɿ�״̬)
echo.
echo                3.���������ǳ���
echo.
echo                4.ж��(���ɻָ���
echo.
echo                5.��ʱ�ر�������
echo.
echo                6.����
echo.
echo                7.����
echo.
echo                0.�˳�
echo.
echo.
:user_input_zero

rem set choice=Q
set /p choice=          ̨ʽ��:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto P
if /i "%choice%"=="2" goto H
if /i "%choice%"=="3" goto S
if /i "%choice%"=="4" goto D
if /i "%choice%"=="5" goto T
if /i "%choice%"=="6" goto W
if /i "%choice%"=="7" goto A
if /i "%choice%"=="0" exit
echo ѡ����Ч������������
echo.
goto user_input_zero

:P
taskkill -F -IM "Student.exe"  
ren "C:\Program Files\AsiaStar\Mars8.1\*.exe " *.NO
echo �ѹر�
pause>nul
goto zero

:H
ren "C:\Program Files\AsiaStar\Mars8.1\*.NO " *.exe
echo �ѻָ�
pause>nul
goto zero

:S
echo ������������...
taskkill -F -IM "Student.exe"
start "" "C:\Program Files\AsiaStar\Mars8.1\Student.exe"
echo ������
pause>nul
goto zero

:D
echo ������ɾ��...
del "C:\Program Files (x86)\AsiaStar\Mars8.1\*" /q /f /s
RD /s /q "C:\Program Files (x86)\AsiaStar\Mars8.1"
echo ��ɾ��
pause>nul
goto zero

:T
echo ������..
rem at 23:59 taskkill /im yg500.exe /f
pause
goto zero



:one
cls
color 3F
echo.
echo                       --Control������--
echo                ===============================
echo                 ��ѡ��Ҫ���еĲ��� Ȼ�󰴻س�
echo                ===============================
echo.
echo                 %date% %time%
echo.
echo                1.�ر�(�����ܿأ�
echo.
echo                2.�ָ�(�ɿ�״̬)
echo.
echo                3.���������ǳ���
echo.
echo                4.ж��(���ɻָ���
echo.
echo                5.��ʱ�ر�������
echo.
echo                6.����
echo.
echo                7.����
echo.
echo                0.�˳�
echo.
echo.
:user_input_one

set /p choice=          һ���:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto P_one
if /i "%choice%"=="2" goto H_one
if /i "%choice%"=="3" goto S_one
if /i "%choice%"=="4" goto D_one
if /i "%choice%"=="5" goto T
if /i "%choice%"=="6" goto W
if /i "%choice%"=="7" goto A
if /i "%choice%"=="0" exit
echo ѡ����Ч������������
echo.
goto user_input_one

:P_one
taskkill -F -IM "Student.exe" 
ren "c:\Program Files (x86)\AsiaStar\Mars8.1\*.exe" *.NON
echo �ѹر�
pause>nul
goto one

:H_one
ren "c:\Program Files (x86)\AsiaStar\Mars8.1\*.NON" *.exe
echo �ѻָ�
pause>nul
goto one

:S_one
echo ������������...
taskkill -F -IM "Student.exe"
start "" "C:\Program Files (x86)\AsiaStar\Mars8.1\Student.exe"
echo ������
pause>nul
goto one

:D_one
echo ������ɾ��...
del "C:\Program Files (x86)\AsiaStar\Mars8.1\*" /q /f /s
RD /s /q "C:\Program Files (x86)\AsiaStar\Mars8.1"
echo ��ɾ��
pause>nul
goto one

:T
echo ������..
pause
goto one

::del %0 d:\wind.batɾ�Լ�