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
	echo "43) comando shutdown -r"
	echo "44) comando logout"
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
	echo "59) comando grep ls Proyecto/comandos.sh"
	echo "60) comando uname"
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
			;;
		22)
			;;
		23)
			;;
		24)
			;;
		25)
			;;
		26)
			;;
		27)
			;;
		28)
			;;
		29)
			;;
		30)
			;;
		31)
			;;
		32)
			;;
		33)
			;;
		34)
			;;
		35)
			;;
		36)
			;;
		37)
			;;
		38)
			;;
		39)
			;;
		40)
			;;
		41)
			;;
		42)
			;;
		43)
			;;
		44)
			;;
		45)
			;;
		47)
			;;
		48)
			;;
		49)
			;;
		50)
			;;
		51)
			;;
		52)
			;;
		53)
			;;
		54)
			;;
		55)
			;;
		56)
			;;
		57)
			;;
		58)
			;;
		59)
			;;
		60)
			;;
		61)
			clear
			opcion=61;;
		*)
			echo *****************opcion no valida*****************
			opcion=0;;
	esac

done
