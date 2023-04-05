#!/bin/bash
# Este script se utiliza para conectarse a una dirección IP específica a través de SSH

# Especifica la dirección IP del servidor SSH
IP_ADDRESS="dirección_IP_del_servidor"

# Especifica el usuario para conectarse al servidor SSH
USER="nombre_de_usuario"

# Realiza la conexión SSH
ssh $USER@$IP_ADDRESS