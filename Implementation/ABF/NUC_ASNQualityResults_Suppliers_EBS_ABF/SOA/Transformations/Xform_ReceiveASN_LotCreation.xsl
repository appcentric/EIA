<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ns0="http://www.example.org" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns1="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:tns="http://xmlns.eia.com/AM/EBiz/P2P/LotAM/1.0"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 ns1 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:ns10="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ns11="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptAO/1.0"
                xmlns:ns13="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0" xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:ns17="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns24="http://xmlns.eia.com/AO/EBiz/common/CategoryAO/1.0"
                xmlns:ns5="http:/xmlns.eia.com/Implementation/ABS/NUC_EBizLot_ABS/EBizLotABS/1.0"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns8="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns9="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns4="http://schemas.oracle.com/service/bpel/common"
                xmlns:ns="http://xmlns.eia.com/ABS/EBiz/ReceiptABS/1.0"
                xmlns:ns12="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns14="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:vprop="http://docs.oasis-open.org/wsbpel/2.0/varprop"
                xmlns:ns16="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:ns15="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:cor="http:/xmlns.eia.com/Implementation/ABF/NSNE_ASNQualityResults_Suppliers_EBS_ABF/ASNQualityResults_Suppliers/1.0/correlationset"
                xmlns:ns3="http://xmlns.eia.com/EDN/1.0/Event"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/ftp/I109byManish/NSNE_ASNQualityResults_Suppliers_EBS_ABF/FTP_ReadASNSupplier"
                xmlns:ns20="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns19="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:ns18="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns22="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderAO/1.0"
                xmlns:ns21="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns6="http:/xmlns.eia.com/Implementation/ABS/NUC_NUC_EBizQualityResults_ABS/QualityResults/1.0"
                xmlns:ns23="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns25="http://xmlns.eia.com/AO/EBiz/P2P/LotAO/1.0">
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
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/LotABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateLotRequest" namespace="http://xmlns.eia.com/AM/EBiz/P2P/LotAM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [TUE AUG 02 05:19:58 CDT 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="Invoke_CreateReceipt_Sync_InputVariable.CreateReceiptRequestMessage"/>
  <xsl:template match="/">
    <tns:CreateLotRequest>
   <ns15:HeaderRq>
                <ns15:TransactionRequestID>1</ns15:TransactionRequestID>
                <ns15:Language>1</ns15:Language>
                <ns15:ComponentID>1</ns15:ComponentID>
                <ns15:ServiceName>1</ns15:ServiceName>
                <ns15:TransactionIDREF>1</ns15:TransactionIDREF>
                <ns15:TransactionName>1</ns15:TransactionName>
                <ns15:Source>1</ns15:Source>
                <ns15:Target>1</ns15:Target>
                 <ns15:MillName>1</ns15:MillName>
            </ns15:HeaderRq>
            <tns:AppsContext>
                <ns16:UserName>'SOAUSER'</ns16:UserName>
                <!--<ns14:UserId>2385</ns14:UserId>-->
                <ns16:ResponsibilityName>NSNE PO Superuser</ns16:ResponsibilityName>
                <ns16:OrgId>88</ns16:OrgId>
            </tns:AppsContext>
      <ns25:CreateLotReq>
       <ns25:TransactionID>1</ns25:TransactionID>
        <ns25:LotDetails>
          <xsl:for-each select="/Envelope/Waybills/Waybill/WaybillLines/WaybillLine">
          <xsl:variable name="waybillNum">
              <xsl:value-of select="/Envelope/Waybills/Waybill/WaybillNum"/>
            </xsl:variable>
           <xsl:variable name="lastIndexE" select="oraext:last-index-within-string (CustPO,'-')"></xsl:variable>
          
           <xsl:variable name="lastIndexEHifen">
           <xsl:value-of select="number($lastIndexE)+ 2"/>
           </xsl:variable>
            
            <xsl:variable name="custPOTagLen" select="string-length (CustPO)"></xsl:variable>
        
      
           <xsl:variable name = "CustPO">
          <xsl:value-of select="substring(CustPO,1,$lastIndexE)"/>
         
          </xsl:variable>
           <xsl:variable name = "LineNumber">
          <xsl:value-of select="substring(CustPO,$lastIndexEHifen,$custPOTagLen)"/>
         
          </xsl:variable>
            <xsl:variable name="posVar">
              <xsl:value-of select="position()"/>
            </xsl:variable>
          
            <xsl:variable name="custPartNum">
            <xsl:for-each select="$Invoke_CreateReceipt_Sync_InputVariable.CreateReceiptRequestMessage/ns1:CreateReceiptRequestMessage/ns1:Receipt/ns11:ListOfTransactions/ns11:Transaction[(ns11:DocumentNum = $CustPO) and (ns11:DocumentLineNum = $LineNumber)]">
            <xsl:choose>
            <xsl:when test="position() = 1">
              <xsl:value-of select="ns11:Item/ns17:Identifier"/>
              </xsl:when>
              </xsl:choose>
            </xsl:for-each>
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
          
            <xsl:for-each-group select="Bundles/Bundle" group-by="HeatNum">
          <xsl:variable name="currentHeatNum">
              <xsl:value-of select="current-grouping-key()"/>
            </xsl:variable>
            
           <xsl:variable name="currentBundleNum">
              <xsl:value-of select="BundleNum"/>
            </xsl:variable>
  
              <ns25:P_I_LOT_ITEM><!--First Lot invocation-->
                <ns25:INVENTORY_ITEM_ID>
                 <xsl:value-of select="oraext:query-database(concat(&quot;select msi.INVENTORY_ITEM_ID from fnd_lookup_values flv,mtl_system_items_b msi where lookup_type = 'NUC_LIQUID_MELT_GENERIC_PART' and lookup_code = 'PART_NUMBER' and flv.meaning = msi.segment1 and msi.organization_id = &quot;,&quot;'&quot;,$orgId,&quot;'&quot;)
