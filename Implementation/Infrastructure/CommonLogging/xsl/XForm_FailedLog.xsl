<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:client="http://xmlns.eia.com/CommonLogging" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:tns="http://www.corp.caogemini.com/AuditLog//AuditLogFailFileWriteAdapter" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl client plnk xsd wsdl tns nxsd bpws xp20 mhdr bpel2 oraext dvm hwf med ids bpm xdk xref ora socket ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
   <oracle-xsl-mapper:schema>
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../CommonLogging.wsdl"/>
            <oracle-xsl-mapper:rootElement name="Input" namespace="http://xmlns.eia.com/CommonLogging"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="XSD">
            <oracle-xsl-mapper:schema location="../xsd/AuditLog.xsd"/>
            <oracle-xsl-mapper:rootElement name="AuditLogList" namespace="http://www.corp.caogemini.com/AuditLog//AuditLogFailFileWriteAdapter"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
   </oracle-xsl-mapper:schema>
   <xsl:template match="/">
      <tns:AuditLogList>
         <tns:AuditLog>
            <tns:TransactionId>
               <xsl:value-of select="/client:Input/client:TransactionId"/>
            </tns:TransactionId>
            <tns:ProjectName>
               <xsl:value-of select="/client:Input/client:ProjectName"/>
            </tns:ProjectName>
            <tns:ComponentId>
               <xsl:value-of select="/client:Input/client:ComponentId"/>
            </tns:ComponentId>
            <tns:TransactionName>
               <xsl:value-of select="/client:Input/client:TransactionName"/>
            </tns:TransactionName>
            <tns:ProcessName>
               <xsl:value-of select="/client:Input/client:ProcessName"/>
            </tns:ProcessName>
            <tns:LoggingSystem>
               <xsl:value-of select="/client:Input/client:LoggingSystem"/>
            </tns:LoggingSystem>
            <tns:SourceSystem>
               <xsl:value-of select="/client:Input/client:SourceSystem"/>
            </tns:SourceSystem>
            <tns:TargetSystem>
               <xsl:value-of select="/client:Input/client:TargetSystem"/>
            </tns:TargetSystem>
            <tns:LogType>
               <xsl:value-of select="/client:Input/client:LogType"/>
            </tns:LogType>
            <tns:MessageCode>
               <xsl:value-of select="/client:Input/client:MessageCode"/>
            </tns:MessageCode>
            <tns:MessageDescription>
               <xsl:value-of select="/client:Input/client:MessageDescription"/>
            </tns:MessageDescription>
            <tns:TransactionStatus>
               <xsl:value-of select="/client:Input/client:TransactionStatus"/>
            </tns:TransactionStatus>
            <tns:CreatedBy>
               <xsl:value-of select="/client:Input/client:CreatedBy"/>
            </tns:CreatedBy>
            <tns:UpdatedBy>
               <xsl:value-of select="/client:Input/client:UpdatedBy"/>
            </tns:UpdatedBy>
            <tns:StringAttribute1>
               <xsl:value-of select="/client:Input/client:StringAttribute1"/>
            </tns:StringAttribute1>
            <tns:StringAttribute2>
               <xsl:value-of select="/client:Input/client:StringAttribute2"/>
            </tns:StringAttribute2>
            <tns:NumberAttribute1>
               <xsl:value-of select="/client:Input/client:NumberAttribute1"/>
            </tns:NumberAttribute1>
            <tns:NumberAttribute2>
               <xsl:value-of select="/client:Input/client:NumberAttribute2"/>
            </tns:NumberAttribute2>
         </tns:AuditLog>
      </tns:AuditLogList>
   </xsl:template>
</xsl:stylesheet>
