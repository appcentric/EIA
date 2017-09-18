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
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns4="http://xmlns.eia.com/AM/EBiz/P2P/LotAM/1.0"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns1 ns0 ns4 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:ns3="http://xmlns.eia.com/ABS/EBiz/PurchaseOrderABS/1.0"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/ftp/109/NUC_ASNQualityResults_Suppliers_Ross_ABF/FTP_ReadASNSupplier_Ross"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns13="http://xmlns.eia.com/AO/EBiz/P2P/LotAO/1.0"
                xmlns:ns5="http:/xmlns.eia.com/Implementation/ABS/NUC_EBizLot_ABS/EBizLotABS/1.0"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0" xmlns:ns7="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns="http://xmlns.eia.com/ABS/EBiz/ReceiptABS/1.0"
                xmlns:ns9="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:vprop="http://docs.oasis-open.org/wsbpel/2.0/varprop"
                xmlns:ns11="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns10="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:ns6="http://xmlns.eia.com/EDN/1.0/Event"
                xmlns:ns8="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:cor="http:/xmlns.eia.com/Implementation/ABF/NSNE_ASNQualityResults_Suppliers_Ross_ABF/ASNQualityResults_Suppliers/1.0/correlationset"
                xmlns:ns12="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:ns17="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptAO/1.0"
                xmlns:ns14="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns19="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:ns24="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderAO/1.0"
                xmlns:ns16="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0"
                xmlns:ns18="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0"
                xmlns:ns20="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:ns25="http://xmlns.eia.com/AO/EBiz/common/CategoryAO/1.0"
                xmlns:ns15="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:ns23="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns21="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns22="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FTP_ReadASNSupplier_Ross.wsdl"/>
        <oracle-xsl-mapper:rootElement name="Envelope" namespace="http://www.example.org"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FTP_ReadASNSupplier_Ross.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="g_derivedOrgId_Lines"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FTP_ReadASNSupplier_Ross.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="g_derivedToOrgId_Lines"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FTP_ReadASNSupplier_Ross.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="g_itemNumber"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/LotABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateLotResp" namespace="http://xmlns.eia.com/AM/EBiz/P2P/LotAM/1.0"/>
        <oracle-xsl-mapper:param name="g_CreateLotABSResp_OutputVar.payload"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FTP_ReadASNSupplier_Ross.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="g_GroupId"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/ReceiptABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateReceiptRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED AUG 24 07:01:33 PDT 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="g_derivedOrgId_Lines"/>
  <xsl:param name="g_derivedToOrgId_Lines"/>
  <xsl:param name="g_itemNumber"/>
  <xsl:param name="g_CreateLotABSResp_OutputVar.payload"/>
  <xsl:param name="g_GroupId"/>
  <xsl:template match="/">
    <tns:CreateReceiptRequestMessage>
      <ns11:HeaderRq>
        <ns11:TransactionRequestID/>
         <ns11:Language/>
        <ns11:ComponentID/>
        <ns11:ServiceName/>
        <ns11:TransactionIDREF/>
        <ns11:TransactionName/>
        <ns11:Source/>
        <ns11:Target/>
        <ns11:MillName/>
      </ns11:HeaderRq>
      <tns:AppsContext>
        <ns10:UserName/>
        <ns10:ResponsibilityName/>
        <ns10:OrgId/>
      </tns:AppsContext>
      <tns:Receipt>
        <ns17:BasicReceipt>
          <ns17:IndentfierID>1</ns17:IndentfierID>
          <ns17:ShipmentNumber>
            <xsl:value-of select="/Envelope/Waybills/Waybill/WaybillNum"/>
          </ns17:ShipmentNumber>
          <ns17:BillOfLAdding>
            <xsl:value-of select="/Envelope/Waybills/Waybill/WaybillNum"/>
          </ns17:BillOfLAdding>
        </ns17:BasicReceipt>
        <ns17:Asntype></ns17:Asntype>
        <ns17:Autotransactcode>RECEIVE</ns17:Autotransactcode>
        <ns17:Carriermethod>
          <xsl:value-of select="/Envelope/FreightInfo/ShipMode"/>
        </ns17:Carriermethod>
        <ns17:Expectedreceiptdate>
          <xsl:value-of select="xp20:add-dayTimeDuration-to-dateTime (/Envelope/FreightInfo/ShipDate, 'P1DT0H0M' )"/>
        </ns17:Expectedreceiptdate>
        <ns17:Freightterms>
          <xsl:value-of select="/Envelope/FreightInfo/FreightTerm"/>
        </ns17:Freightterms>
        <ns17:Grossweight>
          <xsl:value-of select="sum(Envelope/Waybills/Waybill/WaybillLines/WaybillLine/LineWgtTtl)"/>
        </ns17:Grossweight>
        <ns17:Groupid><xsl:value-of select="$g_GroupId/ns1:parameters/ns1:item/ns1:value"/></ns17:Groupid>
        <ns17:Lastupdatedby>-1</ns17:Lastupdatedby>
        <ns17:Lastupdatedate>
          <xsl:value-of select="xp20:current-date()"/>
        </ns17:Lastupdatedate>
        <ns17:Netweight>
          <xsl:value-of select="sum(Envelope/Waybills/Waybill/WaybillLines/WaybillLine/LineWgtTtl)"/>
        </ns17:Netweight>
        <ns17:Orgid>derived_ORG_ID</ns17:Orgid>
        <ns17:Processingstatuscode>PENDING</ns17:Processingstatuscode>
        <ns17:Receiptsourcecode>VENDOR</ns17:Receiptsourcecode>
        <ns17:Shippeddate>
          <xsl:value-of select="/Envelope/FreightInfo/ShipDate"/>
        </ns17:Shippeddate>
        <ns17:Transactiontype>NEW</ns17:Transactiontype>
        <ns17:Vendorid>derived_Vendor_Id</ns17:Vendorid>
        <ns17:Vendorsiteid>derived_Vendor_Site_Id</ns17:Vendorsiteid>
        <ns17:ListOfTransactions>
          <xsl:for-each select="Envelope/Waybills/Waybill/WaybillLines/WaybillLine">
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
            <xsl:for-each select="Bundles/Bundle">
              <xsl:variable name="heatForCurrentBundle">
                <xsl:value-of select="HeatNum"/>
              </xsl:variable>
              <ns17:Transaction>
                <ns17:BasicTransaction>
                  <ns17:TransactionType>RECEIVE</ns17:TransactionType>
                  <ns17:TransactionDate>
                    <xsl:value-of select="xp20:current-date()"/>
                  </ns17:TransactionDate>
                </ns17:BasicTransaction>
                <ns17:AutoTransactCode>RECEIVE</ns17:AutoTransactCode>
                <ns17:DestinationTypeCode>RECEIVING</ns17:DestinationTypeCode>
                <ns17:DocumentLineNum>
                  <xsl:value-of select="$LineNumber"/>
                </ns17:DocumentLineNum>
                <ns17:DocumentNum>
                  <xsl:value-of select="$CustPO"/>
                </ns17:DocumentNum>
                <ns17:GroupId><xsl:value-of select="$g_GroupId/ns1:parameters/ns1:item/ns1:value"/></ns17:GroupId>
                <ns17:Item>
                  <ns20:Identifier>
                    <xsl:value-of select="$g_itemNumber/ns1:parameters/ns1:item[(ns1:name = $CustPO) and (ns1:msg = $LineNumber)]/ns1:value"/>
                  </ns20:Identifier>
                </ns17:Item>
                <ns17:OrgId>
                  <xsl:value-of select="$g_derivedOrgId_Lines/ns1:parameters/ns1:item[(ns1:name = $CustPO) and (ns1:msg = $LineNumber)]/ns1:value"/>
                </ns17:OrgId>
                <ns17:Quantity>
                  <xsl:value-of select="TtlWgt"/>
                </ns17:Quantity>
                <!--<ns17:PoUnitPrice>0</ns17:PoUnitPrice>-->
                <ns17:ProcessingModeCode>BATCH</ns17:ProcessingModeCode>
                <ns17:ProcessingStatusCode>PENDING</ns17:ProcessingStatusCode>
                <ns17:ReceiptSourceCode>VENDOR</ns17:ReceiptSourceCode>
                <ns17:SourceDocumentCode>PO</ns17:SourceDocumentCode>
                <ns17:ToOrganizationId>
                  <xsl:value-of select="$g_derivedToOrgId_Lines/ns1:parameters/ns1:item[(ns1:name = $CustPO) and (ns1:msg = $LineNumber)]/ns1:value"/>
                </ns17:ToOrganizationId>
                <ns17:TransactionDate>
                  <xsl:value-of select="xp20:current-date()"/>
                </ns17:TransactionDate>
                <ns17:TransactionStatusCode>PENDING</ns17:TransactionStatusCode>
                <ns17:TransactionType>RECEIVE</ns17:TransactionType>
                <ns17:TransferLicensePlateNumber>
                  <xsl:value-of select="BundleNum"/>
                </ns17:TransferLicensePlateNumber>
                <ns17:TruckNum>
                  <xsl:value-of select="/Envelope/FreightInfo/Carrier/VehicleID"/>
                </ns17:TruckNum>
                <ns17:UomCode>
                  <xsl:value-of select="xp20:upper-case(TtlWgt/@UOM)"/>
                </ns17:UomCode>
                <ns17:ListOfLotTxns>
                  <ns17:LotTransaction>
                    <ns17:LotNumber>
                      <xsl:value-of select="$g_CreateLotABSResp_OutputVar.payload/ns4:CreateLotResp/ns13:CreateLotResp/ns13:LotStatus/ns13:LotStatusItem[(ns13:HEAT_NUMBER = $heatForCurrentBundle) and ($heatForCurrentBundle != ns13:LOT_NUMBER)]/ns13:LOT_NUMBER"/>
                    </ns17:LotNumber>
                    <ns17:PrimaryQuantity>
                      <xsl:value-of select="TtlWgt"/>
                    </ns17:PrimaryQuantity>
                    <ns17:ProductCode>RCV</ns17:ProductCode>
                    <ns17:TransactionQuantity>
                      <xsl:value-of select="TtlWgt"/>
                    </ns17:TransactionQuantity>
                    <!--<ns17:WhoColumns>
                    <ns12:LastUpdatedDate><xsl:value-of select="xp20:current-date()"/></ns12:LastUpdatedDate>
                    </ns17:WhoColumns>-->
                  </ns17:LotTransaction>
                </ns17:ListOfLotTxns>
              </ns17:Transaction>
            </xsl:for-each>
          </xsl:for-each>
        </ns17:ListOfTransactions>
      </tns:Receipt>
    </tns:CreateReceiptRequestMessage>
  </xsl:template>
</xsl:stylesheet>
