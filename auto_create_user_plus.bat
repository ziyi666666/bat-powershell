@echo off
Title Auto_Create_Users
color a1
echo  欢迎使用 一键批量处理  工具箱
echo  Author by UNSG(台湾.联合国秘书长)
echo  Version:2.3.5.1
echo  E-mail:lingxiao666@yahoo.com
::开启延迟环境变量  
Setlocal enabledelayedexpansion
::添加账户前缀
set /p  name="请设定账户名前缀[比如wh000,wh100,wh200,wh300,wh400,wh500....]:"
set /p  password="请设定账户密码[牢记您的密码喔]:" 
::添加账户的个数
set  /p  num="请输入要添加用户的个数[比如:200]:"

for /L %%i in (1,1,%num%) do  (
::拼接字符串
set  account=%name%%%i
::执行添加用户
net user  !account!   %password%   /add
::如果命令的执行状态为真  则 添加成功,反之添加失败. 等同于  ps和shell的$?
if "%errorlevel%"=="0"   (echo !account!添加成功)  else (echo !account!添加失败)
)

TIMEOUT /T 5 /NOBREAK
exit
pause>nul 

