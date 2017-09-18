***********************************************************
WSDL to Java
**********************************************************
$Header$
The basic usage is: org.apache.axis.wsdl.WSDL2Java

java org.apache.axis.wsdl.WSDL2Java (WSDL-file-URL)          


E.g.On Windows

set classpath=%EIA_HOME%\lib\axis1.4\axis.jar;%EIA_HOME%\lib\axis1.4\axis-ant.jar;%EIA_HOME%\lib\axis1.4\commons-discovery-0.2.jar;%EIA_HOME%\lib\axis1.4\commons-logging-1.0.4.jar;%EIA_HOME%\lib\axis1.4\jaxrpc.jar;%EIA_HOME%\lib\axis1.4\log4j-1.2.8.jar;%EIA_HOME%\lib\axis1.4\saaj.jar;%EIA_HOME%\lib\axis1.4\wsdl4j-1.5.1.jar;%EIA_HOME%\lib\JavaMail1.4\activation.jar;%EIA_HOME%\lib\JavaMail1.4\mail.jar;
java org.apache.axis.wsdl.WSDL2Java https://rally1.rallydev.com/slm/webservice/1.23/meta/351375859/rally.wsdl -p ansys.rallydev.apps.wsdl.helper -o %EIA_HOME%\utilities\src -U siebel.account@ansys.com -P rallydev123
java org.apache.axis.wsdl.WSDL2Java https://rally1.rallydev.com/slm/webservice/1.23/meta/351375859/rally.wsdl -o %EIA_HOME%\utilities\src -U siebel.account@ansys.com -P rallydev123


