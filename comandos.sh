#!/bin/bash
#shell-script con menu de comandos
clear
opcion=0
while [ $opcion -ne 61 ]; do
	echo inserte un numero, para ejecutar el comando indicado, en caso de querer salir seleccione el numero 61
	echo "1) comando pwd"
	echo "2) comando cd"
	echo "3) comando ls"
	echo "4) comando cat"
	echo "5) comando cp"
	echo "6) comando mv"
	echo "7) comando mkdir"
	echo "8) comando rmdir"
	echo "9) comando rm"
	echo "10) comando touch"
	echo "11) comando sudo" 
	echo "12) comando head misdatos.sh"
	echo "13) comando tail misdatos.sh"
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
	sleep 2
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
	echo seleccione una opcion
	read opcion
	
	case $opcion in
		1)
			clear
			echo este comando nos muestra la ruta que sigue para llegar a nuestra posicion actual
			echo presione enter para ejecutar el comando
			read
			pwd 
			sleep 5;;
		2)
			clear
			echo este comando nos cambia de directorio, recibe como argumento el directorio al que queremos ir
			echo presione enter para ejecutar el comando
			read
			cd Proyecto/
			sleep 5;;
		61)
			clear
			opcion=61;;
		*)
			echo opcion no valida
			opcion=0;;
	esac

done
