# canalkey
Keylogger linux - 键盘记录器 linux

#Autor: Adrian Ledesma Bello
#Link: https://www.canalhacker.com


##################### ESPAÑOL
# No me hago responsable por el uso de esta herramienta.

Este keylogger usa la herramienta "showkey", se ejecuta en la máquina víctima y comienza a
enviar peticiones con el comando curl hacia nuestro servidor.
En la url de las peticiones añado la información obtenida del keylogger codificada en base64.
El archivo output.sh decodificará la información enviada por las peticiones a texto claro.
Para modificar el estado del keylogger, añadir al archivo <state> uno de los siguientes contenidos <active/inactive/kill>

	active: El keylogger enviará cada cierto tiempo información a cerca de lo que se escribe en la máquina víctima.
	inactive: El keylogger no recogerá ningun dato, simplemente estará verificando el contenido del archivo
	<state> alojado en nuestro servidor.
	kill: El archivo se eliminará de la maquina victima y se detendrá su ejecución.

El archivo <delkeylog.sh> añadirá el estado de "kill" al archivo <state>, despues de 30 segundos eliminará el
directorio <server_$port>.

##################### ENGLISH
# I'm not responsible for the use of this tool

This keylogger uses the <showkey> tool, runs on the victim machine and starts sending requests with the curl
command to our server.
In the url of the requests, i add the information obtained from the keylogger, encoded in base64.
The output.sh file will decode the information in plain text.
To modify the status of the keylogger, add one of the following contents <active/inative/kill> to the <state> file.

	active: The keylogger will send information from time to time about each key pressed in the victim machine.
	inactive: The keylogger will not collect any data, will simply be verifying the content of the <state> file of our server.
	kill: The file will be delete from the victim machine and its execution will be stopped.

The <delkeylog.sh> file will add the status of "kill" to the <state> file, after 30 seconds it will delete
the <server_$port> directory.

##################### 中文
# 我不负责什么用这个工具

键盘记录器用《showkey》的工具，在电脑的受害者会运行然后送我数据通过命令《curl》 到我们的服务器。
在网址，我添加了提供信息从键盘记录器base64编码，output.sh文件会解码信息从要求。
如果你要变化键盘记录器的状态，就添加《active/inactive/kill》到《state》文件。

	active：键盘记录器会送我每个段时候信息从电脑的受害者
	inactive：键盘记录器不会提供信息，只会验证在我们的服务器《state》文件
	kill： 在电脑的受害者删除键盘记录器文件然后将停止程序执行

delkeylog.sh文件将添加kill状态到《state》文件，三十秒后《server_$port》目录将是删除。
