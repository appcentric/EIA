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
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [MON FEB 15 08:29:12 CST 2016].-->
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
              </ns7:BasicTransaction>
            </ns7:Transaction>
              <!--/xsl:for-each-->
            </ns7:ListOfTransactions>
          </ns7:Receipt>
        </xsl:for-each>
      </ns1:ListOfReceipts>
    </ns1:QueryReceiptResponseMessage>
  </xsl:template>
</xsl:stylesheet>
