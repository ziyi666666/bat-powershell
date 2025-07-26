@echo off
::setlocal enabledelayedexpansion

:menu
cls
echo ----------------------------
echo         主菜单
echo ----------------------------
echo 1. 显示系统日期和时间
echo 2. 列出当前目录文件
echo 3. 显示系统信息
echo 4. 退出
echo ----------------------------
set /p choice="请选择操作 [1-4]: "

if "%choice%"=="1" goto :datetime
if "%choice%"=="2" goto :listfiles
if "%choice%"=="3" goto :systeminfo
if "%choice%"=="4" goto :exit

echo 无效选项，请重新输入！
timeout /t 2 >nul
goto :menu

:datetime
echo 当前日期和时间：%date% %time%
pause
goto :menu

:listfiles
echo 当前目录文件列表：
dir /b
pause
goto :menu

:systeminfo
systeminfo | findstr /B /C:"OS 名称" /C:"系统类型"
systeminfo |findstr /i "内存"
pause
goto :menu

:exit
echo 正在退出...
timeout /t 1 >nul
exit