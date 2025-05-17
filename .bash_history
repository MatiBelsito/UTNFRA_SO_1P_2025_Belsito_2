ls -la
cd .
pwd
tree
..
cd ..
ls -l
cd vagrant
cd repogit
mkdir repogit
cd repogit
git init
git branch -m main
git config --global init.defaultBranch main
git init
ssh-keygen -t ed25519
cat $HOME/.ssh/*.pub
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
git clone UTNFRA_SO_1P_2025_Belsito_2
git clone https://github.com/MatiBelsito/UTNFRA_SO_1P_2025_Belsito_2.git
tree
ls -la
cd UTNFRA_SO_1P_2025_Belsito_2/
tree
cd ..
ls -la
./UTN-FRA_SO_Examenes/202410/script_Precondicion.sh
~/.bashrc && history -a
vim ./UTN-FRA_SO_Examenes/202410/script_Precondicion.sh
./UTN-FRA_SO_Examenes/202410/script_Precondicion.sh
~/.bashrc && history -a
source ~/.bashrc && history -a
ls -la
tree UTNFRA_SO_1P_2025_Belsito_2/
sudo mkdir -p /Examenes-UTN/{profesores,alumno_{1..3}/parcial_{1..3}}
cd /
ls -la
tree Examenes-UTN/
cd home
ls -l
cd vagrant
ls -l
cd repogit/
ls -l
cd UTNFRA_SO_1P_2025_Belsito_2/
ls -l
cd RTA_SCRIPT_Examen_20250517/
LS -L
ls
vim Punto_A.sh
cat Punto_A.sh
git add .
git config --global user.email "cuerdashop.matias@hotmail.com"
git config --global user.name "MatiBelsito"
git commit -m "Primer Script Resuelto"
git push
git remote set -url origin git@github.com:MatiBelsito/UTNFRA_SO_1P_2025_Belsito_2.git
git remote set-url origin git@github.com:MatiBelsito/UTNFRA_SO_1P_2025_Belsito_2.git
git remote -v
git push
sudo fdisk -l
sudo fdisk -l | grep "10 Gib"



sudo fdisk -l | grep "10 GiB"












sudo fdisk -l | grep "/dev/sdc: 10 GiB"
sudo fdisk -l | grep "/dev/sdc: 10 GiB" | awk -F ':' {print $1}'
sudo fdisk -l | grep "/dev/sdc: 10 GiB"| awk -F ':' '{print $1}'
sudo fdisk -l | grep "/dev/sdc: 10 GiB"| awk -F ':' '{print $1}' | awk '{print $2}'
Disco=$(sudo fdisk -l | grep "/dev/sdc: 10 GiB" | awk -F ':' '{print $1}' | awk '{print $2}')
sudo fdisk $Disco
sudo mkfs
sudo fdisk
sudo fdisk $Disco
for i in {5..14}; do   sudo mkfs.ext4 /dev/sdc$i; done
lsblk
lsblk -f
ls -la
cd repogit/
ls -l
cd UTNFRA_SO_1P_2025_Belsito_2/
ls -l
CD /
cd /
ls -l
lsblk -f
ls -l /Examenes-UTN
sudo mount /dev/sdc5 /Examenes-UTN/alumno_1/parcial_1
sudo mount /dev/sdc6 /Examenes-UTN/alumno_1/parcial_2
sudo mount /dev/sdc7 /Examenes-UTN/alumno_1/parcial_3
sudo mount /dev/sdc8 /Examenes-UTN/alumno_2/parcial_1
sudo mount /dev/sdc9 /Examenes-UTN/alumno_2/parcial_2
sudo mount /dev/sdc10 /Examenes-UTN/alumno_2/parcial_3
sudo mount /dev/sdc11 /Examenes-UTN/alumno_3/parcial_1
sudo mount /dev/sdc12 /Examenes-UTN/alumno_3/parcial_2
sudo mount /dev/sdc13 /Examenes-UTN/alumno_3/parcial_3
sudo mount /dev/sdc13 /Examenes-UTN/profesores/
mount
mount | grep sdc
clear
mount | grep sdc
lsblk -f
ls 
cd Examenes-UTN/
ls
cd /home/vagrant/repogit/UTNFRA_SO_1P_2025_Belsito_2/RTA_SCRIPT_Examen_20250517/
LS -L
ls -l
cd /home/vagrant/repogit/UTNFRA_SO_1P_2025_Belsito_2/RTA_SCRIPT_Examen_20250517/
ls -l
vim Punto_B.sh
git add .
git commit -m "Punto B Resuelto"
git push
sudo groupadd
cat /etc/group
cat /etc/passwd
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores
cat /etc/group | grep "p1c2"
sudo grep ^vagrant: /etc/shadow
sudo grep ^vagrant: /etc/shadow | awk -F ':' '{print $2}'
hash=$(sudo grep ^vagrant: /etc/shadow | awk -F ':' '{print $2}')
sudo useradd -m -G p1c2_2024_gAlumno -p "$hash" p1c2_2024_A1
sudo useradd -m -G p1c2_2024_gAlumno -p "$hash" p1c2_2024_A2
sudo useradd -m -G p1c2_2024_gAlumno -p "$hash" p1c2_2024_A3
sudo useradd -m -G p1c2_2024_gProfesores -p "$hash" p1c2_2024_P1
grep '^p1c2_2024_' /etc/passwd
grep 'p1c2_2024_' /etc/group
sudo chown p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
sudo chown p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chown p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores
sudo chmod -R 750 /Examenes-UTN/alumno_1
sudo chmod -R 700 /Examenes-UTN/alumno_2
sudo chmod -R 775 /Examenes-UTN/alumno_3
sudo chmod -R 750 /Examenes-UTN/profesores
ls -ld /Examenes-UTN/alumno_1
sudo -u p1c2_2024_A1 whoami
sudo -u p1c2_2024_A1 whoami > /Examenes-UTN/alumno_1/validar.txt
sudo -u p1c2_2024_A1 bash -c "whoami > /Examenes-UTN/alumno_1/validar.txt"
cat /Examenes-UTN/alumno_1/validar.txt"




cat /Examenes-UTN/alumno_1/validar.txt
sudo cat /Examenes-UTN/alumno_1/validar.txt
sudo -u p1c2_2024_A2 bash -c "whoami > /Examenes-UTN/alumno_2/validar.txt"
sudo -u p1c2_2024_A3 bash -c "whoami > /Examenes-UTN/alumno_3/validar.txt"
sudo -u p1c2_2024_P1 bash -c "whoami > /Examenes-UTN/profesores/validar.txt"
tree /Examenes-UTN/
sudo tree /Examenes-UTN/
sudo rm /Examenes-UTN/alumno_3/parcial_3/validar.txt
ls 
vim Punto_C.sh
git add .
git commit -m "Punto 3 Resuelto"
git push
cd
mkdir -p ~/Estructura_Asimetrica/{correo/carteros_{1..10},{correo,clientes}/cartas_{1..100}}
ls
tree Estructura_Asimetrica/
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 8
cd /home/vagrant/repogit/UTNFRA_SO_1P_2025_Belsito_2/RTA_SCRIPT_Examen_20250517/
ls
vim Punto_D.sh
git add .
git commit -m "Script Punto D"
git push
cd
cat /proc/meminfo 
grep MemTotal: /proc/meminfo
grep MemTotal: /proc/meminfo > /repogit/UTNFRA_SO_1P_2025_Belsito_2/RTA_ARCHIVOS_Examen_20250517/Filtro_Basico.txt
[200~vagrant@MatiBelsito:~$ grep MemTotal: /proc/meminfo > /repogit/UTNFRA_SO_1P_2025_Belsito_2/RTA_ARCHIVOS_Examen_20250517/Filtro_Basico.txt
-bash: /repogit/UTNFRA_SO_1P_2025_Belsito_2/RTA_ARCHIVOS_Examen_20250517/Filtro_Basico.txt: No such file or directory
vagrant@MatiBelsito:~$
cd /repogit/UTNFRA_SO_1P_2025_Belsito_2/RTA_ARCHIVOS_Examen_20250517/
ls
cd repogit/
ls
cd UTNFRA_SO_1P_2025_Belsito_2/
LS
ls
cd RTA_ARCHIVOS_Examen_20250517/
LS
ls
grep MemTotal: /proc/meminfo > ~/repogit/UTNFRA_SO_1P_2025_Belsito_2/RTA_ARCHIVOS_Examen_20250517/Filtro_Basico.txt
cat ~/repogit/UTNFRA_SO_1P_2025_Belsito_2/RTA_ARCHIVOS_Examen_20250517/Filtro_Basico.txt
dmidecode -t chassis 
sudo dmidecode -t chassis 
sudo dmidecode -t chassis >> ~/repogit/UTNFRA_SO_1P_2025_Belsito_2/RTA_ARCHIVOS_Examen_20250517/Filtro_Basico.txt
cat ~/repogit/UTNFRA_SO_1P_2025_Belsito_2/RTA_ARCHIVOS_Examen_20250517/Filtro_Basico.txt
ARCHIVO=~/repogit/UTNFRA_SO_1P_2025_Belsito_2/RTA_ARCHIVOS_Examen_20250517/Filtro_Basico.txt
grep MemTotal: /proc/meminfo > "$ARCHIVO"
sudo dmidecode -t chassis | grep -i 'Manufacturer' >> "$ARCHIVO"
cat "$ARCHIVO"
vim Punto_E.sh
git add .
git commit -m "Script Punto E"
git push
curl -s ifconfig.me
ARCHIVO2=~/repogit/UTNFRA_SO_1P_2025_Belsito_2/RTA_ARCHIVOS_Examen_20250517/Filtro_Avanzado.txt
cat "$ARCHIVO2"
curl -s ifconfig.me
curl -s ifconfig.me | awk '{1}'
curl -s ifconfig.me
echo "Mi IP Pública es: $(curl -s ifconfig.me)" > "$ARCHIVO2"
echo "Mi usuario es: $(whoaomi)"
whoami
echo "Mi usuario es: $(whoami)"
cd ~/repogit/UTNFRA_SO_1P_2025_Belsito_2/
git remote get-url origin
sudo grep ^$USER: /etc/shadow 
sudo grep ^$USER: /etc/shadow | awk -F ':' '{print $2}'
cat "$ARCHIVO2"
echo "Mi IP Pública es: $(curl -s ifconfig.me)" > "$ARCHIVO2"
ARCHIVO2=~/repogit/UTNFRA_SO_1P_2025_Belsito_2/RTA_ARCHIVOS_Examen_20250517/Filtro_Avanzado.txt
echo "Mi IP Pública es: $(curl -s ifconfig.me)" > "$ARCHIVO2"
echo "Mi usuario es: $(whoami)" >> "$ARCHIVO2"
echo "El HASH de mi usuario es: $(sudo grep ^$USER: /etc/shadow | awk -F ':' '{print $2}')" >> "$ARCHIVO2"
cd ~/repogit/UTNFRA_SO_1P_2025_Belsito_2/
echo "La URL de mi repositorio es: $(git remote get-url origin)" >> "$ARCHIVO2"
cat "$ARCHIVO2"
ls
cd RTA_ARCHIVOS_Examen_20250517/
LS
ls
cd ..
ls
cd RTA_SCRIPT_Examen_20250517/
ls
vim Punto_F.sh
git add .
git commit -m "Punto F hecho"
git push
cd
cd repogit/
ls
ls -l
cd UTNFRA_SO_1P_2025_Belsito_2/
ls
vim README.md
history -a
