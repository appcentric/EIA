******************************
XSD Document Generation
******************************

The basic usage is:

java org.apache.xalan.xslt.Process -IN [source] -XSL [stylesheet] -OUT [result] {-PARAM [param-name] [param-value]...} 

E.g. (Windows)
set EIA_HOME=D:\EIA12

set CLASSPATH=%EIA_HOME%\utilities\XSDDocGen\xalan\xercesImpl.jar;%EIA_HOME%\utilities\XSDDocGen\xalan\xml-apis.jar;%EIA_HOME%\utilities\XSDDocGen\xalan\xalan.jar;%EIA_HOME%\utilities\XSDDocGen\xalan\serializer.jar
java org.apache.xalan.xslt.Process -IN %EIA_HOME%\EO\Order\OrderEOV1.xsd -XSL %EIA_HOME%\utilities\XSDDocGen\xs3p-1\xs3p.xsl -OUT %EIA_HOME%\EO\Defects\ANSYSDefectsEOV1.html -PARAM title "ANSYS XML Schema Documentation for Defects - ANSYSDefectsEOV1" -PARAM sortByComponent true -PARAM printLegend false -PARAM printGlossary false


E.g (Unix)

export EIA_HOME=/product/EIA12
export CLASSPATH=$EIA_HOME/utilities/XSDDocGen/xalan/xercesImpl.jar:$EIA_HOME/utilities/XSDDocGen/xalan/xml-apis.jar:$EIA_HOME/utilities/XSDDocGen/xalan/xalan.jar:$EIA_HOME/utilities/XSDDocGen/xalan/serializer.jar
java org.apache.xalan.xslt.Process -IN $EIA_HOME/EO/Order/OrderEOV1.xsd -XSL $EIA_HOME/utilities/XSDDocGen/xs3p-1/xs3p.xsl -OUT $EIA_HOME/EO/Defects/ANSYSDefectsEOV1.html -PARAM title "ANSYS XML Schema Documentation for Defects - ANSYSDefectsEOV1" -PARAM sortByComponent true -PARAM printLegend false -PARAM printGlossary false


