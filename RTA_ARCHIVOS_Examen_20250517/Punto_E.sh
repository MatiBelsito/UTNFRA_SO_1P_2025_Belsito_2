#!/bin/bash

# Ruta del archivo
ARCHIVO=~/repogit/UTNFRA_SO_1P_2025_Belsito_2/RTA_ARCHIVOS_Examen_20250517/Filtro_Basico.txt

# Guardo la info de la memoria RAM
grep MemTotal: /proc/meminfo > "$ARCHIVO"

# Agrego  fabricante del chasis
sudo dmidecode -t chassis | grep -i 'Manufacturer' >> "$ARCHIVO"

# Muestro el resultado
echo "Total de Memoria RAM e info del fabricante del chasis: "
echo
cat "$ARCHIVO"

# Le doy permisos al script
chmod 755 "$0" 
