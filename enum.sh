#!/bin/bash

# Verificar que se haya proporcionado una dirección IP como argumento
if [ -z "$1" ]; then
  echo "Error: se debe proporcionar una dirección IP como argumento"
  echo "use: ./enum.sh 192.168.1.10"
  exit 1
fi

# Asignar la dirección IP del servidor a una variable
server_ip="$1"

# Verificar que Enum4linux esté instalado
if ! command -v enum4linux &> /dev/null; then
  echo "Error: Enum4linux no está instalado en este sistema"
  exit 1
fi

# Ejecutar Enum4linux en la dirección IP del servidor y guardar la salida en un archivo de texto
enum4linux $server_ip > info.txt

echo "Se ha generado el archivo info.txt con la información obtenida de $server_ip"
