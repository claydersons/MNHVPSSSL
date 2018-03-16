#!/bin/bash
#Instalação do Stunnel
echo Instalando Stunnel...
sleep 2
clear
apt-get update
service stunnel4 stop
apt-get remove stunnel4 -y
rm /etc/stunnel/stunnel.conf
rm /etc/stunnel/stunnel.pem
rm /etc/default/stunnel4
apt-get install stunnel -y
clear
echo Instalado.
sleep 2
clear

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
clear
echo Instalado.
echo Configurado.
echo Certificado Gerado.
sleep 2
clear

#Iniciando Stunnel
echo Finalizando...
sleep 2
clear
rm /root/key.pem
rm /root/stunnel4
rm /root/cert.pem
rm /root/stunnel2.sh
rm /root/stunnel.sh
rm /root/stunnel.conf
clear
echo Iniciando Stunnel...
service stunnel4 restart
service squid restart
service squid3 restart
clear
echo Stunnel Iniciado...
sleep 3
clear
