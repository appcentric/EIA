<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:ns3="http://schemas.oracle.com/service/bpel/common"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ns0="http://www.example.org" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns1="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns2="http://xmlns.eia.com/AM/EBiz/P2P/LotAM/1.0"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns3 ns0 ns1 ns2 xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:ns11="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptAO/1.0"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns5="http:/xmlns.eia.com/Implementation/ABS/NUC_EBizLot_ABS/EBizLotABS/1.0"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns14="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns16="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:ns15="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:cor="http:/xmlns.eia.com/Implementation/ABF/NSNE_ASNQualityResults_Suppliers_EBS_ABF/ASNQualityResults_Suppliers/1.0/correlationset"
                xmlns:ns4="http://xmlns.eia.com/EDN/1.0/Event"
                xmlns:ns22="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderAO/1.0"
                xmlns:ns21="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns23="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:ns10="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ns13="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0" xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:ns17="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns24="http://xmlns.eia.com/AO/EBiz/common/CategoryAO/1.0"
                xmlns:ns25="http://xmlns.eia.com/AO/EBiz/P2P/LotAO/1.0" xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns8="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:ns9="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns="http://xmlns.eia.com/ABS/EBiz/ReceiptABS/1.0"
                xmlns:ns12="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:vprop="http://docs.oasis-open.org/wsbpel/2.0/varprop"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/ftp/I109byManish/NSNE_ASNQualityResults_Suppliers_EBS_ABF/FTP_ReadASNSupplier"
                xmlns:ns20="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns19="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:ns18="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns6="http:/xmlns.eia.com/Implementation/ABS/NUC_NUC_EBizQualityResults_ABS/QualityResults/1.0"
                xmlns:ns26="http://xmlns.eia.com/AO/EBiz/P2P/LpnAO/1.0"
                xmlns:client="http:/xmlns.eia.com/Implementation/ABS/NUC_EBizLPN_ABS/EBizLPNABS/1.0">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FTP_ReadASNSupplier.wsdl"/>
        <oracle-xsl-mapper:rootElement name="Envelope" namespace="http://www.example.org"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/ReceiptABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateReceiptRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"/>
        <oracle-xsl-mapper:param name="Invoke_CreateReceipt_Sync_InputVariable.CreateReceiptRequestMessage"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/LotABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateLotResp" namespace="http://xmlns.eia.com/AM/EBiz/P2P/LotAM/1.0"/>
        <oracle-xsl-mapper:param name="Invoke_LotCreation_OutputVariable.payload"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FTP_ReadASNSupplier.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="deriveLPNOrg"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/LpnABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateLpnRequest" namespace="http://xmlns.eia.com/AM/EBiz/P2P/LotAM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [THU AUG 11 05:18:12 CDT 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="Invoke_CreateReceipt_Sync_InputVariable.CreateReceiptRequestMessage"/>
  <xsl:param name="Invoke_LotCreation_OutputVariable.payload"/>
  <xsl:param name="deriveLPNOrg"/>
  <xsl:template match="/">
    <ns2:CreateLpnRequest>
      <ns15:HeaderRq>
        <ns15:TransactionRequestID></ns15:TransactionRequestID>
        <ns15:Language></ns15:Language>
        <ns15:ComponentID></ns15:ComponentID>
        <ns15:ServiceName></ns15:ServiceName>
        <ns15:TransactionIDREF></ns15:TransactionIDREF>
        <ns15:TransactionName></ns15:TransactionName>
        <ns15:Source></ns15:Source>
        <ns15:Target></ns15:Target>
        <ns15:MillName></ns15:MillName>
      </ns15:HeaderRq>
      <ns2:AppsContext>
        <ns16:UserName>'SOAUSER'</ns16:UserName>
        <!--<ns14:UserId>2385</ns14:UserId>-->
        <ns16:ResponsibilityName>NSNE PO Superuser</ns16:ResponsibilityName>
        <ns16:OrgId>88</ns16:OrgId>
      </ns2:AppsContext>
      <ns26:CreateLpnReq>
        <ns26:LpnDetails>
          <xsl:for-each select="/Envelope/Waybills/Waybill/WaybillLines/WaybillLine">
          <xsl:variable name="posVar">
          <xsl:value-of select="position()"/>
          </xsl:variable>
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
          <xsl:variable name="orgId">
             <xsl:for-each select="$Invoke_CreateReceipt_Sync_InputVariable.CreateReceiptRequestMessage/ns1:CreateReceiptRequestMessage/ns1:Receipt/ns11:ListOfTransactions/ns11:Transaction[(ns11:DocumentNum = $CustPO) and (ns11:DocumentLineNum = $LineNumber)]">
           <xsl:choose>
            <xsl:when test="position() = 1">
             <xsl:value-of select="ns11:ToOrganizationId"/>
            </xsl:when>
            </xsl:choose>
             </xsl:for-each>
            </xsl:variable>
            <xsl:for-each select="Bundles/Bundle">
            <xsl:variable name="currentHeatNum" select="HeatNum">
            </xsl:variable>
            <xsl:variable name="statusForCurrentHeat"
                          select="$Invoke_LotCreation_OutputVariable.payload/ns2:CreateLotResp/ns25:CreateLotResp/ns25:LotStatus/ns25:LotStatusItem[(ns25:HEAT_NUMBER = $currentHeatNum) and ($currentHeatNum != ns25:LOT_NUMBER)]/ns25:STATUS">
            </xsl:variable>
           
            <xsl:if test="$statusForCurrentHeat != 'Error'">
              <ns26:P_I_LPN_ITEM>
                    <ns26:ORGANIZATION_ID>
                      <xsl:value-of select="$orgId"/>
                    </ns26:ORGANIZATION_ID>
                  
                    <ns26:BUNDLE_NUM>
                      <xsl:value-of select="BundleNum"/>
                    </ns26:BUNDLE_NUM>
                
                    <ns26:LOT_NUMBER>
                      <xsl:value-of select="$Invoke_LotCreation_OutputVariable.payload/ns2:CreateLotResp/ns25:CreateLotResp/ns25:LotStatus/ns25:LotStatusItem[(ns25:HEAT_NUMBER = $currentHeatNum) and ($currentHeatNum != ns25:LOT_NUMBER)]/ns25:LOT_NUMBER"/>
                    </ns26:LOT_NUMBER>
                  </ns26:P_I_LPN_ITEM>
              </xsl:if>
            </xsl:for-each>
          </xsl:for-each>
        </ns26:LpnDetails>
      </ns26:CreateLpnReq>
    </ns2:CreateLpnRequest>
  </xsl:template>
</xsl:stylesheet>
