<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns2="http://xmlns.eia.com/AO/EBiz/common/OrigSystemRefAO/1.0" xmlns:osram="http://xmlns.eia.com/AO/EBiz/common/OrigSystemRefAM/1.0" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://xmlns.eia.com/ABS/EBiz/OrigSystemRefABS/1.0" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/apps/Test/NUC_EBizOrigSystemRef_ABS/OA_UpdateOSR" xmlns:core="http://xmlns.eia.com/EO/Common/1.0" xmlns:ns1="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns3="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/sp/OA_UpdateOSR" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl plt wsdl tns db xsd ns2 osram ns0 soap12 soap mime core ns1 ns3 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../OA_UpdateOSR.wsdl"/>
            <oracle-xsl-mapper:rootElement name="OutputParameters" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/sp/OA_UpdateOSR"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/common/OrigSystemRefABS.wsdl"/>
            <oracle-xsl-mapper:rootElement name="UpdateOSRSyncResponseMessage" namespace="http://xmlns.eia.com/AO/EBiz/common/OrigSystemRefAM/1.0"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED SEP 09 14:04:41 CDT 2015].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
    <osram:UpdateOSRSyncResponseMessage>
      <osram:OperationResult>
        <xsl:choose>
          <xsl:when test="/db:OutputParameters/db:X_RETURN_STATUS != 'S'">
            <ns1:Stats>
              <xsl:text disable-output-escaping="no">E</xsl:text>
            </ns1:Stats>
          </xsl:when>
          <xsl:otherwise>
            <ns1:Stats>
              <xsl:value-of select="/db:OutputParameters/db:X_RETURN_STATUS"/>
            </ns1:Stats>
          </xsl:otherwise>
        </xsl:choose>
        <ns1:Errors>
          <xsl:for-each select="/db:OutputParameters/db:X_MSG_DATA/db:X_MSG_DATA_ITEM">
            <ns1:OperationResultError>
              <xsl:value-of select="concat(&quot;MESSAGE TEXT - &quot;,db:MESSAGE_TEXT)"/>
            </ns1:OperationResultError>
          </xsl:for-each>
        </ns1:Errors>
      </osram:OperationResult>
    </osram:UpdateOSRSyncResponseMessage>
  </xsl:template>
</xsl:stylesheet>