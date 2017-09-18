<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:eia="http://xmlns.eia.com/extensions/1.0" xmlns:ns0="http://xmlns.eia.com/ABS/EBiz/PaymentABS/1.0"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ns2="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptAO/1.0"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:ns4="http://xmlns.eia.com/AO/EBiz/common/SupplierAO/1.0"
                xmlns:ns3="http://xmlns.eia.com/AO/EBiz/P2P/PaymentAO/1.0"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Get_payment"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns1="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ns5="http://xmlns.eia.com/AO/EBiz/P2P/InvoiceAO/1.0"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/Nucor/NUC_PublishPayment_EBiz_ABF/DB_Get_payment"
                xmlns:ns6="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:ns8="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns9="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns10="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns11="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:ns12="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderAO/1.0"
                xmlns:paymentam="http://xmlns.eia.com/AO/EBiz/P2P/PaymentAM/1.0"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl plt wsdl top tns xsd ns0 ns2 ns4 ns3 ns7 soap12 soap mime core ns1 ns5 ns6 ns8 ns9 ns10 ns11 ns12 paymentam bpws xp20 eia bpel bpm utl ora socket mhdr oraext dvm hwf med ids xdk xref ldap"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:ns17="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns19="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns20="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:ns15="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0"
                xmlns:ns18="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:ns21="http://xmlns.eia.com/AO/EBiz/common/CategoryAO/1.0"
                xmlns:ns13="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:ns14="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns16="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../DB_Get_payment.wsdl"/>
        <oracle-xsl-mapper:rootElement name="ApChecksAllCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Get_payment"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/PaymentABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryListOfPaymentRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/PaymentAM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <oracle-xsl-mapper:mapShowPrefixes type="true"/>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [TUE SEP 29 20:15:45 CDT 2015].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <paymentam:QueryListOfPaymentRequestMessage>
      <!-- Added By Capgemini Start -->
      <ns17:HeaderRq>
        <ns17:TransactionRequestID>
          <xsl:value-of select="/top:ApChecksAllCollection/top:ApChecksAll/top:paymentId"/>
        </ns17:TransactionRequestID>
        <ns17:Language>ENG</ns17:Language>
        <ns17:ComponentID>I101</ns17:ComponentID>
        <ns17:ServiceName>temp</ns17:ServiceName>
        <ns17:TransactionIDREF>temp</ns17:TransactionIDREF>
        <ns17:TransactionName>Payments</ns17:TransactionName>
        <ns17:Source>2</ns17:Source>
        <ns17:Target>29</ns17:Target>
        <ns17:TimeStamp>
          <xsl:value-of select="xp20:current-dateTime ( )"/>
        </ns17:TimeStamp>
      </ns17:HeaderRq>
      <!-- Added By Capgemini End -->
      <paymentam:PaymentInfo>
        <ns3:Identifier>
          <xsl:value-of select="/top:ApChecksAllCollection/top:ApChecksAll/top:paymentId"/>
        </ns3:Identifier>
      </paymentam:PaymentInfo>
    </paymentam:QueryListOfPaymentRequestMessage>
  </xsl:template>
</xsl:stylesheet>