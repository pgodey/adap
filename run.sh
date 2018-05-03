#!/bin/sh

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
echo "maxSize=${POOL_MAXSIZE}" >> ${POOLING}
echo "timeOut=${POOL_TIMEOUT}" >> ${POOLING}

# overrides Java executable
JAVACMD=

PRGDIR=`dirname "$0"`
BASEDIR=`cd "$PRGDIR/.." >/dev/null; pwd`

# If a specific java binary isn't specified search for the standard 'java' binary
if [ -z "$JAVACMD" ] ; then
  if [ -n "$JAVA_HOME"  ] ; then
    JAVACMD="$JAVA_HOME/bin/java"
  else
    JAVACMD=`which java`
  fi
fi

if [ ! -x "$JAVACMD" ] ; then
  echo "Error: JAVA_HOME is not defined correctly." 1>&2
  echo "  We cannot execute $JAVACMD" 1>&2
  exit 1
fi

REPO="$BASEDIR"/lib

CLASSPATH="$REPO"/*

"$JAVACMD" -DADAP_HOME="$BASEDIR" -cp "$CLASSPATH" com.rli.web.http.service.adap.alone.JettyServer "$@"
