write-host "系统工具箱 ps版"
write-host "Version 3.0"
write-host "作者:联合国秘书长"
function   menu ()  {
    write-host  "1).help"
    write-host  "2).show system's version"
    write-host  "3).show user's online"
    write-host  "4).show system's resmon"
    write-host  "5).show system's perfmon"
    write-host  "6).show system's events(logs)"
    write-host  "7).show local machine's network information"
    write-host  "8).show powershell's version"
    write-host  "9).show process's  information "
    write-host  "10).quit"
}
menu
while ($true) {

          while ($true)  {
                $script:number=read-host "please input the number"
                    if($number) {
                        break;
                    }else {
                        write-host "error,please retry"
                        $number=read-host "please input the number"
                    }
            
           }
switch($number) {
        1 {  
               cls
               menu
           }
        2 {
               winver
        }
        3 {
               query user
        }
        4 {
               resmon
        }
        5 {
               perfmon
        }
        6 {
               eventvwr
        }
        7 {
               get-netipconfiguration -detailed
        }

        8 {
               $psversiontable
        }
        9 {
               ps
        }
        10 {       
               exit
        }
    }
    }