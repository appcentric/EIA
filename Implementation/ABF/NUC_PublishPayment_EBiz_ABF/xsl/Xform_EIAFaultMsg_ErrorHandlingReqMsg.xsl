<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:eia="http://xmlns.eia.com/extensions/1.0" xmlns:tns="http://xmlns.eia.com/ABS/EBiz/PaymentABS/1.0" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns1="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptAO/1.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns3="http://xmlns.eia.com/AO/EBiz/common/SupplierAO/1.0" xmlns:ns2="http://xmlns.eia.com/AO/EBiz/P2P/PaymentAO/1.0" xmlns:ns6="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:core="http://xmlns.eia.com/EO/Common/1.0" xmlns:ns0="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns4="http://xmlns.eia.com/AO/EBiz/P2P/InvoiceAO/1.0" xmlns:ns5="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns7="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns8="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0" xmlns:ns9="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0" xmlns:ns10="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0" xmlns:ns11="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderAO/1.0" xmlns:paymentam="http://xmlns.eia.com/AO/EBiz/P2P/PaymentAM/1.0" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl tns ns1 ns3 ns2 ns6 soap12 soap mime wsdl core ns0 ns4 ns5 ns7 xsd ns8 ns9 ns10 ns11 paymentam bpws xp20 eia bpel bpm utl ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/PaymentABS.wsdl"/>
            <oracle-xsl-mapper:rootElement name="Fault" namespace="http://xmlns.eia.com/EO/Common/1.0"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/PaymentABS.wsdl"/>
            <oracle-xsl-mapper:rootElement name="Fault" namespace="http://xmlns.eia.com/EO/Common/1.0"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [TUE SEP 29 20:15:45 CDT 2015].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
    <core:Fault>
      <xsl:if test="/core:Fault/core:FaultMessage">
        <core:FaultMessage>
          <xsl:if test="/core:Fault/core:FaultMessage/core:Code">
            <core:Code>
              <xsl:value-of select="/core:Fault/core:FaultMessage/core:Code"/>
            </core:Code>
          </xsl:if>
          <xsl:if test="/core:Fault/core:FaultMessage/core:Text">
            <xsl:for-each select="/core:Fault/core:FaultMessage/core:Text">
              <core:Text>
                <xsl:value-of select="."/>
              </core:Text>
            </xsl:for-each>
          </xsl:if>
          <xsl:if test="/core:Fault/core:FaultMessage/core:Severity">
            <core:Severity>
              <xsl:value-of select="/core:Fault/core:FaultMessage/core:Severity"/>
            </core:Severity>
          </xsl:if>
          <xsl:if test="/core:Fault/core:FaultMessage/core:Stack">
            <core:Stack>
              <xsl:value-of select="/core:Fault/core:FaultMessage/core:Stack"/>
            </core:Stack>
          </xsl:if>
        </core:FaultMessage>
      </xsl:if>
      <core:ReportingDateTime>
        <xsl:value-of select="/core:Fault/core:ReportingDateTime"/>
      </core:ReportingDateTime>
      <core:CorrectiveAction>
        <xsl:value-of select="/core:Fault/core:CorrectiveAction"/>
      </core:CorrectiveAction>
      <xsl:if test="/core:Fault/core:FaultingService">
        <core:FaultingService>
          <xsl:if test="/core:Fault/core:FaultingService/core:ID">
            <core:ID>
              <xsl:value-of select="/core:Fault/core:FaultingService/core:ID"/>
            </core:ID>
          </xsl:if>
          <xsl:if test="/core:Fault/core:FaultingService/core:Process">
            <core:Process>
              <xsl:value-of select="/core:Fault/core:FaultingService/core:Process"/>
            </core:Process>
          </xsl:if>
          <xsl:if test="/core:Fault/core:FaultingService/core:InstanceID">
            <core:InstanceID>
              <xsl:value-of select="/core:Fault/core:FaultingService/core:InstanceID"/>
            </core:InstanceID>
          </xsl:if>
        </core:FaultingService>
      </xsl:if>
    </core:Fault>
  </xsl:template>
</xsl:stylesheet>