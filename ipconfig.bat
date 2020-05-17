@ECHO OFF
REM  QBFC Project Options Begin
REM  HasVersionInfo: Yes
REM  Companyname: 联合国
REM  Productname: 网络配置工具箱
REM  Filedescription: nmtui
REM  Copyrights: 
REM  Trademarks: 
REM  Originalname: 
REM  Comments: 
REM  Productversion:  0. 0. 0. 0
REM  Fileversion:  0. 0. 0. 0
REM  Internalname: 
REM  Appicon: bitbug_favicon.ico
REM  AdministratorManifest: Yes
REM  QBFC Project Options End
@ECHO ON
@echo off
title ip配置工具
color a4
mode con  cols=80 lines=40
echo  欢迎使用网络配置工具
echo Author by ziyi(UNSG)
echo E-mail:lingxiao666@yahoo.com
set /p type="请输入正确的网络类型:[本地连接,以太网,WLAN]:"
set /p ip="请输入ip地址: "

set /p  netmask="请输入子网掩码: "

set /p gateway="请输入网关: "
set /p dns_p="请输入正确的主dns地址:"
set /p dns_s="请输入正确的备dns地址:"

netsh interface ip  set  address  %type%  static   %ip%  %netmask%   %gateway%
netsh interface ip set dns  %type%  static   %dns_p% register=PRIMARY  validate=no
netsh interface ip add dns %type%  %dns_s%  validate=no
if "%errorlevel%"=="0" (echo 地址配置成功) else (echo 地址配置失败) 
TIMEOUT /T 5 /NOBREAK
exit
pause>nul
