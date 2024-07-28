#!/bin/bash

echo Criando grupos GRP_ADM, GRP_VEN e GRP_SEC
groupadd GRP_ADM 
groupadd GRP_VEN
groupadd GRP_SEC

echo Criando usuarios Carlos, Maria e Joao no grupo GRP_ADM
useradd carlos     -m -s /bin/bash -p $(openssl passwd -crypt Teste123) -G GRP_ADM
useradd maria      -m -s /bin/bash -p $(openssl passwd -crypt Teste123) -G GRP_ADM
useradd joao       -m -s /bin/bash -p $(openssl passwd -crypt Teste123) -G GRP_ADM

echo Criando usuarios Debora, Sebastiana e Roberto no grupo GRP_VEN
useradd debora     -m -s /bin/bash -p $(openssl passwd -crypt Teste123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Teste123) -G GRP_VEN
useradd roberto    -m -s /bin/bash -p $(openssl passwd -crypt Teste123) -G GRP_VEN

echo Criando usuarios Josefina, Amanda e Rogerio no grupo GRP_SEC
useradd josefina   -m -s /bin/bash -p $(openssl passwd -crypt Teste123) -G GRP_SEC
useradd amanda     -m -s /bin/bash -p $(openssl passwd -crypt Teste123) -G GRP_SEC
useradd rogerio    -m -s /bin/bash -p $(openssl passwd -crypt Teste123) -G GRP_SEC

echo Criando diretorios /publico, /adm, /ven e /sec
mkdir /publico /adm /ven /sec 

echo Ajustando permissoes dos diretorios criados
chmod 777 /publico
chmod 700 /adm /ven /sec
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo Script executado com sucesso
ls -lar /publico /adm /ven /sec
