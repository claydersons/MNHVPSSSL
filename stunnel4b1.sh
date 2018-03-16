#!/bin/bash
wget https://raw.githubusercontent.com/claydersons/MNHVPSSSL/master/stunnel4f1
rm /etc/default/stunnel4
cat stunnel4f1 >> /etc/default/stunnel4
rm stunnel4f1
