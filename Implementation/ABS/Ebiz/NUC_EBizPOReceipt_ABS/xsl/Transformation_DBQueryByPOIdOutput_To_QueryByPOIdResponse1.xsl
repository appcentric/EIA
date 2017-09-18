<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_QueryReceiptsByPO"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns1="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 ns1 xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:ns6="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptAO/1.0"
                xmlns:ns9="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0"
                xmlns:ns13="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/DV1Application/NUC_EBizPOReceipt_ABS/DB_QueryReceiptsByPO"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:ns20="http://xmlns.eia.com/AO/EBiz/common/CategoryAO/1.0"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns3="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns4="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:ns5="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns2="http://xmlns.eia.com/ABS/EBiz/ReceiptABS/1.0"
                xmlns:ns8="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns10="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:ns12="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:ns11="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns16="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns15="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:ns14="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns18="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderAO/1.0"
                xmlns:ns17="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns19="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../DB_QueryReceiptsByPO.wsdl"/>
        <oracle-xsl-mapper:rootElement name="PoHeadersAllCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_QueryReceiptsByPO"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/ReceiptABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryReceiptRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"/>
        <oracle-xsl-mapper:param name="OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/ReceiptABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryReceiptResponseMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED FEB 17 10:31:45 CST 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage"/>
  <xsl:template match="/">
    <ns1:QueryReceiptResponseMessage>
      <ns11:HeaderRs>
        <ns11:RequestDetails>
          <ns11:TransactionRequestID>
            <xsl:value-of select="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:TransactionRequestID"/>
          </ns11:TransactionRequestID>
          <ns11:Language>
            <xsl:value-of select="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:Language"/>
          </ns11:Language>
          <ns11:ComponentID>
            <xsl:value-of select="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:ComponentID"/>
          </ns11:ComponentID>
          <ns11:ServiceName>
            <xsl:value-of select="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:ServiceName"/>
          </ns11:ServiceName>
          <xsl:if test="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:TransactionIDREF">
            <ns11:TransactionIDREF>
              <xsl:value-of select="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:TransactionIDREF"/>
            </ns11:TransactionIDREF>
          </xsl:if>
          <xsl:if test="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:TransactionName">
            <ns11:TransactionName>
              <xsl:value-of select="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:TransactionName"/>
            </ns11:TransactionName>
          </xsl:if>
          <xsl:if test="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:FileName">
            <ns11:FileName>
              <xsl:value-of select="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:FileName"/>
            </ns11:FileName>
          </xsl:if>
          <xsl:if test="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:FileInstanceID">
            <ns11:FileInstanceID>
              <xsl:value-of select="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:FileInstanceID"/>
            </ns11:FileInstanceID>
          </xsl:if>
          <xsl:if test="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:Source">
            <ns11:Source>
              <xsl:value-of select="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:Source"/>
            </ns11:Source>
          </xsl:if>
          <xsl:if test="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:Target">
            <ns11:Target>
              <xsl:value-of select="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:Target"/>
            </ns11:Target>
          </xsl:if>
          <xsl:if test="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:HostName">
            <ns11:HostName>
              <xsl:value-of select="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:HostName"/>
            </ns11:HostName>
          </xsl:if>
          <xsl:if test="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:UserName">
            <ns11:UserName>
              <xsl:value-of select="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:UserName"/>
            </ns11:UserName>
          </xsl:if>
          <xsl:if test="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:UserRole">
            <ns11:UserRole>
              <xsl:value-of select="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:UserRole"/>
            </ns11:UserRole>
          </xsl:if>
          <xsl:if test="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:AdminEmail">
            <ns11:AdminEmail>
              <xsl:value-of select="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:AdminEmail"/>
            </ns11:AdminEmail>
          </xsl:if>
          <xsl:if test="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:ApplicationResponsibility">
            <ns11:ApplicationResponsibility>
              <xsl:value-of select="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:ApplicationResponsibility"/>
            </ns11:ApplicationResponsibility>
          </xsl:if>
          <xsl:if test="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:EOFFlag">
            <ns11:EOFFlag>
              <xsl:value-of select="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:EOFFlag"/>
            </ns11:EOFFlag>
          </xsl:if>
          <xsl:if test="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:SOFFlag">
            <ns11:SOFFlag>
              <xsl:value-of select="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:SOFFlag"/>
            </ns11:SOFFlag>
          </xsl:if>
          <xsl:if test="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:FileRecordCount">
            <ns11:FileRecordCount>
              <xsl:value-of select="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:FileRecordCount"/>
            </ns11:FileRecordCount>
          </xsl:if>
          <xsl:if test="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:TimeStamp">
            <ns11:TimeStamp>
              <xsl:value-of select="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:TimeStamp"/>
            </ns11:TimeStamp>
          </xsl:if>
          <xsl:if test="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:MillName">
            <ns11:MillName>
              <xsl:value-of select="$OnMessage_QueryReceiptByPOId_Sync_InputVariable.QueryReceiptRequestMessage/ns1:QueryReceiptRequestMessage/ns11:HeaderRq/ns11:MillName"/>
            </ns11:MillName>
          </xsl:if>
        </ns11:RequestDetails>
        <ns11:Status>
          <ns11:Status>SUCCESS</ns11:Status>
        </ns11:Status>
      </ns11:HeaderRs>
      <ns1:OperationResult>
        <ns3:Stats>S</ns3:Stats>
      </ns1:OperationResult>
      <ns1:ListOfReceipts>
        <xsl:for-each select="/ns0:PoHeadersAllCollection/ns0:PoHeadersAll/ns0:poHeaderAllTorcvTransactionsCollection/ns0:RcvTransactions">
          <ns7:Receipt>
            <ns7:BasicReceipt>
              <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:shipmentHeaderId">
                <ns7:IndentfierID>
                  <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:shipmentHeaderId"/>
                </ns7:IndentfierID>
              </xsl:if>
              <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:receiptNum">
                <ns7:ReceiptNumber>
                  <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:receiptNum"/>
                </ns7:ReceiptNumber>
              </xsl:if>
              <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:shipmentNum">
                <ns7:ShipmentNumber>
                  <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:shipmentNum"/>
                </ns7:ShipmentNumber>
              </xsl:if>
              <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:billOfLading">
                <ns7:BillOfLAdding>
                  <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:billOfLading"/>
                </ns7:BillOfLAdding>
              </xsl:if>
              <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:packingSlip">
                <ns7:Packing>
                  <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:packingSlip"/>
                </ns7:Packing>
              </xsl:if>
            </ns7:BasicReceipt>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:approvalStatus">
              <ns7:Approvalstatus>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:approvalStatus"/>
              </ns7:Approvalstatus>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:asnStatus">
              <ns7:Asnstatus>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:asnStatus"/>
              </ns7:Asnstatus>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:asnType">
              <ns7:Asntype>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:asnType"/>
              </ns7:Asntype>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:carrierEquipment">
              <ns7:Carrierequipment>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:carrierEquipment"/>
              </ns7:Carrierequipment>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:carrierEquipmentAlpha">
              <ns7:Carrierequipmentalpha>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:carrierEquipmentAlpha"/>
              </ns7:Carrierequipmentalpha>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:carrierEquipmentNum">
              <ns7:Carrierequipmentnum>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:carrierEquipmentNum"/>
              </ns7:Carrierequipmentnum>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:carrierMethod">
              <ns7:Carriermethod>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:carrierMethod"/>
              </ns7:Carriermethod>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:comments">
              <ns7:Comments>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:comments"/>
              </ns7:Comments>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:conversionDate">
              <ns7:Conversiondate>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:conversionDate"/>
              </ns7:Conversiondate>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:conversionRate">
              <ns7:Conversionrate>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:conversionRate"/>
              </ns7:Conversionrate>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:conversionRateType">
              <ns7:Conversionratetype>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:conversionRateType"/>
              </ns7:Conversionratetype>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:currencyCode">
              <ns7:Currencycode>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:currencyCode"/>
              </ns7:Currencycode>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:customerId">
              <ns7:Customerid>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:customerId"/>
              </ns7:Customerid>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:customerSiteId">
              <ns7:Customersiteid>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:customerSiteId"/>
              </ns7:Customersiteid>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:ediControlNum">
              <ns7:Edicontrolnum>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:ediControlNum"/>
              </ns7:Edicontrolnum>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:employeeId">
              <ns7:Employeeid>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:employeeId"/>
              </ns7:Employeeid>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:expectedReceiptDate">
              <ns7:Expectedreceiptdate>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:expectedReceiptDate"/>
              </ns7:Expectedreceiptdate>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:freightAmount">
              <ns7:Freightamount>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:freightAmount"/>
              </ns7:Freightamount>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:freightBillNumber">
              <ns7:Freightbillnumber>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:freightBillNumber"/>
              </ns7:Freightbillnumber>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:freightCarrierCode">
              <ns7:Freightcarriercode>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:freightCarrierCode"/>
              </ns7:Freightcarriercode>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:freightTerms">
              <ns7:Freightterms>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:freightTerms"/>
              </ns7:Freightterms>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:governmentContext">
              <ns7:Governmentcontext>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:governmentContext"/>
              </ns7:Governmentcontext>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:grossWeight">
              <ns7:Grossweight>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:grossWeight"/>
              </ns7:Grossweight>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:grossWeightUomCode">
              <ns7:Grossweightuomcode>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:grossWeightUomCode"/>
              </ns7:Grossweightuomcode>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:hazardClass">
              <ns7:Hazardclass>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:hazardClass"/>
              </ns7:Hazardclass>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:hazardCode">
              <ns7:Hazardcode>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:hazardCode"/>
              </ns7:Hazardcode>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:hazardDescription">
              <ns7:Hazarddescription>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:hazardDescription"/>
              </ns7:Hazarddescription>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:invoiceAmount">
              <ns7:Invoiceamount>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:invoiceAmount"/>
              </ns7:Invoiceamount>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:invoiceDate">
              <ns7:Invoicedate>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:invoiceDate"/>
              </ns7:Invoicedate>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:invoiceNum">
              <ns7:Invoicenum>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:invoiceNum"/>
              </ns7:Invoicenum>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:invoiceStatusCode">
              <ns7:Invoicestatuscode>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:invoiceStatusCode"/>
              </ns7:Invoicestatuscode>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:mrcConversionDate">
              <ns7:Mrcconversiondate>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:mrcConversionDate"/>
              </ns7:Mrcconversiondate>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:mrcConversionRate">
              <ns7:Mrcconversionrate>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:mrcConversionRate"/>
              </ns7:Mrcconversionrate>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:mrcConversionRateType">
              <ns7:Mrcconversionratetype>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:mrcConversionRateType"/>
              </ns7:Mrcconversionratetype>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:netWeight">
              <ns7:Netweight>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:netWeight"/>
              </ns7:Netweight>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:netWeightUomCode">
              <ns7:Netweightuomcode>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:netWeightUomCode"/>
              </ns7:Netweightuomcode>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:noticeCreationDate">
              <ns7:Noticecreationdate>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:noticeCreationDate"/>
              </ns7:Noticecreationdate>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:numOfContainers">
              <ns7:Numofcontainers>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:numOfContainers"/>
              </ns7:Numofcontainers>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:organizationId">
              <ns7:Organizationid>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:organizationId"/>
              </ns7:Organizationid>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:packagingCode">
              <ns7:Packagingcode>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:packagingCode"/>
              </ns7:Packagingcode>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:paymentTermsId">
              <ns7:Paymenttermsid>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:paymentTermsId"/>
              </ns7:Paymenttermsid>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:performancePeriodFrom">
              <ns7:Performanceperiodfrom>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:performancePeriodFrom"/>
              </ns7:Performanceperiodfrom>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:performancePeriodTo">
              <ns7:Performanceperiodto>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:performancePeriodTo"/>
              </ns7:Performanceperiodto>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:programApplicationId">
              <ns7:Programapplicationid>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:programApplicationId"/>
              </ns7:Programapplicationid>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:programId">
              <ns7:Programid>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:programId"/>
              </ns7:Programid>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:programUpdateDate">
              <ns7:Programupdatedate>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:programUpdateDate"/>
              </ns7:Programupdatedate>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:receiptSourceCode">
              <ns7:Receiptsourcecode>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:receiptSourceCode"/>
              </ns7:Receiptsourcecode>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:remitToSiteId">
              <ns7:Remittositeid>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:remitToSiteId"/>
              </ns7:Remittositeid>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:requestDate">
              <ns7:Requestdate>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:requestDate"/>
              </ns7:Requestdate>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:requestId">
              <ns7:Requestid>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:requestId"/>
              </ns7:Requestid>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:shippedDate">
              <ns7:Shippeddate>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:shippedDate"/>
              </ns7:Shippeddate>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:shipFromLocationId">
              <ns7:Shipfromlocationid>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:shipFromLocationId"/>
              </ns7:Shipfromlocationid>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:shipToLocationId">
              <ns7:Shiptolocationid>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:shipToLocationId"/>
              </ns7:Shiptolocationid>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:shipToOrgId">
              <ns7:Shiptoorgid>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:shipToOrgId"/>
              </ns7:Shiptoorgid>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:specialHandlingCode">
              <ns7:Specialhandlingcode>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:specialHandlingCode"/>
              </ns7:Specialhandlingcode>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:tarWeight">
              <ns7:Tarweight>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:tarWeight"/>
              </ns7:Tarweight>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:tarWeightUomCode">
              <ns7:Tarweightuomcode>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:tarWeightUomCode"/>
              </ns7:Tarweightuomcode>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:taxAmount">
              <ns7:Taxamount>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:taxAmount"/>
              </ns7:Taxamount>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:taxName">
              <ns7:Taxname>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:taxName"/>
              </ns7:Taxname>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:ussglTransactionCode">
              <ns7:Ussgltransactioncode>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:ussglTransactionCode"/>
              </ns7:Ussgltransactioncode>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:vendorId">
              <ns7:Vendorid>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:vendorId"/>
              </ns7:Vendorid>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:vendorSiteId">
              <ns7:Vendorsiteid>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:vendorSiteId"/>
              </ns7:Vendorsiteid>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:waybillAirbillNum">
              <ns7:Waybillairbillnum>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:waybillAirbillNum"/>
              </ns7:Waybillairbillnum>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:wfItemKey">
              <ns7:Wfitemkey>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:wfItemKey"/>
              </ns7:Wfitemkey>
            </xsl:if>
            <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:wfItemType">
              <ns7:Wfitemtype>
                <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:wfItemType"/>
              </ns7:Wfitemtype>
            </xsl:if>
            <ns7:HeaderDFF>
              <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attributeCategory">
                <ns15:AttributeCategory>
                  <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attributeCategory"/>
                </ns15:AttributeCategory>
              </xsl:if>
              <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute1">
                <ns15:Attribute1>
                  <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute1"/>
                </ns15:Attribute1>
              </xsl:if>
              <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute2">
                <ns15:Attribute2>
                  <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute2"/>
                </ns15:Attribute2>
              </xsl:if>
              <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute3">
                <ns15:Attribute3>
                  <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute3"/>
                </ns15:Attribute3>
              </xsl:if>
              <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute4">
                <ns15:Attribute4>
                  <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute4"/>
                </ns15:Attribute4>
              </xsl:if>
              <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute5">
                <ns15:Attribute5>
                  <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute5"/>
                </ns15:Attribute5>
              </xsl:if>
              <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute6">
                <ns15:Attribute6>
                  <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute6"/>
                </ns15:Attribute6>
              </xsl:if>
              <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute7">
                <ns15:Attribute7>
                  <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute7"/>
                </ns15:Attribute7>
              </xsl:if>
              <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute8">
                <ns15:Attribute8>
                  <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute8"/>
                </ns15:Attribute8>
              </xsl:if>
              <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute9">
                <ns15:Attribute9>
                  <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute9"/>
                </ns15:Attribute9>
              </xsl:if>
              <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute10">
                <ns15:Attribute10>
                  <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute10"/>
                </ns15:Attribute10>
              </xsl:if>
              <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute11">
                <ns15:Attribute11>
                  <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute11"/>
                </ns15:Attribute11>
              </xsl:if>
              <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute12">
                <ns15:Attribute12>
                  <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute12"/>
                </ns15:Attribute12>
              </xsl:if>
              <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute13">
                <ns15:Attribute13>
                  <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute13"/>
                </ns15:Attribute13>
              </xsl:if>
              <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute14">
                <ns15:Attribute14>
                  <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute14"/>
                </ns15:Attribute14>
              </xsl:if>
              <xsl:if test="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute15">
                <ns15:Attribute15>
                  <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentHeaders/ns0:attribute15"/>
                </ns15:Attribute15>
              </xsl:if>
            </ns7:HeaderDFF>
            <ns7:ListOfBasicReceiptLines>
              <ns7:ReceiptLine>
                <ns7:BasicReceiptLine>
                  <xsl:if test="ns0:rcvTransactionsTorcvShipmentLines/ns0:shipmentLineId">
                    <ns7:Identfier>
                      <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentLines/ns0:shipmentLineId"/>
                    </ns7:Identfier>
                  </xsl:if>
                  <xsl:if test="ns0:rcvTransactionsTorcvShipmentLines/ns0:shipmentHeaderId">
                    <ns7:HeaderIdentifier>
                      <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentLines/ns0:shipmentHeaderId"/>
                    </ns7:HeaderIdentifier>
                  </xsl:if>
                  <xsl:if test="ns0:rcvTransactionsTorcvShipmentLines/ns0:quantityShipped">
                    <ns7:QuantityShipped>
                      <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentLines/ns0:quantityShipped"/>
                    </ns7:QuantityShipped>
                  </xsl:if>
                  <xsl:if test="ns0:rcvTransactionsTorcvShipmentLines/ns0:quantityReceived">
                    <ns7:QuantityReceived>
                      <xsl:value-of select="ns0:rcvTransactionsTorcvShipmentLines/ns0:quantityReceived"/>
                    </ns7:QuantityReceived>
                  </xsl:if>
                </ns7:BasicReceiptLine>
              </ns7:ReceiptLine>
            </ns7:ListOfBasicReceiptLines>
            <ns7:ListOfTransactions>
              <!--xsl:for-each select=""-->
                <ns7:Transaction>
              <ns7:BasicTransaction>
                <ns7:Identifier>
                  <xsl:value-of select="ns0:transactionId"/>
                </ns7:Identifier>
                <ns7:TransactionType>
                  <xsl:value-of select="ns0:transactionType"/>
                </ns7:TransactionType>
                <ns7:TransactionDate>
                  <xsl:value-of select="ns0:transactionDate"/>
                </ns7:TransactionDate>
                  <xsl:if test="ns0:quantity">
                    <ns7:Quantity>
                      <xsl:value-of select="ns0:quantity"/>
                    </ns7:Quantity>
                  </xsl:if>
                </ns7:BasicTransaction>
                <ns7:Amount>
                  <xsl:if test="ns0:amount">
                    <ns10:Value>
                      <xsl:value-of select="ns0:amount"/>
                    </ns10:Value>
                  </xsl:if>
                </ns7:Amount>
                <ns7:AmountBilled>
                  <xsl:if test="ns0:amountBilled">
                    <ns10:Value>
                      <xsl:value-of select="ns0:amountBilled"/>
                    </ns10:Value>
                  </xsl:if>
                </ns7:AmountBilled>
                <ns7:DFF>
                  <xsl:if test="ns0:attributeCategory">
                    <ns15:AttributeCategory>
                      <xsl:value-of select="ns0:attributeCategory"/>
                    </ns15:AttributeCategory>
                  </xsl:if>
                  <xsl:if test="ns0:attribute1">
                    <ns15:Attribute1>
                      <xsl:value-of select="ns0:attribute1"/>
                    </ns15:Attribute1>
                  </xsl:if>
                  <xsl:if test="ns0:attribute2">
                    <ns15:Attribute2>
                      <xsl:value-of select="ns0:attribute2"/>
                    </ns15:Attribute2>
                  </xsl:if>
                  <xsl:if test="ns0:attribute3">
                    <ns15:Attribute3>
                      <xsl:value-of select="ns0:attribute3"/>
                    </ns15:Attribute3>
                  </xsl:if>
                  <xsl:if test="ns0:attribute4">
                    <ns15:Attribute4>
                      <xsl:value-of select="ns0:attribute4"/>
                    </ns15:Attribute4>
                  </xsl:if>
                  <xsl:if test="ns0:attribute5">
                    <ns15:Attribute5>
                      <xsl:value-of select="ns0:attribute5"/>
                    </ns15:Attribute5>
                  </xsl:if>
                  <xsl:if test="ns0:attribute6">
                    <ns15:Attribute6>
                      <xsl:value-of select="ns0:attribute6"/>
                    </ns15:Attribute6>
                  </xsl:if>
                  <xsl:if test="ns0:attribute7">
                    <ns15:Attribute7>
                      <xsl:value-of select="ns0:attribute7"/>
                    </ns15:Attribute7>
                  </xsl:if>
                  <xsl:if test="ns0:attribute8">
                    <ns15:Attribute8>
                      <xsl:value-of select="ns0:attribute8"/>
                    </ns15:Attribute8>
                  </xsl:if>
                  <xsl:if test="ns0:attribute9">
                    <ns15:Attribute9>
                      <xsl:value-of select="ns0:attribute9"/>
                    </ns15:Attribute9>
                  </xsl:if>
                  <xsl:if test="ns0:attribute10">
                    <ns15:Attribute10>
                      <xsl:value-of select="ns0:attribute10"/>
                    </ns15:Attribute10>
                  </xsl:if>
                  <xsl:if test="ns0:attribute11">
                    <ns15:Attribute11>
                      <xsl:value-of select="ns0:attribute11"/>
                    </ns15:Attribute11>
                  </xsl:if>
                  <xsl:if test="ns0:attribute12">
                    <ns15:Attribute12>
                      <xsl:value-of select="ns0:attribute12"/>
                    </ns15:Attribute12>
                  </xsl:if>
                  <xsl:if test="ns0:attribute13">
                    <ns15:Attribute13>
                      <xsl:value-of select="ns0:attribute13"/>
                    </ns15:Attribute13>
                  </xsl:if>
                  <xsl:if test="ns0:attribute14">
                    <ns15:Attribute14>
                      <xsl:value-of select="ns0:attribute14"/>
                    </ns15:Attribute14>
                  </xsl:if>
                  <xsl:if test="ns0:attribute15">
                    <ns15:Attribute15>
                      <xsl:value-of select="ns0:attribute15"/>
                    </ns15:Attribute15>
                  </xsl:if>
                </ns7:DFF>
                <xsl:if test="ns0:bomResourceId">
                  <ns7:BomResourceId>
                    <xsl:value-of select="ns0:bomResourceId"/>
                  </ns7:BomResourceId>
                </xsl:if>
                <xsl:if test="ns0:childInspectionFlag">
                  <ns7:ChildInspectionFlag>
                    <xsl:value-of select="ns0:childInspectionFlag"/>
                  </ns7:ChildInspectionFlag>
                </xsl:if>
                <xsl:if test="ns0:comments">
                  <ns7:Comments>
                    <xsl:value-of select="ns0:comments"/>
                  </ns7:Comments>
                </xsl:if>
                <xsl:if test="ns0:consignedFlag">
                  <ns7:ConsignedFlag>
                    <xsl:value-of select="ns0:consignedFlag"/>
                  </ns7:ConsignedFlag>
                </xsl:if>
                <xsl:if test="ns0:countryOfOriginCode">
                  <ns7:CountryOfOriginCode>
                    <xsl:value-of select="ns0:countryOfOriginCode"/>
                  </ns7:CountryOfOriginCode>
                </xsl:if>
                <xsl:if test="ns0:currencyConversionDate">
                  <ns7:CurrencyConversionDate>
                    <xsl:value-of select="ns0:currencyConversionDate"/>
                  </ns7:CurrencyConversionDate>
                </xsl:if>
                <xsl:if test="ns0:currencyConversionRate">
                  <ns7:CurrencyConversionRate>
                    <xsl:value-of select="ns0:currencyConversionRate"/>
                  </ns7:CurrencyConversionRate>
                </xsl:if>
                <xsl:if test="ns0:currencyConversionType">
                  <ns7:CurrencyConversionType>
                    <xsl:value-of select="ns0:currencyConversionType"/>
                  </ns7:CurrencyConversionType>
                </xsl:if>
                <xsl:if test="ns0:customerId">
                  <ns7:CustomerId>
                    <xsl:value-of select="ns0:customerId"/>
                  </ns7:CustomerId>
                </xsl:if>
                <xsl:if test="ns0:customerSiteId">
                  <ns7:CustomerSiteId>
                    <xsl:value-of select="ns0:customerSiteId"/>
                  </ns7:CustomerSiteId>
                </xsl:if>
                <xsl:if test="ns0:deliverToLocationId">
                  <ns7:DeliverToLocationId>
                    <xsl:value-of select="ns0:deliverToLocationId"/>
                  </ns7:DeliverToLocationId>
                </xsl:if>
                <xsl:if test="ns0:deliverToPersonId">
                  <ns7:DeliverToPersonId>
                    <xsl:value-of select="ns0:deliverToPersonId"/>
                  </ns7:DeliverToPersonId>
                </xsl:if>
                <xsl:if test="ns0:departmentCode">
                  <ns7:DepartmentCode>
                    <xsl:value-of select="ns0:departmentCode"/>
                  </ns7:DepartmentCode>
                </xsl:if>
                <xsl:if test="ns0:destinationContext">
                  <ns7:DestinationContext>
                    <xsl:value-of select="ns0:destinationContext"/>
                  </ns7:DestinationContext>
                </xsl:if>
                <xsl:if test="ns0:destinationTypeCode">
                  <ns7:DestinationTypeCode>
                    <xsl:value-of select="ns0:destinationTypeCode"/>
                  </ns7:DestinationTypeCode>
                </xsl:if>
                <xsl:if test="ns0:dropshipTypeCode">
                  <ns7:DropshipTypeCode>
                    <xsl:value-of select="ns0:dropshipTypeCode"/>
                  </ns7:DropshipTypeCode>
                </xsl:if>
                <xsl:if test="ns0:employeeId">
                  <ns7:EmployeeId>
                    <xsl:value-of select="ns0:employeeId"/>
                  </ns7:EmployeeId>
                </xsl:if>
                <xsl:if test="ns0:fromLocatorId">
                  <ns7:FromLocatorId>
                    <xsl:value-of select="ns0:fromLocatorId"/>
                  </ns7:FromLocatorId>
                </xsl:if>
                <xsl:if test="ns0:fromSubinventory">
                  <ns7:FromSubinventory>
                    <xsl:value-of select="ns0:fromSubinventory"/>
                  </ns7:FromSubinventory>
                </xsl:if>
                <xsl:if test="ns0:groupId">
                  <ns7:GroupId>
                    <xsl:value-of select="ns0:groupId"/>
                  </ns7:GroupId>
                </xsl:if>
                <xsl:if test="ns0:inspectionQualityCode">
                  <ns7:InspectionQualityCode>
                    <xsl:value-of select="ns0:inspectionQualityCode"/>
                  </ns7:InspectionQualityCode>
                </xsl:if>
                <xsl:if test="ns0:inspectionStatusCode">
                  <ns7:InspectionStatusCode>
                    <xsl:value-of select="ns0:inspectionStatusCode"/>
                  </ns7:InspectionStatusCode>
                </xsl:if>
                <xsl:if test="ns0:interfaceSourceCode">
                  <ns7:InterfaceSourceCode>
                    <xsl:value-of select="ns0:interfaceSourceCode"/>
                  </ns7:InterfaceSourceCode>
                </xsl:if>
                <xsl:if test="ns0:interfaceSourceLineId">
                  <ns7:InterfaceSourceLineId>
                    <xsl:value-of select="ns0:interfaceSourceLineId"/>
                  </ns7:InterfaceSourceLineId>
                </xsl:if>
                <xsl:if test="ns0:interfaceTransactionId">
                  <ns7:InterfaceTransactionId>
                    <xsl:value-of select="ns0:interfaceTransactionId"/>
                  </ns7:InterfaceTransactionId>
                </xsl:if>
                <xsl:if test="ns0:invoiceId">
                  <ns7:InvoiceId>
                    <xsl:value-of select="ns0:invoiceId"/>
                  </ns7:InvoiceId>
                </xsl:if>
                <xsl:if test="ns0:invoiceStatusCode">
                  <ns7:InvoiceStatusCode>
                    <xsl:value-of select="ns0:invoiceStatusCode"/>
                  </ns7:InvoiceStatusCode>
                </xsl:if>
                <xsl:if test="ns0:invTransactionId">
                  <ns7:InvTransactionId>
                    <xsl:value-of select="ns0:invTransactionId"/>
                  </ns7:InvTransactionId>
                </xsl:if>
                <xsl:if test="ns0:jobId">
                  <ns7:JobId>
                    <xsl:value-of select="ns0:jobId"/>
                  </ns7:JobId>
                </xsl:if>
                <xsl:if test="ns0:lcmAdjustmentNum">
                  <ns7:LcmAdjustmentNum>
                    <xsl:value-of select="ns0:lcmAdjustmentNum"/>
                  </ns7:LcmAdjustmentNum>
                </xsl:if>
                <xsl:if test="ns0:lcmShipmentLineId">
                  <ns7:LcmShipmentLineId>
                    <xsl:value-of select="ns0:lcmShipmentLineId"/>
                  </ns7:LcmShipmentLineId>
                </xsl:if>
                <xsl:if test="ns0:locationId">
                  <ns7:LocationId>
                    <xsl:value-of select="ns0:locationId"/>
                  </ns7:LocationId>
                </xsl:if>
                <xsl:if test="ns0:locatorAttribute">
                  <ns7:LocatorAttribute>
                    <xsl:value-of select="ns0:locatorAttribute"/>
                  </ns7:LocatorAttribute>
                </xsl:if>
                <xsl:if test="ns0:locatorId">
                  <ns7:LocatorId>
                    <xsl:value-of select="ns0:locatorId"/>
                  </ns7:LocatorId>
                </xsl:if>
                <xsl:if test="ns0:lpnGroupId">
                  <ns7:LpnGroupId>
                    <xsl:value-of select="ns0:lpnGroupId"/>
                  </ns7:LpnGroupId>
                </xsl:if>
                <xsl:if test="ns0:lpnId">
                  <ns7:LpnId>
                    <xsl:value-of select="ns0:lpnId"/>
                  </ns7:LpnId>
                </xsl:if>
                <xsl:if test="ns0:matchFlag">
                  <ns7:MatchFlag>
                    <xsl:value-of select="ns0:matchFlag"/>
                  </ns7:MatchFlag>
                </xsl:if>
                <xsl:if test="ns0:matchOption">
                  <ns7:MatchOption>
                    <xsl:value-of select="ns0:matchOption"/>
                  </ns7:MatchOption>
                </xsl:if>
                <xsl:if test="ns0:materialStoredAmount">
                  <ns7:MaterialStoredAmount>
                    <xsl:value-of select="ns0:materialStoredAmount"/>
                  </ns7:MaterialStoredAmount>
                </xsl:if>
                <xsl:if test="ns0:mobileTxn">
                  <ns7:MobileTxn>
                    <xsl:value-of select="ns0:mobileTxn"/>
                  </ns7:MobileTxn>
                </xsl:if>
                <xsl:if test="ns0:movementId">
                  <ns7:MovementId>
                    <xsl:value-of select="ns0:movementId"/>
                  </ns7:MovementId>
                </xsl:if>
                <xsl:if test="ns0:mrcCurrencyConversionDate">
                  <ns7:MrcCurrencyConversionDate>
                    <xsl:value-of select="ns0:mrcCurrencyConversionDate"/>
                  </ns7:MrcCurrencyConversionDate>
                </xsl:if>
                <xsl:if test="ns0:mrcCurrencyConversionRate">
                  <ns7:MrcCurrencyConversionRate>
                    <xsl:value-of select="ns0:mrcCurrencyConversionRate"/>
                  </ns7:MrcCurrencyConversionRate>
                </xsl:if>
                <xsl:if test="ns0:mrcCurrencyConversionType">
                  <ns7:MrcCurrencyConversionType>
                    <xsl:value-of select="ns0:mrcCurrencyConversionType"/>
                  </ns7:MrcCurrencyConversionType>
                </xsl:if>
                <xsl:if test="ns0:mvtStatStatus">
                  <ns7:MvtStatStatus>
                    <xsl:value-of select="ns0:mvtStatStatus"/>
                  </ns7:MvtStatStatus>
                </xsl:if>
                <xsl:if test="ns0:oeOrderHeaderId">
                  <ns7:OeOrderHeaderId>
                    <xsl:value-of select="ns0:oeOrderHeaderId"/>
                  </ns7:OeOrderHeaderId>
                </xsl:if>
                <xsl:if test="ns0:oeOrderLineId">
                  <ns7:OeOrderLineId>
                    <xsl:value-of select="ns0:oeOrderLineId"/>
                  </ns7:OeOrderLineId>
                </xsl:if>
                <xsl:if test="ns0:organizationId">
                  <ns7:OrganizationId>
                    <xsl:value-of select="ns0:organizationId"/>
                  </ns7:OrganizationId>
                </xsl:if>
                <xsl:if test="ns0:parentTransactionId">
                  <ns7:ParentTransactionId>
                    <xsl:value-of select="ns0:parentTransactionId"/>
                  </ns7:ParentTransactionId>
                </xsl:if>
                <xsl:if test="ns0:paAdditionFlag">
                  <ns7:PaAdditionFlag>
                    <xsl:value-of select="ns0:paAdditionFlag"/>
                  </ns7:PaAdditionFlag>
                </xsl:if>
                <xsl:if test="ns0:poDistributionId">
                  <ns7:PoDistributionId>
                    <xsl:value-of select="ns0:poDistributionId"/>
                  </ns7:PoDistributionId>
                </xsl:if>
                <xsl:if test="ns0:poReleaseId">
                  <ns7:PoReleaseId>
                    <xsl:value-of select="ns0:poReleaseId"/>
                  </ns7:PoReleaseId>
                </xsl:if>
                <xsl:if test="ns0:poRevisionNum">
                  <ns7:PoRevisionNum>
                    <xsl:value-of select="ns0:poRevisionNum"/>
                  </ns7:PoRevisionNum>
                </xsl:if>
                <xsl:if test="ns0:primaryQuantity">
                  <ns7:PrimaryQuantity>
                    <xsl:value-of select="ns0:primaryQuantity"/>
                  </ns7:PrimaryQuantity>
                </xsl:if>
                <ns7:PrimaryUnitOfMeasure>
                  <xsl:if test="ns0:primaryUnitOfMeasure">
                    <ns6:Code>
                      <xsl:value-of select="ns0:primaryUnitOfMeasure"/>
                    </ns6:Code>
                  </xsl:if>
                </ns7:PrimaryUnitOfMeasure>
                <xsl:if test="ns0:projectId">
                  <ns7:ProjectId>
                    <xsl:value-of select="ns0:projectId"/>
                  </ns7:ProjectId>
                </xsl:if>
                <xsl:if test="ns0:qaCollectionId">
                  <ns7:QaCollectionId>
                    <xsl:value-of select="ns0:qaCollectionId"/>
                  </ns7:QaCollectionId>
                </xsl:if>
                <xsl:if test="ns0:qcGrade">
                  <ns7:QcGrade>
                    <xsl:value-of select="ns0:qcGrade"/>
                  </ns7:QcGrade>
                </xsl:if>
                <xsl:if test="ns0:quantity">
                  <ns7:Quantity>
                    <xsl:value-of select="ns0:quantity"/>
                  </ns7:Quantity>
                </xsl:if>
                <xsl:if test="ns0:quantityBilled">
                  <ns7:QuantityBilled>
                    <xsl:value-of select="ns0:quantityBilled"/>
                  </ns7:QuantityBilled>
                </xsl:if>
                <xsl:if test="ns0:reasonId">
                  <ns7:ReasonId>
                    <xsl:value-of select="ns0:reasonId"/>
                  </ns7:ReasonId>
                </xsl:if>
                <xsl:if test="ns0:receiptConfirmationExtracted">
                  <ns7:ReceiptConfirmationExtracted>
                    <xsl:value-of select="ns0:receiptConfirmationExtracted"/>
                  </ns7:ReceiptConfirmationExtracted>
                </xsl:if>
                <xsl:if test="ns0:receiptExceptionFlag">
                  <ns7:ReceiptExceptionFlag>
                    <xsl:value-of select="ns0:receiptExceptionFlag"/>
                  </ns7:ReceiptExceptionFlag>
                </xsl:if>
                <xsl:if test="ns0:replenishOrderLineId">
                  <ns7:ReplenishOrderLineId>
                    <xsl:value-of select="ns0:replenishOrderLineId"/>
                  </ns7:ReplenishOrderLineId>
                </xsl:if>
                <xsl:if test="ns0:requestedAmount">
                  <ns7:RequestedAmount>
                    <xsl:value-of select="ns0:requestedAmount"/>
                  </ns7:RequestedAmount>
                </xsl:if>
                <xsl:if test="ns0:requestId">
                  <ns7:RequestId>
                    <xsl:value-of select="ns0:requestId"/>
                  </ns7:RequestId>
                </xsl:if>
                <xsl:if test="ns0:reqDistributionId">
                  <ns7:ReqDistributionId>
                    <xsl:value-of select="ns0:reqDistributionId"/>
                  </ns7:ReqDistributionId>
                </xsl:if>
                <xsl:if test="ns0:rmaReference">
                  <ns7:RmaReference>
                    <xsl:value-of select="ns0:rmaReference"/>
                  </ns7:RmaReference>
                </xsl:if>
                <xsl:if test="ns0:routingHeaderId">
                  <ns7:RoutingHeaderId>
                    <xsl:value-of select="ns0:routingHeaderId"/>
                  </ns7:RoutingHeaderId>
                </xsl:if>
                <xsl:if test="ns0:routingStepId">
                  <ns7:RoutingStepId>
                    <xsl:value-of select="ns0:routingStepId"/>
                  </ns7:RoutingStepId>
                </xsl:if>
                <xsl:if test="ns0:secondaryQuantity">
                  <ns7:SecondaryQuantity>
                    <xsl:value-of select="ns0:secondaryQuantity"/>
                  </ns7:SecondaryQuantity>
                </xsl:if>
                <xsl:if test="ns0:secondaryUnitOfMeasure">
                  <ns7:SecondaryUnitOfMeasure>
                    <xsl:value-of select="ns0:secondaryUnitOfMeasure"/>
                  </ns7:SecondaryUnitOfMeasure>
                </xsl:if>
                <xsl:if test="ns0:secondaryUomCode">
                  <ns7:SecondaryUomCode>
                    <xsl:value-of select="ns0:secondaryUomCode"/>
                  </ns7:SecondaryUomCode>
                </xsl:if>
                <xsl:if test="ns0:sourceDocumentCode">
                  <ns7:SourceDocumentCode>
                    <xsl:value-of select="ns0:sourceDocumentCode"/>
                  </ns7:SourceDocumentCode>
                </xsl:if>
                <xsl:if test="ns0:sourceDocQuantity">
                  <ns7:SourceDocQuantity>
                    <xsl:value-of select="ns0:sourceDocQuantity"/>
                  </ns7:SourceDocQuantity>
                </xsl:if>
                <ns7:SourceDocUnitOfMeasure>
                  <xsl:if test="ns0:sourceDocUnitOfMeasure">
                    <ns6:Code>
                      <xsl:value-of select="ns0:sourceDocUnitOfMeasure"/>
                    </ns6:Code>
                  </xsl:if>
                </ns7:SourceDocUnitOfMeasure>
                <xsl:if test="ns0:sourceTransactionNum">
                  <ns7:SourceTransactionNum>
                    <xsl:value-of select="ns0:sourceTransactionNum"/>
                  </ns7:SourceTransactionNum>
                </xsl:if>
                <xsl:if test="ns0:subinventory">
                  <ns7:Subinventory>
                    <xsl:value-of select="ns0:subinventory"/>
                  </ns7:Subinventory>
                </xsl:if>
                <xsl:if test="ns0:substituteUnorderedCode">
                  <ns7:SubstituteUnorderedCode>
                    <xsl:value-of select="ns0:substituteUnorderedCode"/>
                  </ns7:SubstituteUnorderedCode>
                </xsl:if>
                <xsl:if test="ns0:timecardId">
                  <ns7:TimecardId>
                    <xsl:value-of select="ns0:timecardId"/>
                  </ns7:TimecardId>
                </xsl:if>
                <xsl:if test="ns0:timecardOvn">
                  <ns7:TimecardOvn>
                    <xsl:value-of select="ns0:timecardOvn"/>
                  </ns7:TimecardOvn>
                </xsl:if>
                <xsl:if test="ns0:transferLpnId">
                  <ns7:TransferLpnId>
                    <xsl:value-of select="ns0:transferLpnId"/>
                  </ns7:TransferLpnId>
                </xsl:if>
                <xsl:if test="ns0:unitLandedCost">
                  <ns7:UnitLandedCost>
                    <xsl:value-of select="ns0:unitLandedCost"/>
                  </ns7:UnitLandedCost>
                </xsl:if>
                <xsl:if test="ns0:unitOfMeasure">
                  <ns7:UnitOfMeasure>
                    <xsl:value-of select="ns0:unitOfMeasure"/>
                  </ns7:UnitOfMeasure>
                </xsl:if>
                <xsl:if test="ns0:uomCode">
                  <ns7:UomCode>
                    <xsl:value-of select="ns0:uomCode"/>
                  </ns7:UomCode>
                </xsl:if>
                <xsl:if test="ns0:userEnteredFlag">
                  <ns7:UserEnteredFlag>
                    <xsl:value-of select="ns0:userEnteredFlag"/>
                  </ns7:UserEnteredFlag>
                </xsl:if>
                <xsl:if test="ns0:vendorId">
                  <ns7:VendorId>
                    <xsl:value-of select="ns0:vendorId"/>
                  </ns7:VendorId>
                </xsl:if>
                <xsl:if test="ns0:vendorLotNum">
                  <ns7:VendorLotNum>
                    <xsl:value-of select="ns0:vendorLotNum"/>
                  </ns7:VendorLotNum>
                </xsl:if>
                <xsl:if test="ns0:vendorSiteId">
                  <ns7:VendorSiteId>
                    <xsl:value-of select="ns0:vendorSiteId"/>
                  </ns7:VendorSiteId>
                </xsl:if>
                <xsl:if test="ns0:wipEntityId">
                  <ns7:WipEntityId>
                    <xsl:value-of select="ns0:wipEntityId"/>
                  </ns7:WipEntityId>
                </xsl:if>
                <xsl:if test="ns0:wipLineId">
                  <ns7:WipLineId>
                    <xsl:value-of select="ns0:wipLineId"/>
                  </ns7:WipLineId>
                </xsl:if>
                <xsl:if test="ns0:wipOperationSeqNum">
                  <ns7:WipOperationSeqNum>
                    <xsl:value-of select="ns0:wipOperationSeqNum"/>
                  </ns7:WipOperationSeqNum>
                </xsl:if>
                <xsl:if test="ns0:wipRepetitiveScheduleId">
                  <ns7:WipRepetitiveScheduleId>
                    <xsl:value-of select="ns0:wipRepetitiveScheduleId"/>
                  </ns7:WipRepetitiveScheduleId>
                </xsl:if>
                <xsl:if test="ns0:wipResourceSeqNum">
                  <ns7:WipResourceSeqNum>
                    <xsl:value-of select="ns0:wipResourceSeqNum"/>
                  </ns7:WipResourceSeqNum>
                </xsl:if>
                <xsl:if test="ns0:xmlDocumentId">
                  <ns7:XmlDocumentId>
                    <xsl:value-of select="ns0:xmlDocumentId"/>
                  </ns7:XmlDocumentId>
                </xsl:if>
              </ns7:Transaction>
              <!--/xsl:for-each-->
            </ns7:ListOfTransactions>
          </ns7:Receipt>
        </xsl:for-each>
      </ns1:ListOfReceipts>
    </ns1:QueryReceiptResponseMessage>
  </xsl:template>
</xsl:stylesheet>
