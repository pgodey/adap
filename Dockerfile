FROM java:8

COPY adap-1.0-SNAPSHOT.zip adap.zip
COPY run.sh /opt/adap/run.sh

RUN unzip adap.zip -d /opt/adap && chmod +x /opt/adap/bin/adap.sh && chmod +x /opt/adap/run.sh

ENV ADAP_PORT 8080
ENV LDAP_HOST localhost
ENV LDAP_PORT 2389
ENV TOKEN_TIMEOUT 36000

ENV SSL_USE false
ENV SSL_PORT ""
ENV SSL_TRUST_STORE ""
ENV SSL_TRUST_STROE_PSWD ""

ENV POOL_ALWAYS_AUTH false
ENV POOL_MAXSIZE 100
ENV POOL_TIMEOUT 10000

EXPOSE $ADAP_PORT

CMD /bin/sh /opt/adap/run.sh
