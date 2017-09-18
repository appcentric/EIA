<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:ns1="http://schemas.oracle.com/service/bpel/common"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:tns="http://xmlns.eia.com/AM/EBiz/P2P/LotAM/1.0" xmlns:ns0="http://www.example.org"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns1 ns0 tns oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:ns3="http://xmlns.eia.com/ABS/EBiz/PurchaseOrderABS/1.0"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/ftp/109/NUC_ASNQualityResults_Suppliers_Ross_ABF/FTP_ReadASNSupplier_Ross"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns4="http:/xmlns.eia.com/Implementation/ABS/NUC_EBizLot_ABS/EBizLotABS/1.0"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:ns11="http://xmlns.eia.com/AO/EBiz/P2P/LotAO/1.0" xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns5="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns7="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns9="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns8="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:ns6="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns10="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ns="http://xmlns.eia.com/ABS/EBiz/ReceiptABS/1.0"
                xmlns:vprop="http://docs.oasis-open.org/wsbpel/2.0/varprop"
                xmlns:ns12="http://xmlns.eia.com/EDN/1.0/Event"
                xmlns:cor="http:/xmlns.eia.com/Implementation/ABF/NSNE_ASNQualityResults_Suppliers_Ross_ABF/ASNQualityResults_Suppliers/1.0/correlationset">
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
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/LotABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateLotRequest" namespace="http://xmlns.eia.com/AM/EBiz/P2P/LotAM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [TUE AUG 23 01:23:40 PDT 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="g_derivedOrgId_Lines"/>
  <xsl:param name="g_derivedToOrgId_Lines"/>
  <xsl:param name="g_itemNumber"/>
  <xsl:template match="/">
    <tns:CreateLotRequest>
      <ns9:HeaderRq>
        <ns9:TransactionRequestID>1</ns9:TransactionRequestID>
        <ns9:Language>1</ns9:Language>
        <ns9:ComponentID>1</ns9:ComponentID>
        <ns9:ServiceName>1</ns9:ServiceName>
        <ns9:TransactionIDREF>1</ns9:TransactionIDREF>
        <ns9:TransactionName>1</ns9:TransactionName>
        <ns9:Source>1</ns9:Source>
        <ns9:Target>1</ns9:Target>
        <ns9:MillName>1</ns9:MillName>
      </ns9:HeaderRq>
      <tns:AppsContext>
        <ns8:UserName>'SOAUSER'</ns8:UserName>
        <!--<ns14:UserId>2385</ns14:UserId>-->
        <ns8:ResponsibilityName>NSNE PO Superuser</ns8:ResponsibilityName>
        <ns8:OrgId>88</ns8:OrgId>
      </tns:AppsContext>
      <ns11:CreateLotReq>
        <ns11:TransactionID>1</ns11:TransactionID>
        <ns11:LotDetails>
          <xsl:for-each select="/Envelope/Waybills/Waybill/WaybillLines/WaybillLine">
            <xsl:variable name="waybillNum">
              <xsl:value-of select="/Envelope/Waybills/Waybill/WaybillNum"/>
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
              <xsl:value-of select="$g_derivedToOrgId_Lines/ns1:parameters/ns1:item[(ns1:name = $CustPO) and (ns1:msg = $LineNumber)]/ns1:value"/>
            </xsl:variable>
            <xsl:variable name="itemId">
              <xsl:value-of select="$g_itemNumber/ns1:parameters/ns1:item[(ns1:name = $CustPO) and (ns1:msg = $LineNumber)]/ns1:value"/>
            </xsl:variable>
            <xsl:for-each-group select="Bundles/Bundle" group-by="HeatNum">
              <xsl:variable name="currentHeatNum">
                <xsl:value-of select="current-grouping-key()"/>
              </xsl:variable>
              <xsl:variable name="currentBundleNum">
                <xsl:value-of select="BundleNum"/>
              </xsl:variable>
              <ns11:P_I_LOT_ITEM>
                <ns11:INVENTORY_ITEM_ID>
                  <xsl:value-of select="oraext:query-database(concat(&quot;select msi.INVENTORY_ITEM_ID from fnd_lookup_values flv,mtl_system_items_b msi where lookup_type = 'NUC_LIQUID_MELT_GENERIC_PART' and lookup_code = 'PART_NUMBER' and flv.meaning = msi.segment1 and msi.organization_id = &quot;,&quot;'&quot;,$orgId,&quot;'&quot;)
