echo  欢迎使用批量删除账户 工具箱
echo Author by UNSG
#这是账户名
#网段命名wh000,wh100,wh200,wh300,wh400,wh500  分别表示0-5 个网段 所以根据你实际需要替换如下值就可以,记得保留引号.
$username="wh200"
#这是已经存在的账户个数  
$num=254

for($i=1;$i -le $num;$i++) {

net user  $username$i   /del
if ($?)
    {
    
        echo "$username$i 删除成功"
    
     }else {
        echo $username$i 删除失败
            }
    }