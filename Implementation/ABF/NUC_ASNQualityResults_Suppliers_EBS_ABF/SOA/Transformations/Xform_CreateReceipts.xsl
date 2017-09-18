<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:ns1="http://schemas.oracle.com/service/bpel/common"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ns0="http://www.example.org" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:tns="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns1 ns0 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ns="http://xmlns.eia.com/ABS/EBiz/ReceiptABS/1.0"
                xmlns:vprop="http://docs.oasis-open.org/wsbpel/2.0/varprop" xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:cor="http:/xmlns.eia.com/Implementation/ABF/NSNE_ASNQualityResults_Suppliers_EBS_ABF/ASNQualityResults_Suppliers/1.0/correlationset"
                xmlns:ns3="http://xmlns.eia.com/EDN/1.0/Event"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/ftp/I109byManish/NSNE_ASNQualityResults_Suppliers_EBS_ABF/FTP_ReadASNSupplier"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns5="http:/xmlns.eia.com/Implementation/ABS/NUC_NUC_EBizQualityResults_ABS/QualityResults/1.0"
                xmlns:ns4="http:/xmlns.eia.com/Implementation/ABS/NUC_EBizLot_ABS/EBizLotABS/1.0"
                xmlns:ns9="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0"
                xmlns:ns10="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptAO/1.0"
                xmlns:ns12="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0"
                xmlns:ns16="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:ns23="http://xmlns.eia.com/AO/EBiz/common/CategoryAO/1.0"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:ns6="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns8="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns11="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns13="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:ns15="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:ns14="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns19="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns18="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:ns17="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns21="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderAO/1.0"
                xmlns:ns20="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns22="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FTP_ReadASNSupplier.wsdl"/>
        <oracle-xsl-mapper:rootElement name="Envelope" namespace="http://www.example.org"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FTP_ReadASNSupplier.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="deriveLPNOrg"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/ReceiptABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateReceiptRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [TUE AUG 16 08:12:25 CDT 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="deriveLPNOrg"/>
  <xsl:template match="/">
    <tns:CreateReceiptRequestMessage>
      <tns:Receipt>
        <ns10:BasicReceipt>
          <ns10:IndentfierID>1</ns10:IndentfierID>
          <ns10:ShipmentNumber>
            <xsl:value-of select="/Envelope/Waybills/Waybill/WaybillNum"/>
          </ns10:ShipmentNumber>
          <ns10:BillOfLAdding>
            <xsl:value-of select="/Envelope/Waybills/Waybill/WaybillNum"/>
          </ns10:BillOfLAdding>
        </ns10:BasicReceipt>
        <ns10:Asntype></ns10:Asntype>
        <ns10:Autotransactcode>RECEIVE</ns10:Autotransactcode>
        <ns10:Carriermethod>
          <xsl:value-of select="/Envelope/FreightInfo/ShipMode"/>
        </ns10:Carriermethod>
        <!--<ns10:Createdby>-1</ns10:Createdby>-->
        <ns10:Expectedreceiptdate>
          <xsl:value-of select="xp20:add-dayTimeDuration-to-dateTime (/Envelope/FreightInfo/ShipDate, 'P1DT0H0M' )"/>
        </ns10:Expectedreceiptdate>
        <ns10:Freightterms>
          <xsl:value-of select="/Envelope/FreightInfo/FreightTerm"/>
        </ns10:Freightterms>
        <ns10:Grossweight>
          <xsl:value-of select="sum(Envelope/Waybills/Waybill/WaybillLines/WaybillLine/LineWgtTtl)"/>
        </ns10:Grossweight>
        <ns10:Groupid></ns10:Groupid>
        <ns10:Lastupdatedby>-1</ns10:Lastupdatedby>
        <ns10:Lastupdatedate>
          <xsl:value-of select="xp20:current-date()"/>
        </ns10:Lastupdatedate>
        <ns10:Netweight>
          <xsl:value-of select="sum(Envelope/Waybills/Waybill/WaybillLines/WaybillLine/LineWgtTtl)"/>
        </ns10:Netweight>
        <ns10:Orgid>derived_ORG_ID</ns10:Orgid>
        <ns10:Processingstatuscode>PENDING</ns10:Processingstatuscode>
        <ns10:Receiptsourcecode>VENDOR</ns10:Receiptsourcecode>
        <ns10:Shippeddate>
          <xsl:value-of select="/Envelope/FreightInfo/ShipDate"/>
        </ns10:Shippeddate>
        <ns10:Transactiontype>NEW</ns10:Transactiontype>
        <ns10:Vendorid>derived_Vendor_Id</ns10:Vendorid>
        <ns10:Vendorsiteid>derived_Vendor_Site_Id</ns10:Vendorsiteid>
        <ns10:ListOfBasicReceiptLines>
          <ns10:ReceiptLine></ns10:ReceiptLine>
        </ns10:ListOfBasicReceiptLines>
        <ns10:ListOfTransactions>
          <xsl:for-each select="/Envelope/Waybills/Waybill/WaybillLines/WaybillLine">
            <xsl:variable name="lastIndexE" select="oraext:last-index-within-string (CustPO,'-')"></xsl:variable>
            <xsl:variable name="lastIndexEHifen">
              <xsl:value-of select="number($lastIndexE)+ 2"/>
            </xsl:variable>
            <xsl:variable name="custPOTagLen" select="string-length (CustPO)"></xsl:variable>
            <xsl:variable name="CustPO">
              <xsl:value-of select="substring(CustPO,1,$lastIndexE)"/>
            </xsl:variable>
            <xsl:variable name="LineNumber">
              <xsl:value-of select="substring(CustPO,$lastIndexEHifen,$custPOTagLen)"/>
            </xsl:variable>
            <xsl:variable name="CustPartNumForCurrentWaybillLine">
              <xsl:value-of select="CustPartNum"/>
            </xsl:variable>
            <xsl:for-each select="Bundles/Bundle">
              <ns10:Transaction>
                <ns10:BasicTransaction>
                  <ns10:TransactionType>RECEIVE</ns10:TransactionType>
                  <ns10:TransactionDate>
                    <xsl:value-of select="xp20:current-date()"/>
                  </ns10:TransactionDate>
                </ns10:BasicTransaction>
                <ns10:AutoTransactCode>RECEIVE</ns10:AutoTransactCode>
                <!--  <ns10:CustomerId>
                <xsl:value-of select="CustPartNum"/>
              </ns10:CustomerId>-->
                <ns10:DestinationTypeCode>RECEIVING</ns10:DestinationTypeCode>
                <ns10:DocumentLineNum>
                  <xsl:value-of select="$LineNumber"/>
                </ns10:DocumentLineNum>
                <ns10:DocumentNum>
                  <xsl:value-of select="$CustPO"/>
                </ns10:DocumentNum>
                <ns10:GroupId></ns10:GroupId>
                <ns10:Item>
                  <ns14:Identifier> <xsl:value-of select="$CustPartNumForCurrentWaybillLine"/></ns14:Identifier>
                </ns10:Item>
                <ns10:OrgId>derived_Org_Id</ns10:OrgId>
                <ns10:Quantity>
                  <xsl:value-of select="TtlWgt"/>
                </ns10:Quantity>
                <!--<ns10:PoUnitPrice>0</ns10:PoUnitPrice>-->
                <ns10:ProcessingModeCode>BATCH</ns10:ProcessingModeCode>
                <ns10:ProcessingStatusCode>PENDING</ns10:ProcessingStatusCode>
                <ns10:ReceiptSourceCode>VENDOR</ns10:ReceiptSourceCode>
                <ns10:SourceDocumentCode>PO</ns10:SourceDocumentCode>
                <ns10:ToOrganizationId>derived_ToOrgId</ns10:ToOrganizationId>
                <ns10:TransactionDate>
                  <xsl:value-of select="xp20:current-date()"/>
                </ns10:TransactionDate>
                <ns10:TransactionStatusCode>PENDING</ns10:TransactionStatusCode>
                <ns10:TransactionType>RECEIVE</ns10:TransactionType>
                <ns10:TransferLicensePlateNumber><xsl:value-of select="BundleNum"/></ns10:TransferLicensePlateNumber>
                <ns10:TruckNum>
                  <xsl:value-of select="/Envelope/FreightInfo/Carrier/VehicleID"/>
                </ns10:TruckNum>
                 <xsl:choose>
          <xsl:when test="contains($deriveLPNOrg/ns1:parameters/ns1:item/ns1:name, 'cfne' )">
                <ns10:UomCode>LBS</ns10:UomCode>
                </xsl:when>
                  <xsl:when test="contains($deriveLPNOrg/ns1:parameters/ns1:item/ns1:name, 'asntro' )">
                <ns10:UomCode><xsl:value-of select="xp20:upper-case(TtlWgt/@UOM)"/></ns10:UomCode>
                </xsl:when>
                <xsl:otherwise>
                 <ns10:UomCode>LBS</ns10:UomCode>
                </xsl:otherwise>
                </xsl:choose>
                <ns10:ValidationFlag>Y</ns10:ValidationFlag>
                <ns10:WaybillAirbillNum>206650</ns10:WaybillAirbillNum>
                <ns10:ListOfLotTxns>
                  <ns10:LotTransaction>
                    <ns10:LotNumber><xsl:value-of select="HeatNum"/></ns10:LotNumber>
                    <ns10:PrimaryQuantity>
                      <xsl:value-of select="TtlWgt"/>
                    </ns10:PrimaryQuantity>
                    <ns10:ProductCode>RCV</ns10:ProductCode>
                    <ns10:TransactionQuantity>
                      <xsl:value-of select="TtlWgt"/>
                    </ns10:TransactionQuantity>
                    <ns10:WhoColumns>
                    <ns12:LastUpdatedDate><xsl:value-of select="xp20:current-date()"/></ns12:LastUpdatedDate>
                    </ns10:WhoColumns>
                  </ns10:LotTransaction>
                </ns10:ListOfLotTxns>
               
              </ns10:Transaction>
            </xsl:for-each>
          </xsl:for-each>
        </ns10:ListOfTransactions>
      </tns:Receipt>
    </tns:CreateReceiptRequestMessage>
  </xsl:template>
</xsl:stylesheet>
