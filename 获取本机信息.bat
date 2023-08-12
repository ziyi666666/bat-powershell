@echo   off

title cmd运行powershell指令

powershell  -c  "echo 本机ip是: (get-netipconfiguration -interfacealias "以太网").ipv4address.ipaddress;echo 您的操作系统版本是:;wmic os  get caption;echo 当前登录主机账户名:;[environment]::UserName;echo 当前主机名:;[environment]::machinename;echo 当前主机磁盘使用情况:;get-volume"



pause>null
