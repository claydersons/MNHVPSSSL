#!/bin/bash
wget http://freedomssh.com/freedom/scripts/SSL/2/stunnel4f0
rm /etc/default/stunnel4
cat stunnel4f0 >> /etc/default/stunnel4
rm stunnel4f0