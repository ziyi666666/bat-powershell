#网段名称:取值范围0-5之间
#比如你到了第二个网段  把这个脚本程序放在第二个网段的任意机器上修改$net=2即可使用
echo "欢迎使用批量生成工具箱"
echo "Author by UNSG"
$net=0;
switch($net) {
    #第0个网段
            0 {
                #设置账户名
                $username="wh000";
                #设置默认密码  如需修改密码  直接将123456替换成你想要的密码即可  记得保留引号   
                $password='123456'
                #设置添加账户个数
                    $num=254
                    for($i=1;$i -le $num;$i++) {

                    net user  $username$i  $password   /add
	                    echo "$username 添加成功"
                   if($?) {
                                    
                                    echo "默认密码是$password"
                           }
                                            }
                 }
 #第1个网段         
           1 {
        
                    #设置账户名
                    $username="wh100";
                    #设置默认密码
                    $password='123456'
                    #设置添加账户个数
                        $num=254
                        for($i=1;$i -le $num;$i++) {

                        net user  $username$i  $password   /add
		                 echo "$username添加成功"

                        if($?) {
                       
                        echo "密码是$password"
                        }
                                                }
#第2个网段
            2 {
        
                    #设置账户名
                    $username="wh200"
                    #设置默认密码
                    $password='123456'
                    #设置添加账户个数
                        $num=254
                        for($i=1;$i -le $num;$i++) {

                        net user  $username$i  $password   /add
		  echo "$username添加成功"

                        if($?) {
                      
                        echo "密码是$password"
                        }
                                                }
            }
#第3个网段
           3 {
        
                    #设置账户名
                    $username="wh300";
                    #设置默认密码
                    $password='123456'
                    #设置添加账户个数
                        $num=254
                        for($i=1;$i -le $num;$i++) {

                        net user  $username$i  $password   /add

		echo "$username添加成功"
                        if($?) {
                        
                        echo "密码是$password"
                        }
                                                }
            }
#第4个网段
            4 {
        
                    #设置账户名
                    $username="wh400";
                    #设置默认密码
                    $password='123456'
                    #设置添加账户个数
                        $num=254
                        for($i=1;$i -le $num;$i++) {

                        net user  $username$i  $password   /add
		    echo "$username添加成功"

                        if($?) {
                    
                        echo "密码是$password"
                        }
                                                }            }
#第五个网段

            5 {
        
                    #设置账户名
                    $username="wh500";
                    #设置默认密码
                    $password='123456'
                    #设置添加账户个数
                        $num=254
                        for($i=1;$i -le $num;$i++) {

                        net user  $username$i  $password   /add
		                echo "$username添加成功"


                        if($?) {
                        
                        echo "密码是$password"
                                 }
                                                }
                 }
}

