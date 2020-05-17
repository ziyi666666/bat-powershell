REM  QBFC Project Options Begin
::  HasVersionInfo: No
REM  Companyname: 
REM  Productname: 
REM  Filedescription: 
REM  Copyrights: 
REM  Trademarks: 
REM  Originalname: 
REM  Comments: 
REM  Productversion:  0. 0. 0. 0
REM  Fileversion:  0. 0. 0. 0
REM  Internalname: 
REM  Appicon: C:\Users\UNSG\Desktop\bitbug_favicon.ico
REM  QBFC Project Options End

::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFC56fyO+GG6pDaET+NT55v6Ft0oiUuMpcYzU1PqHI+9z
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJjZk4aH0rQXA==
@echo off
title 系统工具箱
mode con  cols=100 lines=30
color b1
echo  欢迎使用 系统工具箱 For Windows  7/10 /Windows Server 版
echo  部分功能需要管理员的权限,请右键以管理员的身份运行本程序.
echo  Author by TUNSG(台湾.联合国秘书长----子奕)
echo  Version 3.5
echo  E-mail:lingxiao666@yahoo.com
echo  脸书(Facebook):wenjun666
echo ############################################


:menu
	echo  1).帮助
	echo  2).查看操作系统版本
	echo  3).查看系统用户在线情况
	echo  4).查看系统资源监视器
	echo  5).查看系统性能监视器
	echo  6).查看系统信息
	echo  7).查看事件管理器
	echo  8).重启资源管理器(管理员)
	echo  9).系统健康检查,系统镜像修复(管理员)
	echo  10).上网故障修复(管理员)
	echo  11).释放ip,及刷新DNS(管理员)
	echo  12).重置Microsoft Store(Windows 10)
	echo  13).还原及还原点设置向导
	echo  14).优化磁盘驱动器
	echo  15).备份或还原账户名,密码
	echo  16).磁盘清理
	echo  17).文件共享向导
	echo  18).打开任务计划程序
	echo  19).退出
echo ############################################

set  /p  number="请输入数字编号: "

	if  %number%==1   goto select1
	if  %number%==2   goto select2
	if  %number%==3   goto select3
	if  %number%==4   goto select4
	if  %number%==5   goto select5
	if  %number%==6   goto select6
	if  %number%==7   goto select7
	if  %number%==8   goto select8
	if  %number%==9   goto select9
	if  %number%==10  goto  select10
	if  %number%==11  goto  select11
	if  %number%==12  goto  select12
	if  %number%==11  goto  select13
	if  %number%==14  goto  select14 
	if  %number%==15  goto  select15
	if  %number%==16  goto  select16
	if  %number%==17  goto  select17
	if  %number%==18  goto  select18
	if  %number%==19  goto  select19

:select1
	cls
	goto menu
:select2
	ver
	echo=
	echo=
	goto menu
:select3
	query user
    echo=
    echo=
	goto menu
:select4
	resmon
	goto menu
:select5
	perfmon
	goto menu
:select6
	msinfo32
	goto menu
:select7
	eventvwr
	goto menu
:select8
	tskill explorer
	goto menu
:select9
	sfc /scannow
	dism.exe  /online  /cleanup-image  /restorehealth
:select10
	netsh winsock reset
	netsh int ipv4 reset> C:/catalog.txt
	goto menu
:select11
	ipconfig /release
	ipconfig /renew
	ipconfig /flushdns
	goto menu	
:select12
	wsreset
	goto menu
:select13
	rstrui
	goto menu
:select14
	dfrgui
	goto menu
:select15
	credwiz
	goto menu
:select16
	cleanmgr
	goto menu
:select17
	shrpubw
	goto menu
:select18
	taskschd.msc
	goto menu
:select19
	echo  感谢您的使用与支持,祝您工作愉快,顺心,再见!
	TIMEOUT /T 5 /NOBREAK
	exit		
pause>nul

