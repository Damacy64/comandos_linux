#!/bin/bash
#shell-script con menu de comandos
clear
opcion=0
while [ $opcion -ne 61 ]; do
	echo -------inserte un numero, para ejecutar el comando indicado, [en caso de querer salir seleccione el numero 61]-------
	echo "1) comando pwd"
	echo "2) comando cd"
	echo "3) comando ls"
	echo "4) comando cat archivo.txt"
	echo "5) comando cp archivo.txt /home/damacy/Proyecto/carpeta"
	echo "6) comando mv"
	echo "7) comando mkdir prueba"
	echo "8) comando rmdir prueba"
	echo "9) comando rm archivo.txt"
	echo "10) comando touch archivo.txt"
	echo "11) comando sudo" 
	echo "12) comando head archivo.txt"
	echo "13) comando tail archivo.txt"
	echo "14) comando chmod"
	echo "15) comando jobs"
	echo "16) comando ping"
	echo "17) comando uname"
	echo "18) comando top"
	echo "19) comando history"
	echo "20) comando man"
	echo "21) comando echo"
	echo "22) comando hostname"
	echo "23) comando clear"
	echo "24) comando exit"
	echo "25) comando help"
	echo "26) comando tree"
	echo "27) comando who"
	echo "28) comando date"
	echo -------------------------enter para ver mas comandos---------------------
	read $enter
	echo "29) comando time"
	echo "30) comando uptime"
	echo "31) comando nano"
	echo "32) comando nvim"
	echo "33) comando gedit"
	echo "34) comando ls -l"
	echo "35) comando ls -a"
	echo "36) comando ps"
	echo "37) comando shutdown -h now"
	echo "38) comando init 0"
	echo "39) comando telinit 0"
	echo "40) comando halt"
	echo "41) comando shutdown -h 1"
	echo "42) comando shutdown -c"
	echo "43) comando shutdown -r now"
	echo "44) comando locate comandos.sh"
	echo "45) comando cd .."
	echo "46) comando cd/user"
	echo "47) comando cd ~"
	echo "48) comando firefox"
	echo "49) comando git --version"
	echo "50) comando sudo apt install"
	echo "51) comando nvim -version"
	echo "52) comando sudo su"
	echo "53) comando ls -R"
	echo "54) comando htop"
	echo "55) comando pacman"
	echo "56) comando python3 -V"
	echo "57) comando python3"
	echo "58) comando df"
	echo "59) comando grep ls comandos.sh"
	echo "60) comando basename /home/damacy/Proyecto/archivo.txt"
	echo "61) salir del programa"
	echo -----------------seleccione una opcion--------------------
	read opcion
	
	case $opcion in
		1)
			clear
			echo este comando nos muestra la ruta que sigue para llegar a nuestra posicion actual
			echo presione enter para ejecutar el comando
			read $enter
			echo el directorio actual es:
			echo
			pwd 
			read $enter
			clear;;
		2)
			clear
			echo este comando nos cambia de directorio, recibe como argumento el directorio al que queremos ir
			echo presione enter para ejecutar el comando
			read $enter
			echo el directorio actual es:
			echo
			pwd
			cd carpeta/
			echo
			echo una vez ejecutado el comando la ubicacion actual es:
			echo
			pwd
			cd ..
			read $enter
			clear;;
		3)
			clear
			echo este comando nos muestra los archivos y directorios que hay en el directorio actual
			echo presione enter para ejecutar el comando
			read $enter
			ls
			read $enter
			clear;;
		4)
			clear
			echo este comando nos muestra lo que contiene cierto archivo, recibe como argumento el archivo
			echo presione enter para ejecutar el comando
			read $enter
			cat archivo.txt
			read $enter
			clear;;
		5)
			clear
			echo este comando nos copia un archivo y lo pega en un directorio nuevo
			echo presione enter para ejecutar el comando
			read $enter
			cp archivo.txt /home/damacy/Proyecto/carpeta
			cd carpeta/
			echo el archivo copiado fue archivo.txt y se copio con exito en el directorio carpeta
			echo
			ls
			rm archivo.txt
			read $enter
			clear;;
		6)
			clear
			echo este comando mueve un archivo a otro directorio
			echo presione enter para ejecutar el comando
			read $enter
			echo archivo.txt dentro de la carpeta actual:
			echo
			ls
			mv archivo.txt carpeta/
			cd carpeta/
			echo nos movemos a la carpeta que se envio el archivo, y ejecutamos ls:
			echo
			ls
			cd ../
			echo regresamos a la carpeta base, y corroboramos que el archivo ya no esta en su antiguo lugar
			echo
			ls
			cd carpeta/
			mv archivo.txt ../
			read $enter
			clear;;
		7)
			clear
			echo este comando crea un directorio, recibe como argumento el nombre del directorio
			echo presione enter para ejecutar el comando
			read $enter
			echo aun no existe el directorio prueba:
			echo
			ls
			mkdir prueba
			echo
			echo directorio prueba creado con existo:
			echo
			ls
			rmdir prueba
			read $enter
			clear;;
		8)
			clear
			echo este comando elimina un directorio, recibe como argumento el directorio a eliminar
			echo presione enter para ejecutar el comando
			read $enter
			mkdir prueba
			echo carpeta prueba existente:
			echo
			ls
			rmdir prueba
			echo
			echo carpeta prueba eliminada con exito:
			echo
			ls
			read $enter
			clear;;
		9)
			clear
			echo este comando elimina un fichero, recibe como argumento el fichero que se eliminar
			echo presione enter para ejecutar el comando
			read $enter
			echo fichero existente:
			echo
			ls
			rm archivo.txt
			echo
			echo fichero eliminado con existo:
			echo
			ls
			touch archivo.txt
			read $enter
			clear;;
		10)
			clear
			echo este comando crea un archivo, recibe como parametro el nombre del archivo
			echo presione enter para ejecutar el comando
			read $enter
			rm archivo.txt
			echo directorio sin el archivo:
			echo
			ls
			echo
			touch archivo.txt
			echo creacion del archivo:
			echo
			ls
			read $enter
			clear;;
		11)
			clear
			echo este comando nos permite ejecutar comandos como otro usuario debe de ir acompañado de otro comando
			echo lo siguiente es la ayuda del comando, enter para ejecutar el comando
			read $enter
			sudo -h
			read $enter
			clear;;
		12)
			clear
			echo este comando nos muestra las primeras 10 lineas de un archivo de texto
			echo enter para ejecutar el comando
			read $enter
			head archivo.txt
			read $enter
			clear;;
		13)
			clear
			echo este comando nos muestra las ultimas 10 lineas de un archivo de texto
			echo enter para ejecutar el comando
			read $enter
			tail archivo.txt
			read $enter
			clear;;
		14)
			clear
			echo este comando nos permite cambiar las propiedades que tienen los archivos, debe usarse con precaucion
			echo enter para ejecutar el comando
			read $enter
			echo podemos ver que el fichero [archivo.txt] tiene propiedades de lectura y escritura
			ls -l
			echo
			echo ahora solo le daremos permiso de lectura con el comando chmod
			echo
			chmod 444 archivo.txt
			ls -l
			chmod 664 archivo.txt
			read $enter
			clear;;
		15)
			clear
			echo este comando nos muestra los trabajos que se estan ejecutando en la computadora
			echo enter para ejecutar el comando
			read $enter
			echo en caso de no haber trabajos, no mostrara nada
			jobs
			read $enter
			clear;;
		16)
			clear
			echo "este comando envía un pequeño paquete de datos al sistema de destino indicado (dominio o IP)
