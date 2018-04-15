#!/bin/bash
#Instalação do Stunnel
echo Instalando Stunnel...
sleep 2

yum update
service stunnel4 stop
yum remove stunnel4 -y
rm -f /etc/stunnel/stunnel.conf
rm -f /etc/stunnel/stunnel.pem
rm -f /etc/default/stunnel4
yum install stunnel -y

echo Instalado.
sleep 2


#Configuração
echo Configurando...
sleep 2
cat stunnel.conf >> /etc/stunnel/stunnel.conf
cat stunnel4 >> /etc/default/stunnel4
clear
echo Instalado.
echo Configurado.
sleep 2
clear

#Gerando Certificado
echo Gerando Certifidado...
sleep 2
openssl genrsa -out key.pem 2048
openssl req -new -x509 -key key.pem -out cert.pem -days 1095
cat key.pem cert.pem >> /etc/stunnel/stunnel.pem

echo Instalado.
echo Configurado.
echo Certificado Gerado.
sleep 2


#Iniciando Stunnel
echo Finalizando...
sleep 2
clear
rm -f /root/key.pem
rm -f /root/stunnel4
rm -f /root/cert.pem
rm -f /root/stunnel2.sh
rm -f /root/stunnel.sh
rm -f /root/stunnel.conf

echo Iniciando Stunnel...
service stunnel4 restart
service squid restart
service squid3 restart

echo Stunnel Iniciado...
sleep 3
clear
