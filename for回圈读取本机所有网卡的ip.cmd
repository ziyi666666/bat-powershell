@echo off

for /f  "tokens=16"  %%i  in ('ipconfig^|findstr  /i  "ipv4"')    do  ( echo  本机的ip是:%%i )


pause>nul