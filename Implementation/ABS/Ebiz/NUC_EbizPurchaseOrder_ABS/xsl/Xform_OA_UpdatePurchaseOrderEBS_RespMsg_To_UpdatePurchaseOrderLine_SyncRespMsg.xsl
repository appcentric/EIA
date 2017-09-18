<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:eia="http://xmlns.eia.com/extensions/1.0"
                xmlns:ns0="http://xmlns.eia.com/ABS/EBiz/PurchaseOrderABS/1.0"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ns2="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:poam="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderABM/1.0"
                xmlns:ns4="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:ns6="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns1="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ns3="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:ns5="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/apps/WI_Application/NUC_EbizPurchaseOrder_ABS/OA_UpdatePurchaseOrderEBS"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns8="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/sp/OA_UpdatePurchaseOrderEBS"
                xmlns:ns10="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns9="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderAO/1.0"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl plt wsdl tns xsd db ns0 ns2 poam ns4 ns6 soap12 soap mime core ns1 ns3 ns5 ns8 ns7 ns10 ns9 bpws xp20 eia bpel bpm utl ora socket mhdr oraext dvm hwf med ids xdk xref ldap"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:ns11="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:ns12="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns13="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns14="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns15="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns16="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../OA_UpdatePurchaseOrderEBS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="OutputParameters"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/sp/OA_UpdatePurchaseOrderEBS"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/PurchaseOrderABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="UpdatePurchaseOrderLineResponseMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderABM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <oracle-xsl-mapper:mapShowPrefixes type="true"/>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED SEP 09 14:05:50 CDT 2015].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <poam:UpdatePurchaseOrderLineResponseMessage>
      <ns14:HeaderRs>
        <ns14:RequestDetails>
          <ns14:Language>ENG</ns14:Language>
        </ns14:RequestDetails>
        <ns14:Status>
          <ns14:Status>SUCCESS</ns14:Status>
        </ns14:Status>
      </ns14:HeaderRs>
      <poam:OperationResult>
        <xsl:choose>
          <xsl:when test='"0" != /db:OutputParameters/db:UPDATE_PO'>
            <ns1:Stats>
              <xsl:text disable-output-escaping="no">S</xsl:text>
            </ns1:Stats>
          </xsl:when>
          <xsl:otherwise>
            <ns1:Stats>
              <xsl:text disable-output-escaping="no">E</xsl:text>
            </ns1:Stats>
          </xsl:otherwise>
        </xsl:choose>
        <ns1:Errors>
          <xsl:for-each select="/db:OutputParameters/db:X_API_ERRORS/db:MESSAGE_TEXT">
            <ns1:OperationResultError>
              <xsl:value-of select='concat("MESSAGE TEXT - ",.)'/>
            </ns1:OperationResultError>
          </xsl:for-each>
        </ns1:Errors>
      </poam:OperationResult>
    </poam:UpdatePurchaseOrderLineResponseMessage>
  </xsl:template>
</xsl:stylesheet>