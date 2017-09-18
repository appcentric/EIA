<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:ns1="http://schemas.oracle.com/service/bpel/common"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:ns5="http://xmlns.eia.com/AM/EBiz/P2P/LotAM/1.0" xmlns:ns0="http://www.example.org"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:tns="http://xmlns.eia.com/AO/Ebiz/D2S/QualityResultsAM/1.0"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns1 ns5 ns0 tns oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:ns3="http://xmlns.eia.com/ABS/EBiz/PurchaseOrderABS/1.0"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/ftp/109/NUC_ASNQualityResults_Suppliers_Ross_ABF/FTP_ReadASNSupplier_Ross"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns13="http://xmlns.eia.com/AO/EBiz/P2P/LotAO/1.0"
                xmlns:ns4="http:/xmlns.eia.com/Implementation/ABS/NUC_EBizLot_ABS/EBizLotABS/1.0"
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
                xmlns:ns14="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns15="http://xmlns.eia.com/AO/Ebiz/D2S/QualityResultsAO/1.0"
                xmlns:client="http:/xmlns.eia.com/Implementation/ABS/NUC_NUC_EBizQualityResults_ABS/QualityResults/1.0">
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
        <oracle-xsl-mapper:param name="g_GroupId"/>
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
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/D2S/QualityResults.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QualityResultsAddRq"
                                       namespace="http://xmlns.eia.com/AO/Ebiz/D2S/QualityResultsAM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [FRI AUG 26 00:25:38 CDT 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="g_GroupId"/>
  <xsl:param name="g_derivedOrgId_Lines"/>
  <xsl:param name="g_derivedToOrgId_Lines"/>
  <xsl:param name="g_itemNumber"/>
  <xsl:param name="g_CreateLotABSResp_OutputVar.payload"/>
  <xsl:template match="/">
    <tns:QualityResultsAddRq>
      <ns11:HeaderRq>
        <ns11:TransactionRequestID/>
        <ns11:Language/>
        <ns11:ComponentID/>
        <ns11:ServiceName/>
        <ns11:TransactionIDREF/>
        <ns11:TransactionName/>
        <ns11:Source/>
        <ns11:Target/>
        <ns11:TimeStamp/>
        <ns11:MillName/>
      </ns11:HeaderRq>
      <tns:AppsContext>
        <ns10:UserName/>
        <ns10:ResponsibilityName/>
        <ns10:OrgId/>
      </tns:AppsContext>
      <ns15:GmdResultsPub>
        <xsl:for-each select="/Envelope/Tests/TestSet">
          <xsl:variable name="currentReheatNum">
            <xsl:value-of select="ReheatNum"/>
          </xsl:variable>
          <xsl:variable name="custPOForCurrentReheat">
            <xsl:value-of select="substring-before(/Envelope/Waybills/Waybill/WaybillLines/WaybillLine[Bundles/Bundle/ReheatNum = $currentReheatNum]/CustPO,'-')"/>
          </xsl:variable>
          <xsl:variable name="custPOLineForCurrentReheat">
            <xsl:value-of select="substring-after(/Envelope/Waybills/Waybill/WaybillLines/WaybillLine[Bundles/Bundle/ReheatNum = $currentReheatNum]/CustPO,'-')"/>
          </xsl:variable>
          <!-- <a>
            <xsl:value-of select="$currentReheatNum"/>
          </a>
          <b>
            <xsl:value-of select="/Envelope/Waybills/Waybill/WaybillLines/WaybillLine[Bundles/Bundle/ReheatNum = $currentReheatNum]/CustPO"/>
          </b>
          <c>
          <xsl:value-of select="$custPOLineForCurrentReheat"/>
          </c>-->
          <xsl:variable name="statusForCurrentLot"
                        select="$g_CreateLotABSResp_OutputVar.payload/ns5:CreateLotResp/ns13:CreateLotResp/ns13:LotStatus/ns13:LotStatusItem[ns13:LOT_NUMBER=$currentReheatNum]/ns13:STATUS"/>
          <xsl:if test="$statusForCurrentLot != 'Error'">
            <ns15:GmdResultPub>
              <ns15:TxnID>
                <xsl:value-of select="$g_GroupId/ns1:parameters/ns1:item/ns1:value"/>
              </ns15:TxnID>
              <ns15:OrganizationId>
                <xsl:value-of select="$g_derivedToOrgId_Lines/ns1:parameters/ns1:item[(ns1:name = $custPOForCurrentReheat) and (ns1:msg = $custPOLineForCurrentReheat)]/ns1:value"/>
              </ns15:OrganizationId>
              <ns15:SampleSource>I</ns15:SampleSource>
              <ns15:item_id>
                <xsl:value-of select="$g_itemNumber/ns1:parameters/ns1:item[(ns1:name = $custPOForCurrentReheat) and (ns1:msg = $custPOLineForCurrentReheat)]/ns1:value"/>
              </ns15:item_id>
              <ns15:ParentLotNO>
                <xsl:value-of select="HeatNum"/>
              </ns15:ParentLotNO>
              <ns15:LotNo>
                <xsl:value-of select="ReheatNum"/>
              </ns15:LotNo>
              <ns15:SampleQTY>
                <xsl:value-of select="sum(/Envelope/Waybills/Waybill/WaybillLines/WaybillLine/Bundles/Bundle[(ReheatNum = $currentReheatNum)]/QtyPcs )"/>
              </ns15:SampleQTY>
              <ns15:SampleQtyUOM>
                <xsl:value-of select="xp20:upper-case(/Envelope/Waybills/Waybill/WaybillLines/WaybillLine[Bundles/Bundle/ReheatNum = $currentReheatNum]/LineWgtTtl/@UOM)"/>
              </ns15:SampleQtyUOM>
              <ns15:Sampler/>
              <ns15:Test_results>
                <xsl:for-each select="Measures/Measure">
                  <ns15:Test_results>
                    <ns15:TestCode>
                      <xsl:value-of select="@Test"/>
                    </ns15:TestCode>
                    <ns15:Tester/>
                    <ns15:ResultValue>
                      <xsl:value-of select="."/>
                    </ns15:ResultValue>
                    <ns15:ResultDate>
                      <xsl:value-of select="xp20:current-time ( )"/>
                    </ns15:ResultDate>
                    <ns15:Replicate>
                      <xsl:value-of select="@Replicate"/>
                    </ns15:Replicate>
                  </ns15:Test_results>
                </xsl:for-each>
              </ns15:Test_results>
            </ns15:GmdResultPub>
          </xsl:if>
        </xsl:for-each>
      </ns15:GmdResultsPub>
    </tns:QualityResultsAddRq>
  </xsl:template>
</xsl:stylesheet>
