@echo off
cls
title �����ǽű�����
mode con cols=60 lines=26

:W
color 8F
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
echo  ��ʹ�ü�ͬ�����Ը� ��������                   רҵ��  ��
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
color B1
echo=============================================================
echo                        About me
echo.
echo.
echo             ������������óѧԺ��ԭ�����ƾ�ѧУ��
echo.
echo             17�����һ��ѧ��:Ұ����ʿ--������
echo.
echo             �����һ�ι���������Ч
echo.
echo             ��ֹ���δ���������
echo.
echo             ��Ԫ����һ�ȡ��װ
echo=============================================================
echo Press any key to express my consent and support.
pause>nul
goto W

:E
exit
rem del /f %0


:C
cls
color 31
echo=============================================================
echo                            �ʵ�
echo.
echo       ������ϰ���������������������ʦĿǰ����������
echo.
echo   ����ű���ﵽ�㣬����ǵ�����ԭ�򡪡������Чѧϰ���ϰ�
echo.
echo                ����Ĳ��ܲ��ھ�������ͨˮƽ
echo.
echo.
echo.
echo.
echo.
echo Just a colored egg.
echo=============================================================
echo Technology innocence.
pause>nul
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
echo                5.�ʵ�
echo.
echo                6.����
echo.
echo                7.����
echo.
echo                0.�˳�
echo.
echo.
:user_input_zero

set choice=0
set /p choice=          ̨ʽ��:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto P
if /i "%choice%"=="2" goto H
if /i "%choice%"=="3" goto S
if /i "%choice%"=="4" goto D
if /i "%choice%"=="5" goto C
if /i "%choice%"=="6" goto W
if /i "%choice%"=="7" goto A
if /i "%choice%"=="0" goto E
echo ѡ����Ч������������
echo.
goto user_input_zero

:P
tasklist|find /i "Student.exe" ||echo ѧ����δ�ҵ�"�ѹر�"
taskkill -F -IM "Student.exe"  
ren "C:\Program Files\AsiaStar\Mars8.1\*.exe " *.NON
echo �ѹر�
pause>nul
goto zero

:H
ren "C:\Program Files\AsiaStar\Mars8.1\*.NON " *.exe
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
del /f /s /q "C:\Program Files\AsiaStar\Mars8.1\*.*" 
RD /s /q "C:\Program Files\AsiaStar\Mars8.1\"
echo ��ɾ��
@choice /t 3 /d y /n >nul
goto zero

:T
set /p timer=�ڼ����Ӻ�ر�(���ִ��ڴ�):
IF NOT "%timer%"=="" SET choice=%timer:~0,4%
echo ��ʼ����ʱ %timer%
echo ..
echo .
@choice /t %timer% /d y /n >nul &taskkill /im FeiQ.1060559168.exe /f
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
if /i "%choice%"=="5" goto T_one
if /i "%choice%"=="6" goto W
if /i "%choice%"=="7" goto A
if /i "%choice%"=="0" goto E
echo ѡ����Ч������������
echo.
goto user_input_one

:P_one
tasklist|find /i "Student.exe" ||echo ѧ����δ�ҵ�"�ѹر�" 
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
del /f /s /q "C:\Program Files (x86)\AsiaStar\Mars8.1\*.*" 
RD /s /q "C:\Program Files (x86)\AsiaStar\Mars8.1"
echo ��ɾ��
@choice /t 3 /d y /n >nul
goto one

:T_one
set /p timer=�ڼ����Ӻ�ر�(���ִ��ڴ�):
rem IF NOT "%timer%"=="" SET choice=%timer:~0,4%
echo ��ʼ����ʱ %timer%
echo ..
echo .
@choice /t %timer% /d y /n >nul &taskkill /im FeiQ.1060559168.exe /f
goto one


::echo 2018.12.5.18.06...
::pause>nul