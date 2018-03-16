#!/bin/bash
wget https://raw.githubusercontent.com/claydersons/MNHVPSSSL/master/stunnel4f0
rm /etc/default/stunnel4
cat stunnel4f0 >> /etc/default/stunnel4
rm stunnel4f0
