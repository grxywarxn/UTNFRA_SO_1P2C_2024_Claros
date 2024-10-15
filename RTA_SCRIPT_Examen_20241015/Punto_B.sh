#!/bin/bash

sudo fdisk /dev/sdd << FIN
n
p


+1G
n
p


+1G
n
p


+1G
n
e



n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G

wq
FIN
sudo mkfs.ext4 /dev/sdd1
sudo mkfs.ext4 /dev/sdd2
sudo mkfs.ext4 /dev/sdd3
sudo mkfs.ext4 /dev/sdd5
sudo mkfs.ext4 /dev/sdd6
sudo mkfs.ext4 /dev/sdd7
sudo mkfs.ext4 /dev/sdd8
sudo mkfs.ext4 /dev/sdd9
sudo mkfs.ext4 /dev/sdd10
sudo mkfs.ext4 /dev/sdd11
sudo mount /dev/sdd1 /Examenes-UTN/alumno_1/parcial_1
sudo mount /dev/sdd2 /Examenes-UTN/alumno_1/parcial_2
sudo mount /dev/sdd3 /Examenes-UTN/alumno_1/parcial_3
sudo mount /dev/sdd5 /Examenes-UTN/alumno_2/parcial_1
sudo mount /dev/sdd6 /Examenes-UTN/alumno_2/parcial_2
sudo mount /dev/sdd7 /Examenes-UTN/alumno_2/parcial_3
sudo mount /dev/sdd8 /Examenes-UTN/alumno_3/parcial_1
sudo mount /dev/sdd9 /Examenes-UTN/alumno_3/parcial_2
sudo mount /dev/sdd10 /Examenes-UTN/alumno_3/parcial_3
sudo mount /dev/sdd11 /Examenes-UTN/profesores/
sudo su
cat << FIN >> /etc/fstab
UUID=eb1353ab-10e2-4a14-9370-46aacf6faf84 /Examenes-UTN/alumno_1/parcial_1 ext4 defaults 0 0
UUID=c8db6a9c-16b9-4780-bfbb-8455ce65be8e /Examenes-UTN/alumno_1/parcial_2 ext4 defaults 0 0
UUID=fc37e779-f741-498b-bf87-39501bf687a7 /Examenes-UTN/alumno_1/parcial_3 ext4 defaults 0 0
UUID=52317424-860e-43f9-954d-7313b1a97eaf /Examenes-UTN/alumno_2/parcial_1 ext4 defaults 0 0
UUID=571ca215-bc4c-48bd-b1f2-974b46ef2861 /Examenes-UTN/alumno_2/parcial_2 ext4 defaults 0 0
UUID=0a831173-b1a4-42c2-97e2-120440cab5bc /Examenes-UTN/alumno_2/parcial_3 ext4 defaults 0 0
UUID=8b5953b7-f4d1-4536-bb83-c72b8f1602ff /Examenes-UTN/alumno_3/parcial_1 ext4 defaults 0 0
UUID=74aaec7f-bb24-482d-b378-fca068892f7e /Examenes-UTN/alumno_3/parcial_2 ext4 defaults 0 0
UUID=fb3c05fe-e1a1-4949-bfc5-e22e9b9f4155 /Examenes-UTN/alumno_3/parcial_3 ext4 defaults 0 0
UUID=bf6a12ad-e02b-41b9-b8fe-cc0449901fc7 /Examenes-UTN/profesores/ ext4 defaults 0 0
FIN
su vagrant
