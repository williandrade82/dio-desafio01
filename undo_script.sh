#!/bin/bash
echo Desfazendo o que foi feito no script de criar usuarios

echo Excluindo pastas /publico /adm /ven e /sec
rm -rf /publico /adm /ven /sec

echo Excluindo usuarios carlos, maria e joao
userdel -f -r carlos
userdel -f -r maria
userdel -f -r joao
echo Excluindo grupo GRP_ADM
delgroup GRP_ADM

echo Excluindo usuarios debora, sebastiana e roberto
userdel -f -r debora
userdel -f -r sebastiana
userdel -f -r roberto
echo Excluindo grupo GRP_VEN
delgroup GRP_VEN

echo Excluindo usuarios josefina, amanda e rogerio
userdel -f -r josefina
userdel -f -r amanda
userdel -f -r rogerio
echo Excluindo grupo GRP_SEC
delgroup GRP_SEC

echo ------------------------
echo Script finalizado.
