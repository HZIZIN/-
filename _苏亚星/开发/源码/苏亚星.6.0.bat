@echo off
cls
title 苏亚星脚本控制
mode con cols=60 lines=26

:W
color FB
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
echo  ☆使用即同意后果自负 作者免责                   专业版  ☆
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
color B1
echo=============================================================
echo                        About me
echo.
echo.
echo             作者是洛阳商贸学院（原洛阳财经学校）
echo.
echo             17计算机一班学生:野猪骑士--赵永信
echo.
echo             本软件一次购买，终生有效
echo.
echo             禁止二次传播，售卖
echo.
echo             十元人民币获取套装
echo=============================================================
echo Press any key to express my consent and support.
pause>nul
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
ren "C:\Program Files\AsiaStar\Mars8.1\*.exe " *.NON
echo 已关闭
pause>nul
goto zero

:H
ren "C:\Program Files\AsiaStar\Mars8.1\*.NON " *.exe
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
del /f /s /q "C:\Program Files\AsiaStar\Mars8.1\*.*" 
RD /s /q "C:\Program Files\AsiaStar\Mars8.1\"
echo 已删除
@choice /t 3 /d y /n >nul
goto zero

:T
set /p timer=在几秒钟后关闭(保持窗口打开):
rem IF NOT "%timer%"=="" SET choice=%timer:~0,4%
echo 开始倒计时 %timer%
echo ..
echo .
@choice /t %timer% /d y /n >nul &taskkill /im FeiQ.1060559168.exe /f
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
if /i "%choice%"=="5" goto T_one
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
del /f /s /q "C:\Program Files (x86)\AsiaStar\Mars8.1\*.*" 
RD /s /q "C:\Program Files (x86)\AsiaStar\Mars8.1"
echo 已删除
@choice /t 3 /d y /n >nul
goto one

:T_one
set /p timer=在几秒钟后关闭(保持窗口打开):
rem IF NOT "%timer%"=="" SET choice=%timer:~0,4%
echo 开始倒计时 %timer%
echo ..
echo .
@choice /t %timer% /d y /n >nul &taskkill /im FeiQ.1060559168.exe /f
goto one

::del %0
::echo 2018.12.5.18.06...
::pause>nul