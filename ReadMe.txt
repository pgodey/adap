1) Configure

There are three .properties files in folder /conf.

----------------------------------------------------------------------------------------------------------

general.properties

ldapUrl: the URL of the LDAP server ADAP is going to access
ldapPort: the port of the LDAP server
adapPort: the port ADAP will run on
tokenTimeOutSec: the authentication token timeout in seconds

----------------------------------------------------------------------------------------------------------

pooling.properties
This file manages the pooling of the LDAP connections to the LDAP server.

alwaysAuthenticate: if true then the credentials are checked for every connection to the LDAP server, even for those re used out of the connection pool
maxSize: the maximum number of concurrent connections kept in the pool, for a same authentication
timeOut: the time an idle connection will be kept in the pool before being removed (in milliseconds)

----------------------------------------------------------------------------------------------------------

ssl.properties
This file manages the use of SSL between ADAP and the LDAP server.

useSSL: if true, then SSL is used. Otherwise SSL is not used and all the below properties are ignored
sslPort: the SSL port of the LDAP server
trustStore: the path to the store of keys that will be trusted by ADAP
trustStorePwd: the password of the truststore

----------------------------------------------------------------------------------------------------------

2) Start

Go to folder /bin. Use “adap.sh” if Linux, “adap.bat” if Windows. ADAP requires Java 1.8. If you want 
ADAP to use a particular java executable, please complete the variable <JAVACMD> in "adap.sh" or 
"adap.bat".

ADAP is now accessible at http://localhost:<adapPort>/adap/, where <adapPort> is set in the file 
general.properties.