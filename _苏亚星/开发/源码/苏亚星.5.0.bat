@echo off
cls
title 苏亚星脚本控制
mode con cols=60 lines=26

:W
color 3F
cls
echo  ★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★
echo  ☆                                                      ☆
echo  ★             『欢迎使用  苏亚星伪教师端』             ★
echo  ☆                                                      ☆
echo  ★                                                      ★
echo  ☆                                                      ☆
echo  ★                                                      ★
echo  ☆                                                      ☆
echo  ★                                                      ★
echo  ☆                      0.东西机房                      ☆
echo  ★                                                      ★
echo  ☆                           ╬                         ☆
echo  ★                                                      ★
echo  ☆                      1.一体机房                      ☆
echo  ★                                                      ★
echo  ☆                                                      ☆
echo  ★                                                      ★
echo  ☆                                                      ☆
echo  ★                                                      ★
echo  ☆                                                      ☆
echo  ★                                                      ★
echo  ☆                                                      ☆
echo  ★                                                      ★
echo  ☆    ◇使用本脚本默认同意后果自负 与作者无关   V.5.0   ☆
echo  ★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★

:option
set option=0
set /p option= .%date% %time%:
IF NOT "%option%"=="" SET choice=%option:~0,1%
if /i "%choice%"=="0" goto zero
if /i "%choice%"=="1" goto one
echo 无效输入
echo.
goto option
rem ping /n 100 127.1>nul
rem goto W



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
goto W



:zero
cls
color 3F
echo.
echo                       --Control苏亚星--
echo                ===============================
echo                 请选择要进行的操作 然后按回车
echo                ===============================
echo.
echo                 %date% %time%
echo.
echo                1.关闭(不再受控）
echo.
echo                2.恢复(可控状态)
echo.
echo                3.重启苏亚星程序
echo.
echo                4.卸载(不可恢复）
echo.
echo                5.定时关闭苏亚星
echo.
echo                6.机房
echo.
echo                7.关于
echo.
echo                0.退出
echo.
echo.
:user_input_zero

rem set choice=Q
set /p choice=          台式机:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto P
if /i "%choice%"=="2" goto H
if /i "%choice%"=="3" goto S
if /i "%choice%"=="4" goto D
if /i "%choice%"=="5" goto T
if /i "%choice%"=="6" goto W
if /i "%choice%"=="7" goto A
if /i "%choice%"=="0" exit
echo 选择无效，请重新输入
echo.
goto user_input_zero

:P
taskkill -F -IM "Student.exe"  
ren "C:\Program Files\AsiaStar\Mars8.1\*.exe " *.NO
echo 已关闭
pause>nul
goto zero

:H
ren "C:\Program Files\AsiaStar\Mars8.1\*.NO " *.exe
echo 已恢复
pause>nul
goto zero

:S
echo 苏亚星重启中...
taskkill -F -IM "Student.exe"
start "" "C:\Program Files\AsiaStar\Mars8.1\Student.exe"
echo 已重启
pause>nul
goto zero

:D
echo 苏亚星删除...
del "C:\Program Files (x86)\AsiaStar\Mars8.1\*" /q /f /s
RD /s /q "C:\Program Files (x86)\AsiaStar\Mars8.1"
echo 已删除
pause>nul
goto zero

:T
echo 开发中..
rem at 23:59 taskkill /im yg500.exe /f
pause
goto zero



:one
cls
color 3F
echo.
echo                       --Control苏亚星--
echo                ===============================
echo                 请选择要进行的操作 然后按回车
echo                ===============================
echo.
echo                 %date% %time%
echo.
echo                1.关闭(不再受控）
echo.
echo                2.恢复(可控状态)
echo.
echo                3.重启苏亚星程序
echo.
echo                4.卸载(不可恢复）
echo.
echo                5.定时关闭苏亚星
echo.
echo                6.机房
echo.
echo                7.关于
echo.
echo                0.退出
echo.
echo.
:user_input_one

set /p choice=          一体机:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto P_one
if /i "%choice%"=="2" goto H_one
if /i "%choice%"=="3" goto S_one
if /i "%choice%"=="4" goto D_one
if /i "%choice%"=="5" goto T
if /i "%choice%"=="6" goto W
if /i "%choice%"=="7" goto A
if /i "%choice%"=="0" exit
echo 选择无效，请重新输入
echo.
goto user_input_one

:P_one
taskkill -F -IM "Student.exe" 
ren "c:\Program Files (x86)\AsiaStar\Mars8.1\*.exe" *.NON
echo 已关闭
pause>nul
goto one

:H_one
ren "c:\Program Files (x86)\AsiaStar\Mars8.1\*.NON" *.exe
echo 已恢复
pause>nul
goto one

:S_one
echo 苏亚星重启中...
taskkill -F -IM "Student.exe"
start "" "C:\Program Files (x86)\AsiaStar\Mars8.1\Student.exe"
echo 已重启
pause>nul
goto one

:D_one
echo 苏亚星删除...
del "C:\Program Files (x86)\AsiaStar\Mars8.1\*" /q /f /s
RD /s /q "C:\Program Files (x86)\AsiaStar\Mars8.1"
echo 已删除
pause>nul
goto one

:T
echo 开发中..
pause
goto one

::del %0 d:\wind.bat删自己