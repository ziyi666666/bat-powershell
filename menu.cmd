@echo off
::setlocal enabledelayedexpansion

:menu
cls
echo ----------------------------
echo         ���˵�
echo ----------------------------
echo 1. ��ʾϵͳ���ں�ʱ��
echo 2. �г���ǰĿ¼�ļ�
echo 3. ��ʾϵͳ��Ϣ
echo 4. �˳�
echo ----------------------------
set /p choice="��ѡ����� [1-4]: "

if "%choice%"=="1" goto :datetime
if "%choice%"=="2" goto :listfiles
if "%choice%"=="3" goto :systeminfo
if "%choice%"=="4" goto :exit

echo ��Чѡ����������룡
timeout /t 2 >nul
goto :menu

:datetime
echo ��ǰ���ں�ʱ�䣺%date% %time%
pause
goto :menu

:listfiles
echo ��ǰĿ¼�ļ��б�
dir /b
pause
goto :menu

:systeminfo
systeminfo | findstr /B /C:"OS ����" /C:"ϵͳ����"
systeminfo |findstr /i "�ڴ�"
pause
goto :menu

:exit
echo �����˳�...
timeout /t 1 >nul
exit