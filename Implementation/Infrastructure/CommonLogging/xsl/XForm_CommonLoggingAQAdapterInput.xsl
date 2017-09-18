<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:client="http://xmlns.eia.com/CommonLogging" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:MYORACLE="http://xmlns.oracle.com/xdb/MYORACLE" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl client plnk xsd wsdl MYORACLE bpws xp20 mhdr bpel2 oraext dvm hwf med ids bpm xdk xref ora socket ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
   <oracle-xsl-mapper:schema>
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../CommonLogging.wsdl"/>
            <oracle-xsl-mapper:rootElement name="Input" namespace="http://xmlns.eia.com/CommonLogging"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="XSD">
            <oracle-xsl-mapper:schema location="../xsd/MYORACLE_COMMON_LOGGING_OBJ.xsd"/>
            <oracle-xsl-mapper:rootElement name="COMMON_LOGGING_OBJ" namespace="http://xmlns.oracle.com/xdb/MYORACLE"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
   </oracle-xsl-mapper:schema>
   <xsl:template match="/">
      <MYORACLE:COMMON_LOGGING_OBJ>
         <TRANSACTION_ID>
            <xsl:value-of select="/client:Input/client:TransactionId"/>
         </TRANSACTION_ID>
         <PROJECT_NAME>
            <xsl:value-of select="/client:Input/client:ProjectName"/>
         </PROJECT_NAME>
         <COMPONENT_ID>
            <xsl:value-of select="/client:Input/client:ComponentId"/>
         </COMPONENT_ID>
         <TRANSACTION_NAME>
            <xsl:value-of select="/client:Input/client:TransactionName"/>
         </TRANSACTION_NAME>
         <PROCESS_NAME>
            <xsl:value-of select="/client:Input/client:ProcessName"/>
         </PROCESS_NAME>
         <MESSAGE_SOURCE_SYSTEM>
            <xsl:value-of select="/client:Input/client:LoggingSystem"/>
         </MESSAGE_SOURCE_SYSTEM>
         <SOURCE_SYSTEM>
            <xsl:value-of select="/client:Input/client:SourceSystem"/>
         </SOURCE_SYSTEM>
         <TARGET_SYSTEM>
            <xsl:value-of select="/client:Input/client:TargetSystem"/>
         </TARGET_SYSTEM>
         <LOG_TYPE>
            <xsl:value-of select="/client:Input/client:LogType"/>
         </LOG_TYPE>
         <MESSAGE_CODE>
            <xsl:value-of select="/client:Input/client:MessageCode"/>
         </MESSAGE_CODE>
         <MESSAGE_DESCRIPTION>
            <xsl:value-of select="/client:Input/client:MessageDescription"/>
         </MESSAGE_DESCRIPTION>
         <TRANSACTION_STATUS>
            <xsl:value-of select="/client:Input/client:TransactionStatus"/>
         </TRANSACTION_STATUS>
         <CREATED_BY>
            <xsl:value-of select="/client:Input/client:CreatedBy"/>
         </CREATED_BY>
         <UPDATED_BY>
            <xsl:value-of select="/client:Input/client:UpdatedBy"/>
         </UPDATED_BY>
         <V_ATTRIBUTE1>
            <xsl:value-of select="/client:Input/client:StringAttribute1"/>
         </V_ATTRIBUTE1>
         <V_ATTRIBUTE2>
            <xsl:value-of select="/client:Input/client:StringAttribute2"/>
         </V_ATTRIBUTE2>
         <N_ATTRIBUTE1>
            <xsl:value-of select="/client:Input/client:NumberAttribute1"/>
         </N_ATTRIBUTE1>
         <N_ATTRIBUTE2>
            <xsl:value-of select="/client:Input/client:NumberAttribute2"/>
         </N_ATTRIBUTE2>
      </MYORACLE:COMMON_LOGGING_OBJ>
   </xsl:template>
</xsl:stylesheet>
