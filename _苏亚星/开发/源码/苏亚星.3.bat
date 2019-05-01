@echo off
cls
title 苏亚星控制脚本
mode con cols=60 lines=26
:menu
cls
color 3F
echo.
echo                         Kill 苏亚星
echo                ==============================
echo                请选择要进行的操作 然后按回车
echo                ==============================
echo.
echo                 %date% %time%
echo.
echo                1.关闭(不再受控）
echo.
echo                2.恢复(可控状态)
echo.
echo                3.重启苏亚星程序
echo.
echo                4.定时关闭苏亚星
echo.
echo                5.删除(不可恢复）
echo.
echo                6.关于
echo.
echo                0.退出
echo.
echo.
:user_input

rem set choice=Q
set /p choice=          请选择:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto P
if /i "%choice%"=="2" goto H
if /i "%choice%"=="3" goto S
if /i "%choice%"=="4" goto T
if /i "%choice%"=="5" goto D
if /i "%choice%"=="6" goto A
if /i "%choice%"=="0" exit
echo 选择无效，请重新输入
echo.
goto user_input

:P
taskkill -F -IM "Student.exe" 
ren "c:\Program Files (x86)\AsiaStar\Mars8.1\*.exe" *.NON 
rem ren "C:\Program Files\AsiaStar\Mars8.1\*.exe " *.NO
pause
goto menu

:H
echo 一体机房: &ren "c:\Program Files (x86)\AsiaStar\Mars8.1\*.*" *.exe
rem echo 东西机房: &ren "C:\Program Files\AsiaStar\Mars8.1\*.NO " *.exe
pause
goto menu

:S
echo 苏亚星重启中...
taskkill -F -IM "Student.exe"
start "" "C:\Program Files (x86)\AsiaStar\Mars8.1\Student.exe"
pause
goto menu

:T
echo 开发中
pause
goto menu

:D
echo 苏亚星删除...
del "C:\Program Files (x86)\AsiaStar\Mars8.1\*" /q /f /s
RD /s /q "C:\Program Files (x86)\AsiaStar\Mars8.1"
pause
goto menu

:A
cls
color 34
echo.
echo.
echo             作者是洛阳商贸学院
echo             （原洛阳财经学校）
echo             17计算机一班学生
echo             野猪骑士--赵永信
echo             本软件一次购买，终生有效
echo             禁止二次传播，售卖
echo             二元人民币获取
pause
goto menu

rem 666.lnk 360.exe 
rem Student.exe S.png q
::https://www.cnblogs.com/mq0036/p/3412171.html
::del %0 d:\wind.bat删自己
::https://www.cnblogs.com/mq0036/p/3412171.html