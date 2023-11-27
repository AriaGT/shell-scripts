#!/bin/bash

echo "Selecciona una opción:"
echo "1) Crear un directorio"
echo "2) Eliminar un directorio"
echo "3) Listar los archivos en el directorio actual"
echo "4) Cambiar al directorio principal"
echo "5) Cambiar al directorio anterior"
echo "6) Cambiar al directorio especificado"
echo "7) Mostrar el directorio actual"
echo "8) Cambiar el nombre de un directorio"
echo "9) Cambiar el propietario de un directorio"
echo "10) Salir"

while true; do
   read -p "Ingresa el número de la opción que deseas ejecutar: " opcion
   case $opcion in
       1)
           read -p "Ingresa el nombre del directorio que deseas crear: " nombre_directorio
           mkdir $nombre_directorio
           ;;
       2)
           read -p "Ingresa el nombre del directorio que deseas eliminar: " nombre_directorio
           rmdir $nombre_directorio
           ;;
       3)
           ls
           ;;
       4)
           cd /
           ;;
       5)
           cd -
           ;;
       6)
           read -p "Ingresa el directorio al que deseas cambiar: " directorio
           cd $directorio
           ;;
       7)
           pwd
           ;;
       8)
           read -p "Ingresa el nombre actual del directorio: " nombre_actual
           read -p "Ingresa el nuevo nombre del directorio: " nuevo_nombre
           mv $nombre_actual $nuevo_nombre
           ;;
       9)
           read -p "Ingresa el nombre del directorio: " nombre_directorio
           read -p "Ingresa el nuevo propietario: " nuevo_propietario
           chown $nuevo_propietario $nombre_directorio
           ;;
       10)
           exit
           ;;
       *)
           echo "Opción no válida"
           ;;
   esac
done
