<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ns0="http://xmlns.eia.com/AO/EBiz/O2C/OrderAM/1.0"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 xp20 oraxsl mhdr oraext dvm xref utl socket"
                xmlns:tns="http://xmlns.eia.com/ABS/EBiz/O2C/OrderABS/1.0"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:ns3="http://xmlns.eia.com/AO/EBiz/O2C/OrderAO/1.0"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns1="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns2="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns5="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns8="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:ns7="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns4="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns6="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/O2C/OrderABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryBasicSalesOrderRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/O2C/OrderAM/1.0"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/O2C/OrderABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryBasicSalesOrderResponseMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/O2C/OrderAM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [SAT AUG 19 00:44:00 CDT 2017].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <ns0:QueryBasicSalesOrderResponseMessage>
      <ns0:ListOfBasicOrders>
        <ns0:BasicOrder>
          <ns3:OrganizationId>86</ns3:OrganizationId>
          <ns3:OrganizationCode>NSNE</ns3:OrganizationCode>
          <ns3:OrderNumber>9999999</ns3:OrderNumber>
          <ns3:SoldToCustomerNumber>999999</ns3:SoldToCustomerNumber>
          <ns3:SoldToCustomerName>PARTY NAME</ns3:SoldToCustomerName>
          <ns3:SoldToContact>MR JOHN DOE</ns3:SoldToContact>
          <ns3:HeaderId>999999</ns3:HeaderId>
          <ns3:OrderedDate>
            <xsl:value-of select="xp20:current-dateTime ( )"/>
          </ns3:OrderedDate>
          <ns3:OrigSysDocumentRef>REFERENCE #1</ns3:OrigSysDocumentRef>
          <ns3:CustomerPONumber>CUSTOMER PO #</ns3:CustomerPONumber>
          <ns3:BillToCustomerName>CUSTOMER NAME</ns3:BillToCustomerName>
          <ns3:BillToCustomerNumber>999999</ns3:BillToCustomerNumber>
          <ns3:BillToContact>MR JOHN DOE</ns3:BillToContact>
          <ns3:ShipToCustomerNumber>999999</ns3:ShipToCustomerNumber>
          <ns3:ShipToCustomerName>FORD MOTOR COMPANY</ns3:ShipToCustomerName>
          <ns3:ShipToContact>MR JOHN DOE</ns3:ShipToContact>
          <ns3:PriceListName>GENERAL PRICE LIST</ns3:PriceListName>
          <ns3:SalesRep>MIKE ROSS</ns3:SalesRep>
          <ns3:OrderSource>ORDER SOURCE</ns3:OrderSource>
          <ns3:OrderTypeName>ORDER TYPE</ns3:OrderTypeName>
          <ns3:ShipFromOrg>NSNE</ns3:ShipFromOrg>
          <ns3:FlowStatusCode>BOOKED</ns3:FlowStatusCode>
          <ns3:TotalAmount>1000</ns3:TotalAmount>
          <ns3:TransactionalCurrencyCode>USD</ns3:TransactionalCurrencyCode>
          <ns0:ListOfBasicOrderLines>
            <ns3:BasicOrderLines>
              <ns3:OrganizationId>86</ns3:OrganizationId>
              <ns3:OrganizationCode>NSNE</ns3:OrganizationCode>
              <ns3:OrderNumber>999999</ns3:OrderNumber>
              <ns3:OrderLineNumber>1</ns3:OrderLineNumber>
              <ns3:ShipmentNumber>1</ns3:ShipmentNumber>
              <ns3:OrderedItem>EBS ITEM NUMBER #</ns3:OrderedItem>
              <ns3:ItemIdentifierType>ITEM</ns3:ItemIdentifierType>
              <ns3:OrderLineType>GENERICE LINE TYPE</ns3:OrderLineType>
              <ns3:OriginalOrderedItem>9900909</ns3:OriginalOrderedItem>
              <ns3:OriginalItemIdentifierType>CUSTOMER</ns3:OriginalItemIdentifierType>
              <ns3:RequestDate>
                <xsl:value-of select="xp20:current-dateTime ( )"/>
              </ns3:RequestDate>
              <ns3:ScheduledShipDate>
                <xsl:value-of select="xp20:current-dateTime ( )"/>
              </ns3:ScheduledShipDate>
              <ns3:OrderedQuantityUOM>TON</ns3:OrderedQuantityUOM>
              <ns3:OrderedQuantity>10</ns3:OrderedQuantity>
              <ns3:OrderedQuantityUOM2>EA</ns3:OrderedQuantityUOM2>
              <ns3:OrderedQuantity2>9.1</ns3:OrderedQuantity2>
              <ns3:UnitListPrice>1.25</ns3:UnitListPrice>
              <ns3:UnitSellingPrice>1.24</ns3:UnitSellingPrice>
              <ns3:TotalAmount>120.50</ns3:TotalAmount>
              <ns3:TransactionalCurrencyCode>USD</ns3:TransactionalCurrencyCode>
              <ns3:ShippingMethod>TRUCK</ns3:ShippingMethod>
              <ns3:HeaderId>999999</ns3:HeaderId>
              <ns3:LineId>999999</ns3:LineId>
              <ns3:FlowStatusCode>BOOKED</ns3:FlowStatusCode>
              <ns3:ScheduleStatusCode>SHCEUDLED</ns3:ScheduleStatusCode>
              <ns3:OrigSysLineRef>LINE REFENCE #</ns3:OrigSysLineRef>
              <ns3:LineCategoryCode>ORDER</ns3:LineCategoryCode>
            </ns3:BasicOrderLines>
          </ns0:ListOfBasicOrderLines>
        </ns0:BasicOrder>
      </ns0:ListOfBasicOrders>
    </ns0:QueryBasicSalesOrderResponseMessage>
  </xsl:template>
</xsl:stylesheet>