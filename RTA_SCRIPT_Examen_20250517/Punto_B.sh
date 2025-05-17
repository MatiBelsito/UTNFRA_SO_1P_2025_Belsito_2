#!/bin/bash



# sudo fdisk -l

#  sudo fdisk -l | grep "/dev/sdc: 10 GiB"| awk -F ':' '{print $1}'
#  sudo fdisk -l | grep "/dev/sdc: 10 GiB"| awk -F ':' '{print $1}' | awk '{print $2}'


Disco=$(sudo fdisk -l | grep "/dev/sdc: 10 GiB" | awk -F ':' '{print $1}' | awk '{print $2}')


sudo fdisk $Disco << EOF    #sudo fdisk /dev/sdc
n # nueva
e # extendida
1 # numero de particion
  # enter (defecto 2048)
  # enter de nuevo, todo el espacio disponible, que en este caso son 10G, porque puse +10G y me dijo que estaba fuera de rango.
n # solo me deja crear logicas, debe ser porque no hay mas espacio en el disco
  # enter para comenzar desde ese espacio
+1G # el tamaño de la particion logica.
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

 # termino con 2 enter en la ultima particion para que tome el espacio que queda
w


# Formateo las 10 particiones logicas en el sist. de archivos ext4
for i in {5..14}; do
  sudo mkfs.ext4 /dev/sdc$i
done

#lsblk -f # me muestra la informacion de los discos y el sistema de archivos (-f)


# Monto las particiones en las carpetas

sudo mount /dev/sdc5 /Examenes-UTN/alumno_1/parcial_1
sudo mount /dev/sdc6 /Examenes-UTN/alumno_1/parcial_2
sudo mount /dev/sdc7 /Examenes-UTN/alumno_1/parcial_3

sudo mount /dev/sdc8 /Examenes-UTN/alumno_2/parcial_1
sudo mount /dev/sdc9 /Examenes-UTN/alumno_2/parcial_2
sudo mount /dev/sdc10 /Examenes-UTN/alumno_2/parcial_3

sudo mount /dev/sdc11 /Examenes-UTN/alumno_3/parcial_1
sudo mount /dev/sdc12 /Examenes-UTN/alumno_3/parcial_2
sudo mount /dev/sdc13 /Examenes-UTN/alumno_3/parcial_3

sudo mount /dev/sdc14 /Examenes-UTN/profesores

chmod 755 "$0" # le doy permisos al script

mount | grep sdc # veo donde estan montadas las particiones

