#!/bin/bash


# cat /etc/group # veo los grupos existentes
# cat /etc/passwd # veo los usuarios existentes




# Extraigo el hash de la contraseña de 'vagrant'
hash=$(sudo grep ^vagrant: /etc/shadow | awk -F ':' '{print $2}')

# Creo los grupos
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

# Creo los usuarios con los grupos secundarios y ese hash de contraseña
sudo useradd -m -G p1c2_2024_gAlumno -p "$hash" p1c2_2024_A1
sudo useradd -m -G p1c2_2024_gAlumno -p "$hash" p1c2_2024_A2
sudo useradd -m -G p1c2_2024_gAlumno -p "$hash" p1c2_2024_A3
sudo useradd -m -G p1c2_2024_gProfesores -p "$hash" p1c2_2024_P1

echo "Usuarios y grupos creados correctamente."

echo
echo "Usuarios creados:"
grep '^p1c2_2024_' /etc/passwd

echo
echo "Grupos creados:"
grep 'p1c2_2024_' /etc/group

# Cambio propietarios y grupos # sudo chown dueño:grupo ruta_carpeta

sudo chown p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
sudo chown p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chown p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores

# Permisos

sudo chmod -R 750 /Examenes-UTN/alumno_1
sudo chmod -R 700 /Examenes-UTN/alumno_2
sudo chmod -R 775 /Examenes-UTN/alumno_3
sudo chmod -R 750 /Examenes-UTN/profesores

echo
echo "Dueños y Permisos de los Directorios: "
echo

ls -ld /Examenes-UTN/alumno_1 # veo dueño, grupos y permisos del directorio
ls -ld /Examenes-UTN/alumno_2
ls -ld /Examenes-UTN/alumno_3
ls -ld /Examenes-UTN/profesores

# Creo el Archivo validar.txt para  cada usuario

sudo -u p1c2_2024_A1 bash -c "whoami > /Examenes-UTN/alumno_1/validar.txt" # agrego  bash -c " y todo el redireccionamiento entre comillas para que cree el archivo ese usuario"
sudo -u p1c2_2024_A2 bash -c "whoami > /Examenes-UTN/alumno_2/validar.txt"
sudo -u p1c2_2024_A3 bash -c "whoami > /Examenes-UTN/alumno_3/validar.txt"
sudo -u p1c2_2024_P1 bash -c "whoami > /Examenes-UTN/profesores/validar.txt"

# Muestro que se crearon los archivos
sudo tree /Examenes-UTN/

chmod 755 "$0" # le doy permisos al script

