<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:ns4="http://schemas.oracle.com/service/bpel/common"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns1="http://www.example.org"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns3="http://xmlns.eia.com/AO/Ebiz/D2S/QualityResultsAM/1.0"
                xmlns:ns2="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns0="http://xmlns.eia.com/AM/EBiz/P2P/LotAM/1.0"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns4 ns1 ns3 ns2 ns0 xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:ns17="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptAO/1.0"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:client="http:/xmlns.eia.com/Implementation/ABS/NUC_EBizLot_ABS/EBizLotABS/1.0"
                xmlns:ns14="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns19="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns9="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns8="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:cor="http:/xmlns.eia.com/Implementation/ABF/NSNE_ASNQualityResults_Suppliers_EBS_ABF/ASNQualityResults_Suppliers/1.0/correlationset"
                xmlns:ns12="http://xmlns.eia.com/EDN/1.0/Event"
                xmlns:ns26="http://xmlns.eia.com/AO/Ebiz/D2S/QualityResultsAO/1.0"
                xmlns:ns24="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderAO/1.0"
                xmlns:ns6="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns10="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:ns16="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ns18="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0" xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:ns20="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns25="http://xmlns.eia.com/AO/EBiz/common/CategoryAO/1.0"
                xmlns:ns11="http://xmlns.eia.com/AO/EBiz/P2P/LotAO/1.0" xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns15="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:ns5="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns="http://xmlns.eia.com/ABS/EBiz/ReceiptABS/1.0"
                xmlns:ns7="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:vprop="http://docs.oasis-open.org/wsbpel/2.0/varprop"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/ftp/I109byManish/NSNE_ASNQualityResults_Suppliers_EBS_ABF/FTP_ReadASNSupplier"
                xmlns:ns23="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns22="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:ns21="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns13="http:/xmlns.eia.com/Implementation/ABS/NUC_NUC_EBizQualityResults_ABS/QualityResults/1.0">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/LotABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateLotResp" namespace="http://xmlns.eia.com/AM/EBiz/P2P/LotAM/1.0"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FTP_ReadASNSupplier.wsdl"/>
        <oracle-xsl-mapper:rootElement name="Envelope" namespace="http://www.example.org"/>
        <oracle-xsl-mapper:param name="Receive_ASN_Suppliers_Get_InputVariable.body"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/ReceiptABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateReceiptRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"/>
        <oracle-xsl-mapper:param name="Invoke_CreateReceipt_Sync_InputVariable.CreateReceiptRequestMessage"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/D2S/QualityResults.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QualityResultsAddRq"
                                       namespace="http://xmlns.eia.com/AO/Ebiz/D2S/QualityResultsAM/1.0"/>
        <oracle-xsl-mapper:param name="GetPropertyTestSetsPerHeatNum.payload"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FTP_ReadASNSupplier.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="g_transactionVar"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/D2S/QualityResults.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QualityResultsAddRq"
                                       namespace="http://xmlns.eia.com/AO/Ebiz/D2S/QualityResultsAM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED AUG 10 06:34:01 CDT 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="Receive_ASN_Suppliers_Get_InputVariable.body"/>
  <xsl:param name="Invoke_CreateReceipt_Sync_InputVariable.CreateReceiptRequestMessage"/>
  <xsl:param name="GetPropertyTestSetsPerHeatNum.payload"/>
  <xsl:param name="g_transactionVar"/>
  <xsl:template match="/">
    <ns3:QualityResultsAddRq>
      <ns9:HeaderRq>
        <ns9:TransactionRequestID>1</ns9:TransactionRequestID>
        <ns9:Language>1</ns9:Language>
        <ns9:ComponentID>1</ns9:ComponentID>
        <ns9:ServiceName>1</ns9:ServiceName>
        <ns9:TransactionIDREF>1</ns9:TransactionIDREF>
        <ns9:TransactionName>1</ns9:TransactionName>
        <ns9:Source>1</ns9:Source>
        <ns9:Target>1</ns9:Target>
        <ns9:TimeStamp>
          <xsl:value-of select="xp20:current-dateTime ( )"/>
        </ns9:TimeStamp>
        <ns9:MillName>1</ns9:MillName>
      </ns9:HeaderRq>
      <ns3:AppsContext>
        <ns8:UserName>1</ns8:UserName>
        <ns8:UserId>1</ns8:UserId>
        <ns8:ResponsibilityName>1</ns8:ResponsibilityName>
        <ns8:OrgId>1</ns8:OrgId>
      </ns3:AppsContext>
      <ns26:GmdResultsPub>
        <xsl:for-each select="/ns0:CreateLotResp/ns11:CreateLotResp/ns11:LotStatus/ns11:LotStatusItem[(ns11:HEAT_NUMBER != ns11:LOT_NUMBER) and (ns11:STATUS != 'Error')]">
          <xsl:variable name="currentHeatNum">
            <xsl:value-of select="ns11:HEAT_NUMBER"/>
          </xsl:variable>
          <xsl:variable name="custPOForCurrentHeat"
                        select="substring-before($Receive_ASN_Suppliers_Get_InputVariable.body/Envelope/Waybills/Waybill/WaybillLines/WaybillLine[Bundles/Bundle/HeatNum = $currentHeatNum]/CustPO,'-')"></xsl:variable>
          <xsl:variable name="lineNumberForCurrentHeat"
                        select="number(substring-after($Receive_ASN_Suppliers_Get_InputVariable.body/Envelope/Waybills/Waybill/WaybillLines/WaybillLine[Bundles/Bundle/HeatNum = $currentHeatNum]/CustPO,'-'))"></xsl:variable>
         <xsl:variable name="itemForCurrentPOLine">
          <xsl:for-each select="$Invoke_CreateReceipt_Sync_InputVariable.CreateReceiptRequestMessage/ns2:CreateReceiptRequestMessage/ns2:Receipt/ns17:ListOfTransactions/ns17:Transaction[ns17:DocumentNum = $custPOForCurrentHeat and ns17:DocumentLineNum = $lineNumberForCurrentHeat]">
            <xsl:choose>
            <xsl:when test="position() = 1">
              <xsl:value-of select="ns17:Item/ns20:Identifier"/>
              </xsl:when>
              </xsl:choose>
            </xsl:for-each>
         </xsl:variable>
         
         <xsl:variable name="uomCode">
          <xsl:for-each select="$Invoke_CreateReceipt_Sync_InputVariable.CreateReceiptRequestMessage/ns2:CreateReceiptRequestMessage/ns2:Receipt/ns17:ListOfTransactions/ns17:Transaction[ns17:DocumentNum = $custPOForCurrentHeat and ns17:DocumentLineNum = $lineNumberForCurrentHeat]">
            <xsl:choose>
            <xsl:when test="position() = 1">
              <xsl:value-of select="ns17:UomCode"/>
              </xsl:when>
              </xsl:choose>
            </xsl:for-each>
         </xsl:variable>
         
          <ns26:GmdResultPub>
            <ns26:TxnID>
              <xsl:value-of select="$g_transactionVar/ns4:parameters/ns4:item/ns4:value"/>
            </ns26:TxnID>
            <ns26:OrganizationId>
              <xsl:value-of select="$Invoke_CreateReceipt_Sync_InputVariable.CreateReceiptRequestMessage/ns2:CreateReceiptRequestMessage/ns2:Receipt/ns17:ListOfTransactions/ns17:Transaction[ns17:DocumentNum = $custPOForCurrentHeat and ns17:DocumentLineNum = $lineNumberForCurrentHeat]/ns17:ToOrganizationId"/>
            </ns26:OrganizationId>
            <ns26:SampleSource>I</ns26:SampleSource>
            <ns26:item_id>
              <xsl:value-of select="$itemForCurrentPOLine"/>
            </ns26:item_id>
            <ns26:ParentLotNO>
              <xsl:value-of select="ns11:HEAT_NUMBER"/>
            </ns26:ParentLotNO>
            <ns26:LotNo>
              <xsl:value-of select="ns11:LOT_NUMBER"/>
            </ns26:LotNo>
            <ns26:SampleQTY>
              <xsl:value-of select="sum($Receive_ASN_Suppliers_Get_InputVariable.body/Envelope/Waybills/Waybill/WaybillLines/WaybillLine/Bundles/Bundle[HeatNum = $currentHeatNum]/QtyPcs)"/>
            </ns26:SampleQTY>
            <ns26:SampleQtyUOM>
              <xsl:value-of select="$uomCode"/>
            </ns26:SampleQtyUOM>
            <ns26:Sampler>takeFromDVM</ns26:Sampler>
            <ns26:Test_results>
              <xsl:for-each select="$Receive_ASN_Suppliers_Get_InputVariable.body/Envelope/Heats/Heat[HeatNum=$currentHeatNum]/Chemistry/ChemMeasure">
                <ns26:Test_results>
                  <ns26:TestCode>
                  <xsl:variable name="symbol">
                  <xsl:value-of select="@Symbol"/>
                  </xsl:variable>
    
                  <xsl:value-of select="dvm:lookupValue('oramds:/apps/EIAMetadata/CommonArtifacts/dvm/LEGACY_EBS_TEST_CODE_MAP.dvm','LEGACY_TEST_CODE',$symbol,'EBS_TEST_CODE','','TEST_TYPE','Chemistry','SYSTEM','CFNE')"/>
                  </ns26:TestCode>
                  <ns26:Tester>SOAUSER</ns26:Tester>
                  <ns26:ResultValue>
                    <xsl:value-of select="."/>
                  </ns26:ResultValue>
                  <ns26:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns26:ResultDate>
                </ns26:Test_results>
              </xsl:for-each>
              <xsl:for-each select="$GetPropertyTestSetsPerHeatNum.payload/ns3:QualityResultsAddRq/ns26:GmdResultsPub/ns26:GmdResultPub[ns26:LotNo = $currentHeatNum]/ns26:Test_results/ns26:Test_results">
                <ns26:Test_results>
                  <ns26:TestCode>
                    <xsl:value-of select="ns26:TestCode"/>
                  </ns26:TestCode>
                  <ns26:Tester>
                    <xsl:value-of select="ns26:Tester"/>
                  </ns26:Tester>
                  <ns26:ResultValue>
                    <xsl:value-of select="ns26:ResultValue"/>
                  </ns26:ResultValue>
                  <ns26:ResultDate>
                    <xsl:value-of select="ns26:ResultDate"/>
                  </ns26:ResultDate>
                </ns26:Test_results>
              </xsl:for-each>
            </ns26:Test_results>
          </ns26:GmdResultPub>
        </xsl:for-each>
      </ns26:GmdResultsPub>
    </ns3:QualityResultsAddRq>
  </xsl:template>
</xsl:stylesheet>
