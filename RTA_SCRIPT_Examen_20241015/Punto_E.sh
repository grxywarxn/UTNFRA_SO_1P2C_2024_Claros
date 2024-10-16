#!/bin/bash
cat /proc/meminfo | grep -i memtotal > /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Claros/RTA_ARCamen_20241015/Filtro_basico.txt
sudo dmidecode -t chassis | grep -E 'Chassis Information|Manufacturer' >> /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Claros/RTA_ARCamen_20241015/Filtro_basico.txt
