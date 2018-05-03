#!/bin/sh
#
GENERAL=/opt/adap/conf/general.properties
#
echo "ldapUrl=${LDAP_HOST}" > ${GENERAL} 
echo "ldapPort=${LDAP_PORT}" >> ${GENERAL}
echo "adapPort=${ADAP_PORT}" >> ${GENERAL}
echo "tokenTimeOutSec=${TOKEN_TIMEOUT}" >> ${GENERAL}
#
SSL=/opt/adap/conf/ssl.properties
#
echo "useSSL=${SSL_USE}" > ${SSL}
echo "sslPort=${SSL_PORT}" >> ${SSL}
echo "trustStore=${SSL_TRUST_STORE}" >> ${SSL}
echo "trustStorePwd=${SSL_TRUST_STORE_PSWD}" >> ${SSL}
#
POOLING=/opt/adap/conf/pooling.properties
#
echo "alwaysAuthenticate=${POOL_ALWAYS_AUTH}" > ${POOLING}
echo "maxSize=${POOL_MAXSIZE}" >> ${POOLING}
echo "timeOut=${POOL_TIMEOUT}" >> ${POOLING}
#
cat ${GENERAL}
echo ${PATH}
APP_EXEC=/opt/adap/bin/adap.sh
cat ${APP_EXE}
.${APP_EXE}
