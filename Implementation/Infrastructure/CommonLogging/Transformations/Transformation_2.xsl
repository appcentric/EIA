<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:ns0="http://xmlns.eia.com/CommonLogging"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="http://xmlns.oracle.com/xdb/XXNUC_LOGGING"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 tns oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/aq/CommonLogging/CommonLogging/CommonLoggingProviderAQAdapter">
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
        <oracle-xsl-mapper:rootElement name="XXNUC_COMM_LOGG_OBJ_TYP"
                                       namespace="http://xmlns.oracle.com/xdb/XXNUC_LOGGING"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
  </oracle-xsl-mapper:schema>
  <xsl:template match="/">
    <tns:XXNUC_COMM_LOGG_OBJ_TYP>
      <TRANSACTION_ID>
        <xsl:value-of select="/ns0:Input/ns0:TransactionId"/>
      </TRANSACTION_ID>
      <PROJECT_NAME>
        <xsl:value-of select="/ns0:Input/ns0:ProjectName"/>
      </PROJECT_NAME>
      <COMPONENT_ID>
        <xsl:value-of select="/ns0:Input/ns0:ComponentId"/>
      </COMPONENT_ID>
      <TRANSACTION_NAME>
        <xsl:value-of select="/ns0:Input/ns0:TransactionName"/>
      </TRANSACTION_NAME>
      <PROCESS_NAME>
        <xsl:value-of select="/ns0:Input/ns0:ProcessName"/>
      </PROCESS_NAME>
      <MESSAGE_SOURCE_SYSTEM>
        <xsl:value-of select="/ns0:Input/ns0:LoggingSystem"/>
      </MESSAGE_SOURCE_SYSTEM>
      <SOURCE_SYSTEM>
        <xsl:value-of select="/ns0:Input/ns0:SourceSystem"/>
      </SOURCE_SYSTEM>
      <TARGET_SYSTEM>
        <xsl:value-of select="/ns0:Input/ns0:TargetSystem"/>
      </TARGET_SYSTEM>
      <LOG_TYPE>
        <xsl:value-of select="/ns0:Input/ns0:LogType"/>
      </LOG_TYPE>
      <MESSAGE_CODE>
        <xsl:value-of select="/ns0:Input/ns0:MessageCode"/>
      </MESSAGE_CODE>
      <MESSAGE_DESCRIPTION>
        <xsl:value-of select="/ns0:Input/ns0:MessageDescription"/>
      </MESSAGE_DESCRIPTION>
      <TRANSACTION_STATUS>
        <xsl:value-of select="/ns0:Input/ns0:TransactionStatus"/>
      </TRANSACTION_STATUS>
      <CREATED_BY>
        <xsl:value-of select="/ns0:Input/ns0:CreatedBy"/>
      </CREATED_BY>
      <UPDATED_BY>
        <xsl:value-of select="/ns0:Input/ns0:UpdatedBy"/>
      </UPDATED_BY>
      <V_ATTRIBUTE1>
        <xsl:value-of select="/ns0:Input/ns0:StringAttribute1"/>
      </V_ATTRIBUTE1>
      <V_ATTRIBUTE2>
        <xsl:value-of select="/ns0:Input/ns0:StringAttribute2"/>
      </V_ATTRIBUTE2>
      <N_ATTRIBUTE1>
        <xsl:value-of select="/ns0:Input/ns0:NumberAttribute1"/>
      </N_ATTRIBUTE1>
      <N_ATTRIBUTE2>
        <xsl:value-of select="/ns0:Input/ns0:NumberAttribute2"/>
      </N_ATTRIBUTE2>
    </tns:XXNUC_COMM_LOGG_OBJ_TYP>
  </xsl:template>
</xsl:stylesheet>