,false(),false(),&quot;jdbc/ebsapps&quot;)"/>
                </ns25:INVENTORY_ITEM_ID>
                <ns25:ORGANIZATION_ID>
                <xsl:value-of select="$orgId"/>
                </ns25:ORGANIZATION_ID>
                <ns25:HEAT_NUMBER>
                                <xsl:value-of select="current-grouping-key()"/>
                              </ns25:HEAT_NUMBER>
                  <ns25:WAYBILL_NUM>
                                <xsl:value-of select="$waybillNum"/>
                              </ns25:WAYBILL_NUM>
                                <ns25:WAYBILL_LINE_NUM>
                                <xsl:value-of select="number($LineNumber)"/>
                              </ns25:WAYBILL_LINE_NUM> 
                           <ns25:LOT_NUMBER>
                                <xsl:value-of select="current-grouping-key()"/>
                              </ns25:LOT_NUMBER>
                            <ns25:SUPPLIER_LOT_NUMBER>
                              <xsl:value-of select="concat($waybillNum,'_',$LineNumber)"/>
                            </ns25:SUPPLIER_LOT_NUMBER>
                               <ns25:COUNTRY_OF_ORIGIN>
                               <xsl:value-of select="/Envelope/Heats/Heat[HeatNum=$currentHeatNum]/MeltCountry"/>
                              </ns25:COUNTRY_OF_ORIGIN>
                              
                                <ns25:ORIGINATION_DATE>
                                <xsl:value-of select="/Envelope/Heats/Heat[HeatNum=$currentHeatNum]/MeltDate"/>
                              </ns25:ORIGINATION_DATE>
                              
              </ns25:P_I_LOT_ITEM>
             
              <ns25:P_I_LOT_ITEM><!--Second invocation-->
                <ns25:INVENTORY_ITEM_ID>
                  <xsl:value-of select="$custPartNum"/>
                </ns25:INVENTORY_ITEM_ID>
                <ns25:ORGANIZATION_ID>
                 <xsl:value-of select="$orgId"/>
                </ns25:ORGANIZATION_ID>
                <ns25:HEAT_NUMBER>
                                <xsl:value-of select="current-grouping-key()"/>
                              </ns25:HEAT_NUMBER>
                  <ns25:WAYBILL_NUM>
                                <xsl:value-of select="$waybillNum"/>
                              </ns25:WAYBILL_NUM>
                                <ns25:WAYBILL_LINE_NUM>
                                <xsl:value-of select="$LineNumber"/>
                              </ns25:WAYBILL_LINE_NUM> 
                           <ns25:LOT_NUMBER>
                                <xsl:value-of select="ReheatNum"/>
                              </ns25:LOT_NUMBER>
                                <ns25:SUPPLIER_LOT_NUMBER>
                              <xsl:value-of select="concat($waybillNum,'_',$LineNumber)"/>
                            </ns25:SUPPLIER_LOT_NUMBER>
                              <ns25:COUNTRY_OF_ORIGIN>
                              <xsl:value-of select="/Envelope/PropertyTestSets/PropertyTestSet[Bundles/BundleNum = $currentBundleNum]/RollCountry"/>
                              </ns25:COUNTRY_OF_ORIGIN>
                               <ns25:ORIGINATION_DATE>
                               <xsl:value-of select="RollDateTime"/>
                              </ns25:ORIGINATION_DATE>
                              
                              <ns25:PARENT_LOT_NUMBER>
                               <xsl:value-of select="current-grouping-key()"/>
                              </ns25:PARENT_LOT_NUMBER>
              </ns25:P_I_LOT_ITEM>
             
            </xsl:for-each-group>
          </xsl:for-each>
        </ns25:LotDetails>
      </ns25:CreateLotReq>
    </tns:CreateLotRequest>
  </xsl:template>
</xsl:stylesheet>
