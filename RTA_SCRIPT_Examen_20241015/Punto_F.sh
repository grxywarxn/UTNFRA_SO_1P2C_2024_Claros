#!/bin/bash
cd /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Claros
echo "Mi IP Publica es: ${curl -s ifconfig.me}" > RTA_ARCHIVOS_Examen_20241015/Filtro_Avanzado.txt
echo "Mi usuario es: $(whoami)" >> RTA_ARCHIVOS_Examen_20241015/Filtro_Avanzado.txt
echo "El Hash de mi Usuario es: $(sudo cat /etc/shadow | grep $(whoami) | awk -F ":" {print})" >> RTA_ARCHIVOS_Examen_20241015/Filtro_Avanzado.txt
echo "La URL de mi repositorio es: $(git remote get-url origin)" >> RTA_ARCHIVOS_Examen_20241015/Filtro_Avanzado.txt
