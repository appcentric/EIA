<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:eia="http://xmlns.eia.com/extensions/1.0" xmlns:tns="http://xmlns.eia.com/ABS/EBiz/common/DocumentAttachmentABS/1.0" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/sp/OA_AddDocAttachment" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:core="http://xmlns.eia.com/EO/Common/1.0" xmlns:ns0="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns3="http://xmlns.oracle.com/pcbpel/adapter/apps/Nucor/NUC_EBizDocAttach_ABS/OA_AddDocAttachment" xmlns:ns1="http://xmlns.eia.com/AO/EBiz/common/DocumentAttachmentAO/1.0" xmlns:docattachAMObj="http://xmlns.eia.com/AO/EBiz/common/DocumentAttachmentAM/1.0" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns2="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl tns soap12 soap wsdl mime core ns0 ns1 docattachAMObj ns2 xsd plt db ns3 bpws xp20 eia bpel bpm utl ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/common/DocumentAttachmentABS.wsdl"/>
            <oracle-xsl-mapper:rootElement name="AddAttachmentRequestMessage" namespace="http://xmlns.eia.com/AO/EBiz/common/DocumentAttachmentAM/1.0"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../OA_AddDocAttachment.wsdl"/>
            <oracle-xsl-mapper:rootElement name="InputParameters" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/sp/OA_AddDocAttachment"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED SEP 09 14:04:09 CDT 2015].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
    <db:InputParameters>
      <db:SEQ_NUM>
        <xsl:value-of select="/docattachAMObj:AddAttachmentRequestMessage/docattachAMObj:DocumentAttachment/ns1:SeqNum"/>
      </db:SEQ_NUM>
      <db:DOCUMENT_CATEGORY>
        <xsl:value-of select="/docattachAMObj:AddAttachmentRequestMessage/docattachAMObj:DocumentAttachment/ns1:DocumentCategory"/>
      </db:DOCUMENT_CATEGORY>
      <db:DOCUMENT_DESCRIPTION>
        <xsl:value-of select="/docattachAMObj:AddAttachmentRequestMessage/docattachAMObj:DocumentAttachment/ns1:DocumentDescription"/>
      </db:DOCUMENT_DESCRIPTION>
      <db:DOCUMENT_TYPE>
        <xsl:value-of select="/docattachAMObj:AddAttachmentRequestMessage/docattachAMObj:DocumentAttachment/ns1:DocumentType"/>
      </db:DOCUMENT_TYPE>
      <db:DOCUMENT_CONTENT>
        <xsl:value-of select="/docattachAMObj:AddAttachmentRequestMessage/docattachAMObj:DocumentAttachment/ns1:DocumentContent"/>
      </db:DOCUMENT_CONTENT>
      <db:ENTITY_NAME>
        <xsl:value-of select="/docattachAMObj:AddAttachmentRequestMessage/docattachAMObj:DocumentAttachment/ns1:EntityName"/>
      </db:ENTITY_NAME>
      <xsl:if test="/docattachAMObj:AddAttachmentRequestMessage/docattachAMObj:DocumentAttachment/ns1:Pk1Value">
        <db:PK1_VALUE>
          <xsl:value-of select="/docattachAMObj:AddAttachmentRequestMessage/docattachAMObj:DocumentAttachment/ns1:Pk1Value"/>
        </db:PK1_VALUE>
      </xsl:if>
      <xsl:if test="/docattachAMObj:AddAttachmentRequestMessage/docattachAMObj:DocumentAttachment/ns1:Pk2Value">
        <db:PK2_VALUE>
          <xsl:value-of select="/docattachAMObj:AddAttachmentRequestMessage/docattachAMObj:DocumentAttachment/ns1:Pk2Value"/>
        </db:PK2_VALUE>
      </xsl:if>
      <xsl:if test="/docattachAMObj:AddAttachmentRequestMessage/docattachAMObj:DocumentAttachment/ns1:Pk3Value">
        <db:PK3_VALUE>
          <xsl:value-of select="/docattachAMObj:AddAttachmentRequestMessage/docattachAMObj:DocumentAttachment/ns1:Pk3Value"/>
        </db:PK3_VALUE>
      </xsl:if>
      <xsl:if test="/docattachAMObj:AddAttachmentRequestMessage/docattachAMObj:DocumentAttachment/ns1:Pk4Value">
        <db:PK4_VALUE>
          <xsl:value-of select="/docattachAMObj:AddAttachmentRequestMessage/docattachAMObj:DocumentAttachment/ns1:Pk4Value"/>
        </db:PK4_VALUE>
      </xsl:if>
      <xsl:if test="/docattachAMObj:AddAttachmentRequestMessage/docattachAMObj:DocumentAttachment/ns1:Pk5Value">
        <db:PK5_VALUE>
          <xsl:value-of select="/docattachAMObj:AddAttachmentRequestMessage/docattachAMObj:DocumentAttachment/ns1:Pk5Value"/>
        </db:PK5_VALUE>
      </xsl:if>
      <xsl:if test="/docattachAMObj:AddAttachmentRequestMessage/docattachAMObj:DocumentAttachment/ns1:Title">
        <db:TITLE>
          <xsl:value-of select="/docattachAMObj:AddAttachmentRequestMessage/docattachAMObj:DocumentAttachment/ns1:Title"/>
        </db:TITLE>
      </xsl:if>
    </db:InputParameters>
  </xsl:template>
</xsl:stylesheet>