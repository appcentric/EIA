<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:tns="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderABM/1.0"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ns1="http://schemas.oracle.com/service/bpel/common"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns1 tns mhdr oraext xp20 xref socket dvm utl oraxsl"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns0="http://xmlns.oracle.com/SOAAppDev/NUC_PurchaseOrder_DJJ_EBiz_ABF/DJJGetPurchaseOrdersV1"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns4="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:ns6="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns9="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0"
                xmlns:ns14="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:ns17="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:ns18="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns3="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns5="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns7="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:ns8="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns10="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:ns11="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns2="http://xmlns.eia.com/ABS/EBiz/PurchaseOrderABS/1.0"
                xmlns:ns12="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns13="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderAO/1.0"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:ns15="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:ns16="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DJJGetPurchaseOrdersV1.wsdl"/>
        <oracle-xsl-mapper:rootElement name="ApiResponsePOHeader" namespace=""/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DJJGetPurchaseOrdersV1.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="gblGenericParameters"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/PurchaseOrderABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryPurchaseOrderRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderABM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [TUE DEC 08 16:12:20 CST 2015].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="gblGenericParameters"/>
  <xsl:template match="/">
    <xsl:variable name="varDJJPOIdx"
                  select="number($gblGenericParameters/ns1:parameters/ns1:item[ns1:name='DJJPOIdx']/ns1:value)"/>
    <tns:QueryPurchaseOrderRequestMessage>
      <ns6:HeaderRq>
        <ns6:Language>ENG</ns6:Language>
        <ns6:ComponentID>I093</ns6:ComponentID>
        <ns6:ServiceName>TEMP</ns6:ServiceName>
        <ns6:TransactionIDREF>TEMP</ns6:TransactionIDREF>
        <ns6:TransactionName>PurchaseOrder</ns6:TransactionName>
        <ns6:Source>15</ns6:Source>
        <ns6:Target>2</ns6:Target>
        <ns6:TimeStamp>
          <xsl:value-of select="xp20:current-dateTime ( )"/>
        </ns6:TimeStamp>
      </ns6:HeaderRq>
      <tns:PurchaseOrder>
        <!--ns13:Orgid>88</ns13:Orgid-->
        <ns13:Segment1>
          <xsl:value-of select="/ApiResponsePOHeader/POHeader/POConsumerHeaderModel[$varDJJPOIdx]/POID"/>
        </ns13:Segment1>
      </tns:PurchaseOrder>
    </tns:QueryPurchaseOrderRequestMessage>
  </xsl:template>
</xsl:stylesheet>