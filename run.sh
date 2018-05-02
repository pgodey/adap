#!/bin/sh

sed -i "s/\(ldapUrl=\).*\$/\1${LDAP_HOST}/" /opt/adap/conf/general.properties
sed -i "s/\(ldapPort=\).*\$/\1${LDAP_PORT}/" /opt/adap/conf/general.properties
sed -i "s/\(adapPort=\).*\$/\1${ADAP_PORT}/" /opt/adap/conf/general.properties
sed -i "s/\(tokenTimeOutSec=\).*\$/\1${TOKEN_TIMEOUT}/" /opt/adap/conf/general.properties

/opt/adap/bin/adap.sh