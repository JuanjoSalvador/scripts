#!/bin/bash

#EJECUTAR SIEMPRE COMO ROOT
#Puedes modificarlo a tu gusto, en principio salvaguarda el directorio /home
#Por defecto, almacena las copias de seguridad en carpetas
#con la fecha en que se crearon.


#Ruta donde se efecturarán las copias de seguridad (debes modificarla)
ruta="/media/usb0/Seguridad/$(date +%F)"
mkdir $ruta

#Directorios a copiar
copia="/home/juanjo/*"
cp -r $copia $ruta

#Realizando copia
echo "Creando copia de seguridad de " $copia"..."

#Apagado tras completar la copia
echo "COPIA COMPLETADA. ¿Apagar el equipo? (S/N)"
read apagar
case $apagar in
  S )
echo "Apagando..."
	;;
	N )
echo "Apagado cancelado"
	;;
esac