,false(),false(),&quot;jdbc/ebsapps&quot;)"/>
                </ns11:INVENTORY_ITEM_ID>
                <ns11:ORGANIZATION_ID>
                  <xsl:value-of select="$orgId"/>
                </ns11:ORGANIZATION_ID>
                <ns11:HEAT_NUMBER>
                  <xsl:value-of select="current-grouping-key()"/>
                </ns11:HEAT_NUMBER>
                <ns11:WAYBILL_NUM>
                  <xsl:value-of select="$waybillNum"/>
                </ns11:WAYBILL_NUM>
                <ns11:WAYBILL_LINE_NUM>
                  <xsl:value-of select="$LineNumber"/>
                </ns11:WAYBILL_LINE_NUM>
                <ns11:SUPPLIER_LOT_NUMBER>
                  <xsl:value-of select="concat($waybillNum,'_',$LineNumber)"/>
                </ns11:SUPPLIER_LOT_NUMBER>
                <ns11:COUNTRY_OF_ORIGIN>
                  <xsl:value-of select="/Envelope/Tests/TestSet[Bundles/BundleNum = $currentBundleNum]/RollCountry"/>
                </ns11:COUNTRY_OF_ORIGIN>
                <ns11:ORIGINATION_DATE>
                  <xsl:value-of select="RollDateTime"/>
                </ns11:ORIGINATION_DATE>
                <ns11:LOT_NUMBER>
                  <xsl:value-of select="current-grouping-key()"/>
                </ns11:LOT_NUMBER>
                <ns11:C_ATTRIBUTE6>
                  <xsl:value-of select="/Envelope/Tests/TestSet[Bundles/BundleNum = $currentBundleNum]/MeltMill"/>
                </ns11:C_ATTRIBUTE6>
                <ns11:C_ATTRIBUTE7>
                  <xsl:value-of select="oraext:query-database(concat(&quot;SELECT territory_short_name FROM fnd_territories_vl WHERE territory_code =  &quot;,&quot;'&quot;,/Envelope/Tests/TestSet[Bundles/BundleNum = $currentBundleNum]/MeltCountry,&quot;'&quot;)
,false(),false(),&quot;jdbc/ebsapps&quot;)"/>
                </ns11:C_ATTRIBUTE7>
                <ns11:C_ATTRIBUTE8>
                  <!-- <xsl:value-of select="/Envelope/Tests/TestSet[Bundles/BundleNum = $currentBundleNum]/MeltDate"/>-->
                  <xsl:value-of select='xp20:format-dateTime (/Envelope/Tests/TestSet[Bundles/BundleNum = $currentBundleNum]/MeltDate, "[Y0001]-[MN,*-3]-[D01]" )'/>
                </ns11:C_ATTRIBUTE8>
                <!--<ns11:PARENT_LOT_NUMBER>
                  <xsl:value-of select="current-grouping-key()"/>
                </ns11:PARENT_LOT_NUMBER>-->
              </ns11:P_I_LOT_ITEM>
              <!-- second call-->
              <ns11:P_I_LOT_ITEM>
                <ns11:INVENTORY_ITEM_ID>
                  <xsl:value-of select="$itemId"/>
                </ns11:INVENTORY_ITEM_ID>
                <ns11:ORGANIZATION_ID>
                  <xsl:value-of select="$orgId"/>
                </ns11:ORGANIZATION_ID>
                <ns11:HEAT_NUMBER>
                  <xsl:value-of select="HeatNum"/>
                </ns11:HEAT_NUMBER>
                <ns11:WAYBILL_NUM>
                  <xsl:value-of select="$waybillNum"/>
                </ns11:WAYBILL_NUM>
                <ns11:WAYBILL_LINE_NUM>
                  <xsl:value-of select="$LineNumber"/>
                </ns11:WAYBILL_LINE_NUM>
                <ns11:SUPPLIER_LOT_NUMBER>
                  <xsl:value-of select="concat($waybillNum,'_',$LineNumber)"/>
                </ns11:SUPPLIER_LOT_NUMBER>
                <ns11:COUNTRY_OF_ORIGIN>
                  <xsl:value-of select="/Envelope/Tests/TestSet[Bundles/BundleNum = $currentBundleNum]/MeltCountry"/>
                </ns11:COUNTRY_OF_ORIGIN>
                <ns11:ORIGINATION_DATE>
                  <xsl:value-of select="RollDateTime"/>
                </ns11:ORIGINATION_DATE>
                <ns11:LOT_NUMBER>
                  <xsl:value-of select="ReheatNum"/>
                </ns11:LOT_NUMBER>
                <ns11:C_ATTRIBUTE6>
                  <xsl:value-of select="/Envelope/Tests/TestSet[Bundles/BundleNum = $currentBundleNum]/MeltMill"/>
                </ns11:C_ATTRIBUTE6>
                <ns11:C_ATTRIBUTE7>
                  <xsl:value-of select="oraext:query-database(concat(&quot;SELECT territory_short_name FROM fnd_territories_vl WHERE territory_code =  &quot;,&quot;'&quot;,/Envelope/Tests/TestSet[Bundles/BundleNum = $currentBundleNum]/MeltCountry,&quot;'&quot;)
