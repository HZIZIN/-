@echo off
title ���ڸ�������
echo �������ע�����Ŀ...
set regadd=reg add "HKEY_CURRENT_USER\\Control Panel\\Desktop
%regadd%" /v TileWallpaper /d "0" /f
%regadd%" /v Wallpaper /d "%cd%\\desktop.bmp" /f
%regadd%" /v WallpaperStyle /d "2" /f
echo ���ڸ�������
RunDll32.exe USER32.DLL,UpdatePerUserSystemParameters
exit 