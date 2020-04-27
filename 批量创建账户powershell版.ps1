write-host "欢迎使用批量生成工具箱"
write-host "Author by UNSG"
$username=read-host "请设定账户名前缀[比如wh000,wh100,wh200,wh300,wh400,wh500....]"
$password=read-host  "请设定账户密码[牢记您的密码喔]"  -as Securestring
$num=read-host "请输入添加账户的个数[1-254]"
for($i=1;$i -le $num;$i++) {
 #拼接字符串
  $user="$username"+"$i"
#添加账户,导入密码
new-localuser -name "$user"  -password $password -fullname "$user"  -description "$user"                   
                               }
              
                    
 