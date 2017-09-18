<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns0="http://xmlns.eia.com/CommonLogging" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="http://xmlns.oracle.com/xdb/XXNUC_LOGGING" exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 tns oraxsl xp20 xref mhdr oraext dvm socket" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/aq/CommonLogging/CommonLogging/CommonLoggingProviderAQAdapter">
   <oracle-xsl-mapper:schema>
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../CommonLogging.wsdl"/>
            <oracle-xsl-mapper:rootElement name="Input" namespace="http://xmlns.eia.com/CommonLogging"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../CommonLoggingProviderAQAdapter.wsdl"/>
            <oracle-xsl-mapper:rootElement name="XXNUC_COMM_LOGG_OBJ_TYP" namespace="http://xmlns.oracle.com/xdb/XXNUC_LOGGING"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
   </oracle-xsl-mapper:schema>
   <xsl:template match="/">
      <tns:XXNUC_COMM_LOGG_OBJ_TYP/>
   </xsl:template>
</xsl:stylesheet>
