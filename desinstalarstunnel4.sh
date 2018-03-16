#!/bin/bash
apt-get remove stunnel4 -y
rm /etc/stunnel/stunnel.conf
rm /etc/stunnel/stunnel.pem
rm /etc/default/stunnel4