y evalúa el tiempo que transcurre hasta que se registra una respuesta."
			echo enter para ejecutar el comando
			read $enter
			ping localhost -c 5
			read $enter
			clear;;
		17)
			clear
			echo este comando nos imprima la informacion del kernel
			echo enter para ejecutar el comando
			read $enter
			uname
			read $enter
			clear;;
		18)
			clear
			echo este comando mostrará una lista de los procesos en ejecución y la cantidad de CPU que utiliza cada proceso.
			echo para salir de top es necesario presionar ctrl + c
			echo enter para ejecutar el comando
			read $enter
			top
			clear;;
		19)
			clear
			echo este comando nos muestra un historial de todos los comando que hemos ocupado en el shell
			echo enter para ejecutar el comando
			read $enter
			history
			read $enter
			clear;;
		20)
			clear
			echo este comando nos abre el manual del comando que pasemos como argumento
			echo enter para ejecutar el comando
			read $enter
			man man
			clear;;
		21)
			clear
			echo este comando nos permite mandar a imprimir un texto
			echo enter para ejecutar el comando
			read $enter
			echo mensaje enviado con el comando echo
			read $enter
			clear;;
		22)
			clear
			echo este comando nos muestra el provedor de nuestra red, si le pasamos como argumento -i nos da la direccion IP
			echo enter para ejecutar el comando
			read $enter
			hostname
			hostname -i
			read $enter
			clear;;
		23)
			echo este comando nos limpia la pantalla de la terminal
			echo enter para ejecutar el comando
			read $enter
			clear
			echo la pantalla se limpio con exito
			read $enter
			clear;;
		24)
			clear
			echo este comando nos sacara de la terminal, por lo cual una vez ejecutado debera volver a iniciar el programa
			echo enter para ejecutar el comando
			read $enter
			exit;;
		25)
			clear
			echo este comando nos muestra un listado de comandos que tiene el sistema, tampien se puede pasar como argumento
			echo a un comando quedando como ls -help
			echo enter para ejecutar el comando
			read $enter
			help
			read $enter
			clear;;
		26)
			clear
			echo este comando nos muestra los archivos y directorios de manera mas graficas, funciona como un ls
			echo enter para ejecutar el comando
			read $enter
			tree
			read $enter
			clear;;
		27)
			clear
			echo este comando muestra información sobre los usuarios activos en ese momento en el sistema
			echo enter para ejecutar el comando
			read $enter
			who
			read $enter
			clear;;
		28)
			clear
			echo este comando nos muestra la fecha del sistema
			echo enter para ejecutar el comando
			read $enter
			date
			read $enter
			clear;;
		29)
			clear
			echo este comando nos da el tiempo en que se ejecuta un comando
			echo "Real: se refiere al tiempo transcurrido entre la ejecución y la finalización del proceso.
