#!/bin/bash

mkdir -p ~/Estructura_Asimetrica/{correo/carteros_{1..10},{correo,clientes}/cartas_{1..100}}

echo "Estructura Asimetrica Creada: "
echo
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4
