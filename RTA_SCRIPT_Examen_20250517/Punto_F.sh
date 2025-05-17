#!/bin/bash

# Ruta del archivo
ARCHIVO2=~/repogit/UTNFRA_SO_1P_2025_Belsito_2/RTA_ARCHIVOS_Examen_20250517/Filtro_Avanzado.txt



echo "Mi IP Pública es: $(curl -s ifconfig.me)" > "$ARCHIVO2"
echo "Mi usuario es: $(whoami)" >> "$ARCHIVO2"
echo "El HASH de mi usuario es: $(sudo grep ^$USER: /etc/shadow | awk -F ':' '{print $2}')" >> "$ARCHIVO2"
cd ~/repogit/UTNFRA_SO_1P_2025_Belsito_2/
echo "La URL de mi repositorio es: $(git remote get-url origin)" >> "$ARCHIVO2"

cat "$ARCHIVO2"

# Le doy permisos al script
chmod 755 "$0"
