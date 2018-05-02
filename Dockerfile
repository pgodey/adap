FROM java:8
COPY adap-1.0-SNAPSHOT.zip adap.zip
COPY run.sh run.sh
RUN unzip adap.zip -d /opt/adap && chmod +x /opt/adap/bin/adap.sh && chmod +x run.sh
ENV ADAP_PORT 8080
ENV LDAP_HOST localhost
ENV LDAP_PORT 2389
ENV TOKEN_TIMEOUT 36000
EXPOSE $ADAP_PORT
CMD run.sh
