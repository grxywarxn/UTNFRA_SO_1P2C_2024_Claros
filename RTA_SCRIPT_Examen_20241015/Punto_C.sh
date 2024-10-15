#!bin/bash/

sudo useradd -m -s /bin/bash -c "Usuario alumno 1" -p $y$j9T$iUD8gRclRkZitzZ8ATSNp1$lCrPLGzGyRND6h4i9X/1mXWmAAL/s6Di7Su5iKbLwJ2 p1c2_2024_A1
sudo useradd -m -s /bin/bash -c "Usuario alumno 2" -p $y$j9T$iUD8gRclRkZitzZ8ATSNp1$lCrPLGzGyRND6h4i9X/1mXWmAAL/s6Di7Su5iKbLwJ2 p1c2_2024_A2
sudo useradd -m -s /bin/bash -c "Usuario alumno 3" -p $y$j9T$iUD8gRclRkZitzZ8ATSNp1$lCrPLGzGyRND6h4i9X/1mXWmAAL/s6Di7Su5iKbLwJ2 p1c2_2024_A3
sudo useradd -m -s /bin/bash -c "Usuario profesor" -p $y$j9T$iUD8gRclRkZitzZ8ATSNp1$lCrPLGzGyRND6h4i9X/1mXWmAAL/s6Di7Su5iKbLwJ2 p1c2_2024_P1
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores
sudo usermod -G p1c2_2024_gAlumno p1c2_2024_A1
sudo usermod -G p1c2_2024_gAlumno p1c2_2024_A2
sudo usermod -G p1c2_2024_gAlumno p1c2_2024_A3
sudo usermod -G p1c2_2024_gProfesores p1c2_2024_P1
sudo chown p1c2_2024_A1:p1c2_2024_A1 Examenes-UTN/alumno_1
sudo chown p1c2_2024_A2:p1c2_2024_A2 Examenes-UTN/alumno_2
sudo chown p1c2_2024_A3:p1c2_2024_A3 Examenes-UTN/alumno_3
sudo chown p1c2_2024_P1:p1c2_2024_gProfesores Examenes-UTN/profesores
cd /
cd /Examenes-UTN
sudo chmod 750 alumno_1
sudo chmod 760 alumno_2
sudo chmod 700 alumno_3
sudo chmod 775 profesores
su -c 'whoami >> /Examenes-UTN/alumno_1/validar.txt' p1c2_2024_A1
su -c 'whoami > /Examenes-UTN/alumno_2/validar.txt' p1c2_2024_A2
su -c 'whoami > /Examenes-UTN/alumno_3/validar.txt' p1c2_2024_A3
su -c 'whoami > /Examenes-UTN/profesores/validar.txt' p1c2_2024_P1
