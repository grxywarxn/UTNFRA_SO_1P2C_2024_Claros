#!/bin/bash

mkdir -p /home/vagrant/Estructura_Asimetrica/{correo/{cartas_{1..100},carteros_{1..10}},cliente/cartas_{1..100}}
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4