User: es la cantidad de tiempo de CPU gastado en código de modo usuario (fuera del núcleo) durante la ejecución del proceso.
Sys: es la cantidad de tiempo de CPU que transcurre en el núcleo al ejecutar el proceso."
			echo enter para ejecutar el comando
			read $enter
			time
			read $enter
			clear;;
		30)
			clear
			echo este comando muestra el tiempo de ejecucion del sistema
			echo enter para ejecutar el comando
			read $enter
			uptime
			read $enter
			clear;;
		31)
			clear
			echo este comando nos abre el editor de texto nano, para poder salir presionar ctrl + x
			echo enter para ejecutar el comando
			read $enter
			nano
			clear;;
		32)
			clear
			echo este comando nos abre el editor de texto neovim, para salir presionar :q
			echo enter para ejecutar el comando
			read $enter
			nvim
			clear;;
		33)
			clear
			echo este comando nos abre el editor de texto gedit, el cual usa una interfaz grafica
			echo enter para ejecutar el comando
			read $enter
			gedit
			clear;;
		34)
			clear
			echo este comando nos muestra los archivos que hay en el directorio y con el argumento -l
			echo nos muestra los permisos que contiene cada uno de los archivos
			echo enter para ejecutar el comando
			read $enter
			ls -l
			read $enter
			clear;;
		35)
			clear
			echo este comando nos muestra los archivos que hay en el directorio y con el argumento -a
			echo nos muestra los archivos ocultos que contiene cada uno de los archivos
			echo enter para ejecutar el comando
			read $enter
			ls -a
			read $enter
			clear;;
		36)
			clear
			echo este comando nos muestra los procesos activos que hay en el sistema
			echo enter para ejecutar el comando
			read $enter
			ps
			read $enter
			clear;;
		37)
			clear
			echo este comando apaga la computadora en el instante en el que se ejecuta
			echo por lo cual si selecciona este comando, la computadora procedera a apagarse
			echo enter para ejecutar el comando
			read $enter
			shutdown -h now;;
		38)
			clear
			echo este comando apaga la computadora al hacer que init pase a 0
			echo por lo cual si selecciona este comando, la computadora procedera a apagarse
			echo enter para ejecutar el comando
			read $enter
			init 0;;
		39)
			clear
			echo este comando apaga la computadora, funciona al igual que init 0
			echo por lo cual si seleccionamos este comando, la computadora procedera a apagarse
			echo enter para ejecutarse el comando
			read $enter
			telinit 0;;
		40)
			clear
			echo este comando apaga la computadora, hace que el hardware detenga todo su funcionamiento
			echo por lo cual si seleccionamos este comando, la computadora procedera a apagarse
			echo enter para ejecutarse el comando
			read $enter
			halt;;
		41)
			clear
			echo este comando apaga la computadora, pero esperara un 1min antes de apagarla
			echo por lo cual si seleccionamos este comando, la computadora procedera a apagarse
			echo enter para ejecutar el comando
			read $enter
			shutdown -h 1;;
		42)
			clear
			echo este comando nos sirve para cancelar un apagado programado, en caso de no haber un apagado programado
			echo no mostrara nada
			echo enter para ejecutar el comando
			read $enter
			shutdown -h 5
			read $enter
			shutdown -c
			echo apagado cancelado con exito
			read $enter
			clear;;
		43)
			clear
			echo este comando reinicia la computadora
			echo al ejecutar el comando se apagara la computadora, para proceder a encenderse en automatico
			echo enter para ejecutar el comando
			read $enter
			shutdown -r now;;
		44)
			clear
			echo este comando localiza un archivo, recibe como argumento el archivo a buscar
			echo enter para ejecutar el comando
			read $enter
			locate comandos.sh
			read $enter
			clear;;
		45)
			clear
			echo este comando nos regresa un directorio atras, del directorio en el que estamos
			echo enter para ejecutar el comando
			read $enter
			echo directorio original:
			pwd
			echo
			echo directorio actual:
			cd ..
			pwd
			cd Proyecto/
			read $enter
			clear;;
		46)
			clear
			echo este comando ingresa al directorio del usuario que le pasemos como argumento
			echo enter para ejecutar el comando
			read $enter
			cd ..
			cd ..
			echo ubicacion original:
			pwd
			echo
			cd damacy
			echo ubicacion despues del comando:
			pwd
			read $enter
			clear;;
		47)
			clear
			echo este comando nos regresa a la carpeta original del usuario
			echo enter para ejecutar el comando
			read $enter
			echo ubicacion original:
			pwd
			echo
			echo ubicacion despues del comando cd ~
			cd ~
			pwd
			read $enter
			clear;;
		48)
			clear
			echo este comando nos abre el navegador de firefox
			echo enter para ejecutar el comando
			read $enter
			firefox
			echo abriendo navegador...
			clear;;
		49)
			clear
			echo este comando nos dice la version de git que tengamos instalada en la computadora
			echo enter para ejecutar el comando
			read $enter
			git --version
			read $enter
			clear;;
		50)
			clear
			echo este comando nos actualiza nuestro packague control, el cual es apt, una vez ejecutado pide la contraseña de usuario
			echo enter para ejecutar el comando
			read $enter
			sudo apt install
			read $enter
			clear;;
		51)
			clear
			echo este comando nos dice la version del editor de texto neovim
			echo enter para ejecutar comando
			read $enter
			nvim -version
			read $enter
			clear;;
		52)
			clear
			echo este comando nos convierte en usuarios root, para salir de este modo ingresar el comando exit
			echo enter para ejecutar el comando
			read $enter
			sudo su;;
		53)
			clear
			echo este comando ejecuta el comando ls en cada carpeta y subcarpeta del directorio actual, de manera recursiva
			echo enter para ejecutar el comando
			read $enter
			ls -R
			read $enter
			clear;;
		54)
			clear
			echo este comando es similar a top, pero ofrece una interfas grafica, para salir de clic en la opcion quit o F10
			echo enter para ejecutar el comando
			read $enter
			htop;;
		55)
			clear
			echo este comando nos abre el clasico juego de pacman
			echo enter para ejecutar el comando
			read $enter
			pacman;;
		56)
			clear
			echo este comando nos da la version que tengamos instalada de python3
			echo enter para ejecutar el comando
			read $enter
			python3 -V
			read $enter
			clear;;
		57)
			clear
			echo "este comando nos abre la terminal de python, desde la que podemos programar, para salir ejecute el comando exit()"
			echo enter para ejecutar el comando
			read $enter
			python3;;
		58)
			clear
			echo este comando nos da un informe sobre el uso del disco en el sistema
			echo enter para ejecutar el comando
			read $enter
			df
			read $enter
			clear;;
		59)
			clear
			echo este comando nos filtra la salida en pantalla, y nos muestra las veces que aparece la palabra ls en un archivo remarcandola en un color
			echo enter para ejecutar el comando
			read $enter
			grep ls comandos.sh
			read $enter
			clear;;
		60)
			clear
			echo este comando nos muestra el nombre del archivo sin la ruta, recibe como parametro la ruta del archivo o solo el archivo
			echo enter para ejecutar el comando
			read $enter
			echo la ruta que se ha pasado es la siguiente /home/damacy/Proyecto/archivo.txt
			basename /home/damacy/Proyecto/archivo.txt
			read $enter
			clear;;
		61)
			clear
			opcion=61;;
		*)
			echo *****************opcion no valida*****************
			opcion=0;;
	esac

done