,false(),false(),&quot;jdbc/ebsapps&quot;)"/>
                </ns11:C_ATTRIBUTE7>
                <ns11:C_ATTRIBUTE8>
                  <xsl:value-of select='xp20:format-dateTime (/Envelope/Tests/TestSet[Bundles/BundleNum = $currentBundleNum]/MeltDate, "[Y0001]-[MN,*-3]-[D01]" )'/>
                </ns11:C_ATTRIBUTE8>
                <ns11:C_ATTRIBUTE9>
                  <xsl:value-of select="/Envelope/Tests/TestSet[Bundles/BundleNum = $currentBundleNum]/RollMill"/>
                </ns11:C_ATTRIBUTE9>
                <ns11:C_ATTRIBUTE10>
                  <xsl:value-of select="oraext:query-database(concat(&quot;SELECT territory_short_name FROM fnd_territories_vl WHERE territory_code =  &quot;,&quot;'&quot;,/Envelope/Tests/TestSet[Bundles/BundleNum = $currentBundleNum]/RollCountry,&quot;'&quot;)
,false(),false(),&quot;jdbc/ebsapps&quot;)"/>
                </ns11:C_ATTRIBUTE10>
                <ns11:C_ATTRIBUTE11>
                  <xsl:value-of select='xp20:format-dateTime (/Envelope/Tests/TestSet[Bundles/BundleNum = $currentBundleNum]/RollDate, "[Y0001]-[MN,*-3]-[D01]" )'/>
                </ns11:C_ATTRIBUTE11>
                <ns11:C_ATTRIBUTE12>
                  <xsl:value-of select="/Envelope/Tests/TestSet[Bundles/BundleNum = $currentBundleNum]/FinalMill"/>
                </ns11:C_ATTRIBUTE12>
                <ns11:C_ATTRIBUTE13>
                  <xsl:value-of select="oraext:query-database(concat(&quot;SELECT territory_short_name FROM fnd_territories_vl WHERE territory_code =  &quot;,&quot;'&quot;,/Envelope/Tests/TestSet[Bundles/BundleNum = $currentBundleNum]/FinalCountry,&quot;'&quot;)
,false(),false(),&quot;jdbc/ebsapps&quot;)"/>
                </ns11:C_ATTRIBUTE13>
                <ns11:C_ATTRIBUTE14>
                  <xsl:value-of select='xp20:format-dateTime (/Envelope/Tests/TestSet[Bundles/BundleNum = $currentBundleNum]/FinalDate, "[Y0001]-[MN,*-3]-[D01]" )'/>
                </ns11:C_ATTRIBUTE14>
                <ns11:PARENT_LOT_NUMBER>
                  <xsl:value-of select="current-grouping-key()"/>
                </ns11:PARENT_LOT_NUMBER>
              </ns11:P_I_LOT_ITEM>
            </xsl:for-each-group>
          </xsl:for-each>
        </ns11:LotDetails>
      </ns11:CreateLotReq>
    </tns:CreateLotRequest>
  </xsl:template>
</xsl:stylesheet>
