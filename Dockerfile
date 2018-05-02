FROM java:8
COPY adap-1.0-SNAPSHOT.zip adap.zip
RUN unzip adap.zip -d /opt/adap && chmod +x /opt/adap/bin/adap.sh && chmod +x /opt/adap/run.sh
COPY run.sh /opt/adap/run.sh
ENV ADAP_PORT 8080
ENV LDAP_HOST localhost
ENV LDAP_PORT 2389
ENV TOKEN_TIMEOUT 36000
EXPOSE $ADAP_PORT
ENTRYPOINT ["/opt/adap/run.sh"]
CMD ["run"]
