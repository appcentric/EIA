<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:eia="http://xmlns.eia.com/extensions/1.0" xmlns:ns3="http://xmlns.oracle.com/pcbpel/adapter/apps/Nucor/NUC_EBizGLJE_ABS/OA_LaunchGLImport" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns2="http://xmlns.eia.com/AO/EBiz/A2R/JournalAO/1.0" xmlns:tns="http://xmlns.eia.com/ABS/EBiz/A2R/JournalABS/1.0" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:jeam="http://xmlns.eia.com/AO/EBiz/A2R/JournalAM/1.0" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/sp/OA_LaunchGLImport" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:core="http://xmlns.eia.com/EO/Common/1.0" xmlns:ns0="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns1="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns2 tns soap12 jeam soap wsdl mime core ns0 ns1 xsd ns3 plt db bpws xp20 eia bpel bpm utl ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/A2R/JournalABS.wsdl"/>
            <oracle-xsl-mapper:rootElement name="LaunchGLImportRequestMessage" namespace="http://xmlns.eia.com/AO/EBiz/A2R/JournalAM/1.0"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../OA_LaunchGLImport.wsdl"/>
            <oracle-xsl-mapper:rootElement name="InputParameters" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/sp/OA_LaunchGLImport"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED SEP 09 14:04:25 CDT 2015].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
    <db:InputParameters>
      <xsl:choose>
        <xsl:when test="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:Application != &quot;&quot;">
          <db:APPLICATION>
            <xsl:value-of select="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:Application"/>
          </db:APPLICATION>
        </xsl:when>
        <xsl:otherwise>
          <db:APPLICATION>
            <xsl:text disable-output-escaping="no">SQLGL</xsl:text>
          </db:APPLICATION>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:choose>
        <xsl:when test="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:Program != &quot;&quot;">
          <db:PROGRAM>
            <xsl:value-of select="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:Program"/>
          </db:PROGRAM>
        </xsl:when>
        <xsl:otherwise>
          <db:PROGRAM>
            <xsl:text disable-output-escaping="no">GLLEZL</xsl:text>
          </db:PROGRAM>
        </xsl:otherwise>
      </xsl:choose>
      <!--xsl:choose>
        <xsl:when test='/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:Description != ""'>
          <db:DESCRIPTION>
            <xsl:value-of select="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:Description"/>
          </db:DESCRIPTION>
        </xsl:when>
        <xsl:otherwise>
          <db:DESCRIPTION>
            <xsl:text disable-output-escaping="no">Journal Import</xsl:text>
          </db:DESCRIPTION>
        </xsl:otherwise>
      </xsl:choose-->
      <xsl:if test="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:StartTime">
        <db:START_TIME>
          <xsl:value-of select="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:StartTime"/>
        </db:START_TIME>
      </xsl:if>
      <xsl:if test="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:SubRequest">
        <db:SUB_REQUEST>
          <xsl:value-of select="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:SubRequest"/>
        </db:SUB_REQUEST>
      </xsl:if>
      <xsl:if test="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:JESourceName">
        <db:JE_SOURCE_NAME>
          <xsl:value-of select="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:JESourceName"/>
        </db:JE_SOURCE_NAME>
      </xsl:if>
      <xsl:if test="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:GroupId">
        <db:GROUP_ID>
          <xsl:value-of select="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:GroupId"/>
        </db:GROUP_ID>
      </xsl:if>
      <!--xsl:choose>
        <xsl:when test='/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:GroupId != ""'>
          <db:GROUP_ID>
            <xsl:value-of select="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:GroupId"/>
          </db:GROUP_ID>
        </xsl:when>
        <xsl:otherwise>
          <db:GROUP_ID>
            <xsl:value-of select='oraext:sequence-next-val("gl_interface_control_s","jdbc/ebsapps")'/>
          </db:GROUP_ID>
        </xsl:otherwise>
      </xsl:choose-->
      <xsl:choose>
        <xsl:when test="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:InterfaceRunId != &quot;&quot;">
          <db:INTERFACE_RUN_ID>
            <xsl:value-of select="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:InterfaceRunId"/>
          </db:INTERFACE_RUN_ID>
        </xsl:when>
        <xsl:otherwise>
          <db:INTERFACE_RUN_ID>
            <xsl:value-of select="oraext:sequence-next-val(&quot;gl_journal_import_s&quot;,&quot;jdbc/ebsapps&quot;)"/>
          </db:INTERFACE_RUN_ID>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:if test="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:SetOfBooksId">
        <db:SET_OF_BOOKS_ID>
          <xsl:value-of select="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:SetOfBooksId"/>
        </db:SET_OF_BOOKS_ID>
      </xsl:if>
      <xsl:if test="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:SuspenseFlag">
        <db:SUSPENSE_FLAG>
          <xsl:value-of select="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:SuspenseFlag"/>
        </db:SUSPENSE_FLAG>
      </xsl:if>
      <xsl:if test="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:FromAccountingDate">
        <db:FROM_ACCOUTING_DATE>
          <xsl:value-of select="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:FromAccountingDate"/>
        </db:FROM_ACCOUTING_DATE>
      </xsl:if>
      <xsl:if test="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:ToAccountingDate">
        <db:TO_ACCOUNTING_DATE>
          <xsl:value-of select="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:ToAccountingDate"/>
        </db:TO_ACCOUNTING_DATE>
      </xsl:if>
      <xsl:if test="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:SummaryFlag">
        <db:SUMMARY_FLAG>
          <xsl:value-of select="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:SummaryFlag"/>
        </db:SUMMARY_FLAG>
      </xsl:if>
      <xsl:if test="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:ImportDescFlexFlag">
        <db:IMPORT_DESC_FLEX_FLAG>
          <xsl:value-of select="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:ImportDescFlexFlag"/>
        </db:IMPORT_DESC_FLEX_FLAG>
      </xsl:if>
      <xsl:if test="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:DataSecurityFlag">
        <db:DATA_SECURITY_FLAG>
          <xsl:value-of select="/jeam:LaunchGLImportRequestMessage/jeam:InterfaceParams/ns2:DataSecurityFlag"/>
        </db:DATA_SECURITY_FLAG>
      </xsl:if>
    </db:InputParameters>
  </xsl:template>
</xsl:stylesheet>