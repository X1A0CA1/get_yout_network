#!/bin/bash
echo "请按任意键继续"
read anykey
#请按任意键继续
clear
#清屏
echo -e "\033[1;31m嘤嘤嘤. \033[0m"
sleep 0.1
echo -e "\033[1;31m嘤嘤嘤.. \033[0m"
sleep 0.5
echo -e "\033[1;31m嘤嘤嘤... \033[0m"
sleep 0.5
echo -e "\033[1;31m嘤嘤嘤.... \033[0m"
sleep 0.1
echo -e "\033[1;31m嘤嘤嘤..... \033[0m"
sleep 0.5
#凑数用的
mycount=0
#定义一个变量 名字叫mycount
while (( $mycount < 864000 ))
#如果这个东西小于864000则do.......
do

RET_204=` curl -m 1 -o /dev/null -s -w "%{http_code}" https://connect.rom.miui.com/generate_204`
while [ ! "$RET_204" == "204" ]
#给小米家的服务器发一个请求 这个服务器固定会返回204 如果你有网的情况下他返回的就是204 没网就是000
#定义一个变量 把http_code赋值给变量
#检测变量是否为204 不是则进行curl请求
#如果是则开始下一个循环 直到循环次数用光为之
    do 
    curl 'http://10.0.0.3/drcom/login?callback=dr1003&DDDDD=test2&upass=123&0MKKey=123456&R1=0&R3=0&R6=0&para=00&v6ip=&v=10338'
	RET_204=` curl -m 1 -o /dev/null -s -w "%{http_code}" https://connect.rom.miui.com/generate_204`
	echo "$RET_204"
	((i=864000-$mycount))
  ((mycount=$mycount+1))
clear
echo -e "\033[1;31m宝贝我发现你断网啦 \n已经帮你重连了"
done
done
