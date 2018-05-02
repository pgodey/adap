#!/bin/sh
#
#sed -i "s/\(ldapUrl=\).*\$/\1${LDAP_HOST}/" /opt/adap/conf/general.properties
#sed -i "s/\(ldapPort=\).*\$/\1${LDAP_PORT}/" /opt/adap/conf/general.properties
#sed -i "s/\(adapPort=\).*\$/\1${ADAP_PORT}/" /opt/adap/conf/general.properties
#sed -i "s/\(tokenTimeOutSec=\).*\$/\1${TOKEN_TIMEOUT}/" /opt/adap/conf/general.properties
#
GENERAL=/opt/adap/conf/general.properties
echo "ldapUrl=${LDAP_HOST}" > ${GENERAL}
echo "ldapPort=${LDAP_PORT}" >> ${GENERAL}
echo "adapPort=${ADAP_PORT}" >> ${GENERAL}
echo "tokenTimeOutSec=${TOKEN_TIMEOUT}" >> ${GENERAL}
#
echo "GENERAL=${GENERAL}"
echo "ldapUrl=${LDAP_HOST}"
echo "ldapPort=${LDAP_PORT}"
echo "adapPort=${ADAP_PORT}"
echo "tokenTimeOutSec=${TOKEN_TIMEOUT}"
#
SSL=/opt/adap/conf/ssl.properties
#
echo "useSSL=${SSL_USE}" > ${SSL}
echo "sslPort=${SSL_PORT}" >> ${SSL}
echo "trustStore=${SSL_TRUST_STORE}" >> ${SSL}
echo "trustStorePwd=${SSL_TRUST_STORE_PSWD}" >> ${SSL}
#
echo "SSL=${SSL}"
echo "useSSL=${SSL_USE}"
echo "sslPort=${SSL_PORT}"
echo "trustStore=${SSL_TRUST_STORE}"
echo "trustStorePwd=${SSL_TRUST_STORE_PSWD}"
#
POOLING=/opt/adap/conf/pooling.properties
#
echo "alwaysAuthenticate=${POOL_ALWAYS_AUTH}" > ${POOLING}
echo "maxSize=${POOL_MAXSIZE}" >> ${POOLING}
echo "timeOut=${POOL_TIMEOUT}" >> ${POOLING}
#
echo "POOLING=${POOLING}"
echo "alwaysAuthenticate=${POOL_ALWAYS_AUTH}"
echo "maxSize=${POOL_MAXSIZE}"
echo "timeOut=${POOL_TIMEOUT}"
#
/bin/sh -c /opt/adap/bin/adap.sh
#
