@echo off
title 文萱BAT工具箱
mode con cols=100   lines=20
color 1c
echo ##############################################################################################
	echo 欢迎使用  文萱BAT工具箱 ！
	echo 警告: 使用本工具前请务必保存好您的重要数据，切记切记。人生苦短，做好备份
	echo   Powered By Wenxuan（文萱）  
	:menu
			echo 请输入1:强制重启资源管理器(资料总管[台湾])
			echo 请输入2:重置网络解决非网络故障引起无法上网的问题（需要使用管理员运行）
			echo 请输入3:重启操作系统(作业系统[台湾])
			echo 请输入字母q:退出BAT工具箱
echo ###############################################################################################
set /p  var=请输入相应的数字编号进行操作:
		if %var% equ 1   goto select1
		if %var% equ 2   goto select2 
		if %var% equ 3   goto select3 
		if %var% equ q   exit
:select1 
	echo 正在重启资源管理器  
	tskill explorer
	echo  "资源管理器重启完成"
	goto menu
:select2 
	echo 正在重置网络请稍候.....
	netsh winsock reset catalog  netsh int ipv4 reset reset.log  ipconfig /release ipconfig /renew
	echo 成功重置网络，您可能需要重启您的计算机。
	goto menu
:select3
	shutdown -r -t 05  -c  五秒后重启系统
	goto menu
pause
