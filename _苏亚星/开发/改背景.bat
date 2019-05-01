@echo off
title 正在更换桌面
echo 正在添加注册表项目...
set regadd=reg add "HKEY_CURRENT_USER\\Control Panel\\Desktop
%regadd%" /v TileWallpaper /d "0" /f
%regadd%" /v Wallpaper /d "%cd%\\desktop.bmp" /f
%regadd%" /v WallpaperStyle /d "2" /f
echo 正在更换桌面
RunDll32.exe USER32.DLL,UpdatePerUserSystemParameters
exit 