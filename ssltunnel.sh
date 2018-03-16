#!/bin/bash
clear
tput setaf 2 ; tput bold ; echo "------------Painel Stunnel4------------" ; tput sgr0
echo ""
echo ""
tput setaf 2 ; tput bold ; echo "1 - Instalar Stunnel4 " ; tput sgr0
echo ""
tput setaf 2 ; tput bold ; echo "2 - Executar/Reiniciar Stunnel4 " ; tput sgr0
echo ""
tput setaf 2 ; tput bold ; echo "3 - Fechar Stunnel4 " ; tput sgr0
echo ""
tput setaf 2 ; tput bold ; echo "4 - Habilitar Stunnel4 durante boot " ; tput sgr0
echo ""
tput setaf 2 ; tput bold ; echo "5 - Desabilitar Stunnel4 durante boot " ; tput sgr0
echo ""
tput setaf 2 ; tput bold ; echo "6 - Alterar portas manualmente " ; tput sgr0
echo ""
tput setaf 2 ; tput bold ; echo "7 - Desinstalar Stunnel4 " ; tput sgr0
echo ""
tput setaf 2 ; tput bold ; echo "0 - Sair " ; tput sgr0
echo ""
echo ""
tput setaf 2 ; tput bold ; echo "-------------VPNPINDA----------------" ; tput sgr0

read executar
if [[ "$executar" = '0' ]]; then
        exit
fi
if [[ "$executar" = '1' ]]; then
        stunnel2
fi
if [[ "$executar" = '2' ]]; then
        service stunnel4 restart
fi
if [[ "$executar" = '3' ]]; then
        service stunnel4 stop
fi
if [[ "$executar" = '4' ]]; then
        stunnel4b1
fi
if [[ "$executar" = '5' ]]; then
        stunnel4b0
fi
if [[ "$executar" = '6' ]]; then
        nano /etc/stunnel/stunnel.conf
fi
if [[ "$executar" = '7' ]]; then
        desinstalarstunnel4
fi
sleep 3
clear
tput setaf 2 ; tput bold ; echo "--------------------------------------------" ; tput sgr0
echo ""
echo ""
echo ""
tput setaf 2 ; tput bold ; echo "By VPNPINDA" ; tput sgr0
echo ""
echo ""
echo ""
tput setaf 2 ; tput bold ; echo "--------------------------------------------" ; tput sgr0
