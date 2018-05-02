#!/bin/sh -x

#sed -i "s/\(ldapUrl=\).*\$/\1${LDAP_HOST}/" /opt/adap/conf/general.properties
#sed -i "s/\(ldapPort=\).*\$/\1${LDAP_PORT}/" /opt/adap/conf/general.properties
#sed -i "s/\(adapPort=\).*\$/\1${ADAP_PORT}/" /opt/adap/conf/general.properties
#sed -i "s/\(tokenTimeOutSec=\).*\$/\1${TOKEN_TIMEOUT}/" /opt/adap/conf/general.properties

GENERAL=/opt/adap/conf/general.properties

echo "ldapUrl=${LDAP_HOST}" > ${GENERAL}
echo "ldapPort=${LDAP_PORT}" >> ${GENERAL}
echo "adapPort=${ADAP_PORT}" >> ${GENERAL}
echo "tokenTimeOutSec=${TOKEN_TIMEOUT}" >> ${GENERAL}

SSL=/opt/adap/conf/ssl.properties

echo "useSSL=${SSL_USE}" > ${SSL}
echo "sslPort=${SSL_PORT}" >> ${SSL}
echo "trustStore=${SSL_TRUST_STORE}" >> ${SSL}
echo "trustStorePwd=${SSL_TRUST_STORE_PSWD}" >> ${SSL}

POOLING=/opt/adap/conf/pooling.properties

echo "alwaysAuthenticate=${POOL_ALWAYS_AUTH}" > ${POOLING}
echo "maxSize=${POOL_MAX_SIZE}" >> ${POOLING}
echo "timeOut=${POOL_TIMEOUT}" >> ${POOLING}

exec /opt/adap/bin/adap.sh
