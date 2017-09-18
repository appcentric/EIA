<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:eia="http://xmlns.eia.com/extensions/1.0"
                xmlns:ns0="http://xmlns.eia.com/ABS/EBiz/PurchaseOrderABS/1.0"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ns9="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/WI_Application/NUC_EbizPurchaseOrder_ABS/DB_QueryPurchaseOrderEBS"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:ns2="http://xmlns.eia.com/AO/EBiz/common/SupplierAO/1.0"
                xmlns:poam="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderABM/1.0"
                xmlns:ns5="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:ns10="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns1="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns8="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_QueryPurchaseOrderEBS"
                xmlns:ns6="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ns3="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:ns11="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns12="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns4="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderAO/1.0"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl tns plt wsdl top xsd ns0 ns9 poam ns5 ns10 soap12 soap mime core ns1 ns8 ns6 ns7 ns3 ns11 ns12 ns4 bpws xp20 eia bpel bpm utl ora socket mhdr oraext dvm hwf med ids xdk xref ldap"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:ns13="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns14="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns15="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns16="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns17="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../DB_QueryPurchaseOrderEBS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="PoHeadersAllCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_QueryPurchaseOrderEBS"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/PurchaseOrderABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryPurchaseOrderResponseMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderABM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <oracle-xsl-mapper:mapShowPrefixes type="true"/>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED SEP 09 14:05:50 CDT 2015].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <poam:QueryPurchaseOrderResponseMessage>
      <ns15:HeaderRs>
        <ns15:RequestDetails>
          <ns15:Language>ENG</ns15:Language>
        </ns15:RequestDetails>
        <ns15:Status>
          <ns15:Status>SUCCESS</ns15:Status>
        </ns15:Status>
      </ns15:HeaderRs>
      <poam:ListOfPurchaseOrders>
        <xsl:for-each select="/top:PoHeadersAllCollection/top:PoHeadersAll">
          <ns4:PurchaseOrder>
            <xsl:if test="top:acceptanceDueDate and top:acceptanceDueDate !=''">
              <ns4:Acceptanceduedate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:acceptanceDueDate/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:acceptanceDueDate"/>
              </ns4:Acceptanceduedate>
            </xsl:if>
            <xsl:if test="top:Acceptancerequiredflag and top:Acceptancerequiredflag !=''">
              <ns4:Acceptancerequiredflag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:acceptanceRequiredFlag/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:acceptanceRequiredFlag"/>
              </ns4:Acceptancerequiredflag>
            </xsl:if>
            <xsl:if test="top:agentId and top:agentId !=''">
              <ns4:Agentid>
                <xsl:value-of select="top:agentId"/>
              </ns4:Agentid>
            </xsl:if>
            <xsl:if test="top:amountLimit and top:amountLimit !=''">
              <ns4:Amountlimit>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:amountLimit/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:amountLimit"/>
              </ns4:Amountlimit>
            </xsl:if>
            <xsl:if test="top:approvalRequiredFlag and top:approvalRequiredFlag !=''">
              <ns4:Approvalrequiredflag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:approvalRequiredFlag/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:approvalRequiredFlag"/>
              </ns4:Approvalrequiredflag>
            </xsl:if>
            <xsl:if test="top:approvedDate and top:approvedDate !=''">
              <ns4:Approveddate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:approvedDate/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:approvedDate"/>
              </ns4:Approveddate>
            </xsl:if>
            <xsl:if test="top:approvedFlag and top:approvedFlag !=''">
              <ns4:Approvedflag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:approvedFlag/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:approvedFlag"/>
              </ns4:Approvedflag>
            </xsl:if>
            <xsl:if test="top:authorizationStatus and top:authorizationStatus !=''">
              <ns4:Authorizationstatus>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:authorizationStatus/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:authorizationStatus"/>
              </ns4:Authorizationstatus>
            </xsl:if>
            <xsl:if test="top:billToLocationId and top:billToLocationId !=''">
              <ns4:Billtolocation>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:billToLocationId/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:billToLocationId"/>
              </ns4:Billtolocation>
            </xsl:if>
            <xsl:if test="top:billToLocationId and top:billToLocationId !=''">
              <ns4:Billtolocationid>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:billToLocationId/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:billToLocationId"/>
              </ns4:Billtolocationid>
            </xsl:if>
            <xsl:if test="top:blanketTotalAmount and top:blanketTotalAmount !=''">
              <ns4:Blankettotalamount>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:blanketTotalAmount/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:blanketTotalAmount"/>
              </ns4:Blankettotalamount>
            </xsl:if>
            <xsl:if test="top:segment1 and top:segment1 !=''">
              <ns4:Budgetaccountsegment1>
                <xsl:value-of select="top:segment1"/>
              </ns4:Budgetaccountsegment1>
            </xsl:if>
            <xsl:if test="top:segment2 and top:segment2 !=''">
              <ns4:Budgetaccountsegment2>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:segment2/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:segment2"/>
              </ns4:Budgetaccountsegment2>
            </xsl:if>
            <xsl:if test="top:segment3 and top:segment3 !=''">
              <ns4:Budgetaccountsegment3>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:segment3/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:segment3"/>
              </ns4:Budgetaccountsegment3>
            </xsl:if>
            <xsl:if test="top:segment4 and top:segment4 !=''">
              <ns4:Budgetaccountsegment4>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:segment4/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:segment4"/>
              </ns4:Budgetaccountsegment4>
            </xsl:if>
            <xsl:if test="top:segment5 and top:segment5 !=''">
              <ns4:Budgetaccountsegment5>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:segment5/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:segment5"/>
              </ns4:Budgetaccountsegment5>
            </xsl:if>
            <xsl:if test="top:cancelFlag and top:cancelFlag !=''">
              <ns4:Cancelflag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:cancelFlag/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:cancelFlag"/>
              </ns4:Cancelflag>
            </xsl:if>
            <xsl:if test="top:changeSummary and top:changeSummary !=''">
              <ns4:Changesummary>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:changeSummary/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:changeSummary"/>
              </ns4:Changesummary>
            </xsl:if>
            <xsl:if test="top:closedCode and top:closedCode !=''">
              <ns4:Closedcode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:closedCode/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:closedCode"/>
              </ns4:Closedcode>
            </xsl:if>
            <xsl:if test="top:closedDate and top:closedDate !=''">
              <ns4:Closeddate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:closedDate/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:closedDate"/>
              </ns4:Closeddate>
            </xsl:if>
            <xsl:if test="top:comments and top:comments !=''">
              <ns4:Comments>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:comments/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:comments"/>
              </ns4:Comments>
            </xsl:if>
            <xsl:if test="top:confirmingOrderFlag and top:confirmingOrderFlag !=''">
              <ns4:Confirmingorderflag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:confirmingOrderFlag/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:confirmingOrderFlag"/>
              </ns4:Confirmingorderflag>
            </xsl:if>
            <xsl:if test="top:consignedConsumptionFlag and top:consignedConsumptionFlag !=''">
              <ns4:Consignedconsumptionflag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:consignedConsumptionFlag/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:consignedConsumptionFlag"/>
              </ns4:Consignedconsumptionflag>
            </xsl:if>
            <xsl:if test="top:consumeReqDemandFlag and top:consumeReqDemandFlag !=''">
              <ns4:Consumereqdemandflag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:consumeReqDemandFlag/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:consumeReqDemandFlag"/>
              </ns4:Consumereqdemandflag>
            </xsl:if>
            <xsl:if test="top:contermsArticlesUpdDate and top:contermsArticlesUpdDate !=''">
              <ns4:Contermsarticlesupddate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:contermsArticlesUpdDate/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:contermsArticlesUpdDate"/>
              </ns4:Contermsarticlesupddate>
            </xsl:if>
            <xsl:if test="top:contermsDelivUpdDate and top:contermsDelivUpdDate !=''">
              <ns4:Contermsdelivupddate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:contermsDelivUpdDate/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:contermsDelivUpdDate"/>
              </ns4:Contermsdelivupddate>
            </xsl:if>
            <xsl:if test="top:contermsExistFlag and top:contermsExistFlag !=''">
              <ns4:Contermsexistflag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:contermsExistFlag/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:contermsExistFlag"/>
              </ns4:Contermsexistflag>
            </xsl:if>
            <xsl:if test="top:cpaReference and top:cpaReference !=''">
              <ns4:Cpareference>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:cpaReference/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:cpaReference"/>
              </ns4:Cpareference>
            </xsl:if>
            <xsl:if test="top:createdBy and top:createdBy !=''">
              <ns4:Createdby>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:createdBy/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:createdBy"/>
              </ns4:Createdby>
            </xsl:if>
            <xsl:if test="top:createdLanguage and top:createdLanguage !=''">
              <ns4:Createdlanguage>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:createdLanguage/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:createdLanguage"/>
              </ns4:Createdlanguage>
            </xsl:if>
            <xsl:if test="top:creationDate and top:creationDate !=''">
              <ns4:Creationdate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:creationDate/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:creationDate"/>
              </ns4:Creationdate>
            </xsl:if>
            <xsl:if test="top:creationDate and top:creationDate !=''">
              <ns4:Creationdatedisp>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:creationDate/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:creationDate"/>
              </ns4:Creationdatedisp>
            </xsl:if>
            <xsl:if test="top:currencyCode and top:currencyCode !=''">
              <ns4:Currencycode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:currencyCode/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:currencyCode"/>
              </ns4:Currencycode>
            </xsl:if>
            <xsl:if test="top:rateType and top:rateType !=''">
              <ns4:Dispratetype>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:rateType/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:rateType"/>
              </ns4:Dispratetype>
            </xsl:if>
            <xsl:if test="top:enableAllSites and top:enableAllSites !=''">
              <ns4:Enableallsites>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:enableAllSites/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:enableAllSites"/>
              </ns4:Enableallsites>
            </xsl:if>
            <xsl:if test="top:supplierAuthEnabledFlag and top:supplierAuthEnabledFlag !=''">
              <ns4:Enabledflag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:supplierAuthEnabledFlag/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:enabledFlag"/>
              </ns4:Enabledflag>
            </xsl:if>
            <xsl:if test="top:encumbranceRequiredFlag and top:encumbranceRequiredFlag !=''">
              <ns4:Encumbrancerequiredflag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:encumbranceRequiredFlag/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:encumbranceRequiredFlag"/>
              </ns4:Encumbrancerequiredflag>
            </xsl:if>
            <xsl:if test="top:endDate and top:endDate !=''">
              <ns4:Enddate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:endDate/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:endDate"/>
              </ns4:Enddate>
            </xsl:if>
            <xsl:if test="top:endDateActive and top:endDateActive !=''">
              <ns4:Enddateactive>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:endDateActive/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:endDateActive"/>
              </ns4:Enddateactive>
            </xsl:if>
            <xsl:if test="top:fax and top:fax !=''">
              <ns4:Fax>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:fax/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:fax"/>
              </ns4:Fax>
            </xsl:if>
            <xsl:if test="top:firmDate and top:firmDate !=''">
              <ns4:Firmdate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:firmDate/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:firmDate"/>
              </ns4:Firmdate>
            </xsl:if>
            <xsl:if test="top:firmStatusLookupCode and top:firmStatusLookupCode !=''">
              <ns4:Firmstatuslookupcode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:firmStatusLookupCode/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:firmStatusLookupCode"/>
              </ns4:Firmstatuslookupcode>
            </xsl:if>
            <xsl:if test="top:fobLookupCode and top:fobLookupCode !=''">
              <ns4:Fob>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:fobLookupCode/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:fobLookupCode"/>
              </ns4:Fob>
            </xsl:if>
            <xsl:if test="top:fobLookupCode and top:fobLookupCode !=''">
              <ns4:Foblookupcode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:fobLookupCode/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:fobLookupCode"/>
              </ns4:Foblookupcode>
            </xsl:if>
            <xsl:if test="top:freightTermsLookupCode and top:freightTermsLookupCode !=''">
              <ns4:Freightterms>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:freightTermsLookupCode/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:freightTermsLookupCode"/>
              </ns4:Freightterms>
            </xsl:if>
            <xsl:if test="top:freightTermsLookupCode and top:freightTermsLookupCode !=''">
              <ns4:Freighttermslookupcode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:freightTermsLookupCode/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:freightTermsLookupCode"/>
              </ns4:Freighttermslookupcode>
            </xsl:if>
            <xsl:if test="top:fromHeaderId and top:fromHeaderId !=''">
              <ns4:Fromheaderid>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:fromHeaderId/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:fromHeaderId"/>
              </ns4:Fromheaderid>
            </xsl:if>
            <xsl:if test="top:fromTypeLookupCode and top:fromTypeLookupCode !=''">
              <ns4:Fromtypelookupcode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:fromTypeLookupCode/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:fromTypeLookupCode"/>
              </ns4:Fromtypelookupcode>
            </xsl:if>
            <xsl:if test="top:frozenFlag and top:frozenFlag !=''">
              <ns4:Frozenflag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:frozenFlag/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:frozenFlag"/>
              </ns4:Frozenflag>
            </xsl:if>
            <xsl:if test="top:globalAgreementFlag and top:globalAgreementFlag !=''">
              <ns4:Globalagreementflag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAgreementFlag/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAgreementFlag"/>
              </ns4:Globalagreementflag>
            </xsl:if>
            <xsl:if test="top:globalAttribute1 and top:globalAttribute1 !=''">
              <ns4:Globalattribute1>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAttribute1/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAttribute1"/>
              </ns4:Globalattribute1>
            </xsl:if>
            <xsl:if test="top:globalAttribute10 and top:globalAttribute10 !=''">
              <ns4:Globalattribute10>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAttribute10/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAttribute10"/>
              </ns4:Globalattribute10>
            </xsl:if>
            <xsl:if test="top:globalAttribute11 and top:globalAttribute11 !=''">
              <ns4:Globalattribute11>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAttribute11/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAttribute11"/>
              </ns4:Globalattribute11>
            </xsl:if>
            <xsl:if test="top:globalAttribute12 and top:globalAttribute12 !=''">
              <ns4:Globalattribute12>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAttribute12/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAttribute12"/>
              </ns4:Globalattribute12>
            </xsl:if>
            <xsl:if test="top:globalAttribute13 and top:globalAttribute13 !=''">
              <ns4:Globalattribute13>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAttribute13/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAttribute13"/>
              </ns4:Globalattribute13>
            </xsl:if>
            <xsl:if test="top:globalAttribute14 and top:globalAttribute14 !=''">
              <ns4:Globalattribute14>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAttribute14/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAttribute14"/>
              </ns4:Globalattribute14>
            </xsl:if>
            <xsl:if test="top:globalAttribute15 and top:globalAttribute15 !=''">
              <ns4:Globalattribute15>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAttribute15/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAttribute15"/>
              </ns4:Globalattribute15>
            </xsl:if>
            <xsl:if test="top:globalAttribute16 and top:globalAttribute16 !=''">
              <ns4:Globalattribute16>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAttribute16/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAttribute16"/>
              </ns4:Globalattribute16>
            </xsl:if>
            <xsl:if test="top:globalAttribute17 and top:globalAttribute17 !=''">
              <ns4:Globalattribute17>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAttribute17/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAttribute17"/>
              </ns4:Globalattribute17>
            </xsl:if>
            <xsl:if test="top:globalAttribute18 and top:globalAttribute18 !=''">
              <ns4:Globalattribute18>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAttribute18/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAttribute18"/>
              </ns4:Globalattribute18>
            </xsl:if>
            <xsl:if test="top:globalAttribute18 and top:globalAttribute18 !=''">
              <ns4:Globalattribute19>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAttribute19/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAttribute19"/>
              </ns4:Globalattribute19>
            </xsl:if>
            <xsl:if test="top:globalAttribute2 and top:globalAttribute2 !=''">
              <ns4:Globalattribute2>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAttribute2/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAttribute2"/>
              </ns4:Globalattribute2>
            </xsl:if>
            <xsl:if test="top:globalAttribute20 and top:globalAttribute20 !=''">
              <ns4:Globalattribute20>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAttribute20/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAttribute20"/>
              </ns4:Globalattribute20>
            </xsl:if>
            <xsl:if test="top:globalAttribute3 and top:globalAttribute3 !=''">
              <ns4:Globalattribute3>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAttribute3/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAttribute3"/>
              </ns4:Globalattribute3>
            </xsl:if>
            <xsl:if test="top:globalAttribute4 and top:globalAttribute4 !=''">
              <ns4:Globalattribute4>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAttribute4/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAttribute4"/>
              </ns4:Globalattribute4>
            </xsl:if>
            <xsl:if test="top:globalAttribute5 and top:globalAttribute5 !=''">
              <ns4:Globalattribute5>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAttribute5/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAttribute5"/>
              </ns4:Globalattribute5>
            </xsl:if>
            <xsl:if test="top:globalAttribute6 and top:globalAttribute6 !=''">
              <ns4:Globalattribute6>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAttribute6/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAttribute6"/>
              </ns4:Globalattribute6>
            </xsl:if>
            <xsl:if test="top:globalAttribute7 and top:globalAttribute7 !=''">
              <ns4:Globalattribute7>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAttribute7/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAttribute7"/>
              </ns4:Globalattribute7>
            </xsl:if>
            <xsl:if test="top:globalAttribute8 and top:globalAttribute8 !=''">
              <ns4:Globalattribute8>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAttribute8/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAttribute8"/>
              </ns4:Globalattribute8>
            </xsl:if>
            <xsl:if test="top:globalAttribute9 and top:globalAttribute9 !=''">
              <ns4:Globalattribute9>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAttribute9/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAttribute9"/>
              </ns4:Globalattribute9>
            </xsl:if>
            <xsl:if test="top:globalAttributeCategory and top:globalAttributeCategory !=''">
              <ns4:Globalattributecategory>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:globalAttributeCategory/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:globalAttributeCategory"/>
              </ns4:Globalattributecategory>
            </xsl:if>
            <xsl:if test="top:governmentContext and top:governmentContext !=''">
              <ns4:Governmentcontext>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:governmentContext/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:governmentContext"/>
              </ns4:Governmentcontext>
            </xsl:if>
            <xsl:if test="top:interfaceSourceCode and top:interfaceSourceCode !=''">
              <ns4:Interfacesourcecode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:interfaceSourceCode/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:interfaceSourceCode"/>
              </ns4:Interfacesourcecode>
            </xsl:if>
            <xsl:if test="top:lastUpdateDate and top:lastUpdateDate !=''">
              <ns4:Lastupdatedate>
                <xsl:value-of select="top:lastUpdateDate"/>
              </ns4:Lastupdatedate>
            </xsl:if>
            <xsl:if test="top:lastUpdatedBy and top:lastUpdatedBy !=''">
              <ns4:Lastupdatedby>
                <xsl:value-of select="top:lastUpdatedBy"/>
              </ns4:Lastupdatedby>
            </xsl:if>
            <xsl:if test="top:lastUpdateLogin and top:lastUpdateLogin !=''">
              <ns4:Lastupdatelogin>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:lastUpdateLogin/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:lastUpdateLogin"/>
              </ns4:Lastupdatelogin>
            </xsl:if>
            <xsl:if test="top:lockOwnerRole and top:lockOwnerRole !=''">
              <ns4:Lockownerrole>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:lockOwnerRole/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:lockOwnerRole"/>
              </ns4:Lockownerrole>
            </xsl:if>
            <xsl:if test="top:lockOwnerUserId and top:lockOwnerUserId !=''">
              <ns4:Lockowneruserid>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:lockOwnerUserId/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:lockOwnerUserId"/>
              </ns4:Lockowneruserid>
            </xsl:if>
            <xsl:if test="top:minReleaseAmount and top:minReleaseAmount !=''">
              <ns4:Minreleaseamount>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:minReleaseAmount/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:minReleaseAmount"/>
              </ns4:Minreleaseamount>
            </xsl:if>
            <xsl:if test="top:noteToAuthorizer and top:noteToAuthorizer !=''">
              <ns4:Notetoauthorizer>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:noteToAuthorizer/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:noteToAuthorizer"/>
              </ns4:Notetoauthorizer>
            </xsl:if>
            <xsl:if test="top:noteToReceiver and top:noteToReceiver !=''">
              <ns4:Notetoreceiver>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:noteToReceiver/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:noteToReceiver"/>
              </ns4:Notetoreceiver>
            </xsl:if>
            <xsl:if test="top:noteToVendor and top:noteToVendor !=''">
              <ns4:Notetovendor>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:noteToVendor/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:noteToVendor"/>
              </ns4:Notetovendor>
            </xsl:if>
            <xsl:if test="top:hrOperatingUnits/top:organizationId and top:hrOperatingUnits/top:organizationId !=''">
              <ns4:Orgid>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:hrOperatingUnits/top:organizationId/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:hrOperatingUnits/top:organizationId"/>
              </ns4:Orgid>
            </xsl:if>
            <xsl:if test="top:hrOperatingUnits/top:name">
              <ns4:OperatingUnit>
                <xsl:if test="top:hrOperatingUnits/top:name/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="top:hrOperatingUnits/top:name/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="top:hrOperatingUnits/top:name"/>
              </ns4:OperatingUnit>
            </xsl:if>
            <xsl:if test="top:poHeaderId and top:poHeaderId !=''">
              <ns4:Originalpoheaderid>
                <xsl:value-of select="top:poHeaderId"/>
              </ns4:Originalpoheaderid>
            </xsl:if>
            <xsl:if test="top:payOnCode and top:payOnCode !=''">
              <ns4:Payoncode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:payOnCode/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:payOnCode"/>
              </ns4:Payoncode>
            </xsl:if>
            <xsl:if test="top:pcardId and top:pcardId !=''">
              <ns4:Pcardid>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:pcardId/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:pcardId"/>
              </ns4:Pcardid>
            </xsl:if>
            <xsl:if test="top:pendingSignatureFlag and top:pendingSignatureFlag !=''">
              <ns4:Pendingsignatureflag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:pendingSignatureFlag/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:pendingSignatureFlag"/>
              </ns4:Pendingsignatureflag>
            </xsl:if>
            <xsl:if test="top:poHeaderId and top:poHeaderId !=''">
              <ns4:Poheaderid>
                <xsl:value-of select="top:poHeaderId"/>
              </ns4:Poheaderid>
            </xsl:if>
            <xsl:if test="top:priceUpdateTolerance and top:priceUpdateTolerance !=''">
              <ns4:Priceupdatetolerance>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:priceUpdateTolerance/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:priceUpdateTolerance"/>
              </ns4:Priceupdatetolerance>
            </xsl:if>
            <xsl:if test="top:printCount and top:printCount !=''">
              <ns4:Printcount>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:printCount/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:printCount"/>
              </ns4:Printcount>
            </xsl:if>
            <xsl:if test="top:printedDate and top:printedDate !=''">
              <ns4:Printeddate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:printedDate/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:printedDate"/>
              </ns4:Printeddate>
            </xsl:if>
            <xsl:if test="top:programApplicationId and top:programApplicationId !=''">
              <ns4:Programapplicationid>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:programApplicationId/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:programApplicationId"/>
              </ns4:Programapplicationid>
            </xsl:if>
            <xsl:if test="top:programId and top:programId !=''">
              <ns4:Programid>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:programId/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:programId"/>
              </ns4:Programid>
            </xsl:if>
            <xsl:if test="top:programUpdateDate and top:programUpdateDate !=''">
              <ns4:Programupdatedate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:programUpdateDate/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:programUpdateDate"/>
              </ns4:Programupdatedate>
            </xsl:if>
            <xsl:if test="top:quotationClassCode and top:quotationClassCode !=''">
              <ns4:Quotationclasscode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:quotationClassCode/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:quotationClassCode"/>
              </ns4:Quotationclasscode>
            </xsl:if>
            <xsl:if test="top:quoteTypeLookupCode and top:quoteTypeLookupCode !=''">
              <ns4:Quotetypelookupcode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:quoteTypeLookupCode/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:quoteTypeLookupCode"/>
              </ns4:Quotetypelookupcode>
            </xsl:if>
            <xsl:if test="top:quoteVendorQuoteNumber and top:quoteVendorQuoteNumber !=''">
              <ns4:Quotevendorquotenumber>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:quoteVendorQuoteNumber/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:quoteVendorQuoteNumber"/>
              </ns4:Quotevendorquotenumber>
            </xsl:if>
            <xsl:if test="top:quoteWarningDelay and top:quoteWarningDelay !=''">
              <ns4:Quotewarningdelay>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:quoteWarningDelay/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:quoteWarningDelay"/>
              </ns4:Quotewarningdelay>
            </xsl:if>
            <xsl:if test="top:quoteWarningDelayUnit and top:quoteWarningDelayUnit !=''">
              <ns4:Quotewarningdelayunit>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:quoteWarningDelayUnit/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:quoteWarningDelayUnit"/>
              </ns4:Quotewarningdelayunit>
            </xsl:if>
            <xsl:if test="top:rate and top:rate !=''">
              <ns4:Rate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:rate/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:rate"/>
              </ns4:Rate>
            </xsl:if>
            <xsl:if test="top:rateDate and top:rateDate !=''">
              <ns4:Ratedate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:rateDate/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:rateDate"/>
              </ns4:Ratedate>
            </xsl:if>
            <xsl:if test="top:rateType and top:rateType !=''">
              <ns4:Ratetype>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:rateType/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:rateType"/>
              </ns4:Ratetype>
            </xsl:if>
            <xsl:if test="top:rate and top:rate !=''">
              <ns4:Ratetypecode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:rate/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:rate"/>
              </ns4:Ratetypecode>
            </xsl:if>
            <xsl:if test="top:referenceNum and top:referenceNum !=''">
              <ns4:Referencenum>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:referenceNum/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:referenceNum"/>
              </ns4:Referencenum>
            </xsl:if>
            <xsl:if test="top:replyDate and top:replyDate !=''">
              <ns4:Replydate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:replyDate/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:replyDate"/>
              </ns4:Replydate>
            </xsl:if>
            <xsl:if test="top:replyMethodLookupCode and top:replyMethodLookupCode !=''">
              <ns4:Replymethod>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:replyMethodLookupCode/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:replyMethodLookupCode"/>
              </ns4:Replymethod>
            </xsl:if>
            <xsl:if test="top:replyMethodLookupCode and top:replyMethodLookupCode !=''">
              <ns4:Replymethodlookupcode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:replyMethodLookupCode/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:replyMethodLookupCode"/>
              </ns4:Replymethodlookupcode>
            </xsl:if>
            <xsl:if test="top:requestId and top:requestId !=''">
              <ns4:Requestid>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:requestId/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:requestId"/>
              </ns4:Requestid>
            </xsl:if>
            <xsl:if test="top:Reviseddate and top:Reviseddate !=''">
              <ns4:Reviseddate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:revisedDate/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:revisedDate"/>
              </ns4:Reviseddate>
            </xsl:if>
            <xsl:if test="top:revisionNum and top:revisionNum !=''">
              <ns4:Revisionnum>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:revisionNum/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:revisionNum"/>
              </ns4:Revisionnum>
            </xsl:if>
            <xsl:if test="top:rfqCloseDate and top:rfqCloseDate !=''">
              <ns4:Rfqclosedate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:rfqCloseDate/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:rfqCloseDate"/>
              </ns4:Rfqclosedate>
            </xsl:if>
            <xsl:if test="top:segment1 and top:segment1 !=''">
              <ns4:Segment1>
                <xsl:value-of select="top:segment1"/>
              </ns4:Segment1>
            </xsl:if>
            <xsl:if test="top:segment2 and top:segment2 !=''">
              <ns4:Segment2>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:segment2/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:segment2"/>
              </ns4:Segment2>
            </xsl:if>
            <xsl:if test="top:segment3 and top:segment3 !=''">
              <ns4:Segment3>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:segment3/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:segment3"/>
              </ns4:Segment3>
            </xsl:if>
            <xsl:if test="top:segment4 and top:segment4 !=''">
              <ns4:Segment4>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:segment4/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:segment4"/>
              </ns4:Segment4>
            </xsl:if>
            <xsl:if test="top:segment5 and top:segment5 !=''">
              <ns4:Segment5>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:segment5/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:segment5"/>
              </ns4:Segment5>
            </xsl:if>
            <xsl:if test="top:shippingControl and top:shippingControl !=''">
              <ns4:Shippingcontrol>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:shippingControl/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:shippingControl"/>
              </ns4:Shippingcontrol>
            </xsl:if>
            <xsl:if test="top:shipToLocationId and top:shipToLocationId !=''">
              <ns4:Shiptolocation>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:shipToLocationId/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:shipToLocationId"/>
              </ns4:Shiptolocation>
            </xsl:if>
            <xsl:if test="top:shipToLocationId and top:shipToLocationId !=''">
              <ns4:Shiptolocationid>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:shipToLocationId/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:shipToLocationId"/>
              </ns4:Shiptolocationid>
            </xsl:if>
            <xsl:if test="top:shipViaLookupCode and top:shipViaLookupCode !=''">
              <ns4:Shipvialookupcode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:shipViaLookupCode/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:shipViaLookupCode"/>
              </ns4:Shipvialookupcode>
            </xsl:if>
            <xsl:if test="top:startDate and top:startDate !=''">
              <ns4:Startdate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:startDate/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:startDate"/>
              </ns4:Startdate>
            </xsl:if>
            <xsl:if test="top:startDateActive and top:startDateActive !=''">
              <ns4:Startdateactive>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:startDateActive/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:startDateActive"/>
              </ns4:Startdateactive>
            </xsl:if>
            <xsl:if test="top:statusLookupCode and top:statusLookupCode !=''">
              <ns4:Status>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:statusLookupCode/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:statusLookupCode"/>
              </ns4:Status>
            </xsl:if>
            <xsl:if test="top:statusLookupCode and top:statusLookupCode !=''">
              <ns4:Statuslookupcode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:statusLookupCode/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:statusLookupCode"/>
              </ns4:Statuslookupcode>
            </xsl:if>
            <xsl:if test="top:styleId and top:styleId !=''">
              <ns4:Styleid>
                <xsl:value-of select="top:styleId"/>
              </ns4:Styleid>
            </xsl:if>
            <xsl:if test="top:summaryFlag and top:summaryFlag !=''">
              <ns4:Summaryflag>
                <xsl:value-of select="top:summaryFlag"/>
              </ns4:Summaryflag>
            </xsl:if>
            <xsl:if test="top:supplyAgreementFlag and top:supplyAgreementFlag !=''">
              <ns4:Supplyagreementflag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:supplyAgreementFlag/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:supplyAgreementFlag"/>
              </ns4:Supplyagreementflag>
            </xsl:if>
            <xsl:if test="top:termsId and top:termsId !=''">
              <ns4:Termsid>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:termsId/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:termsId"/>
              </ns4:Termsid>
            </xsl:if>
            <xsl:if test="top:fromTypeLookupCode and top:fromTypeLookupCode !=''">
              <ns4:Typelookupcode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:fromTypeLookupCode/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:typeLookupCode"/>
              </ns4:Typelookupcode>
            </xsl:if>
            <xsl:if test="top:userHoldFlag and top:userHoldFlag !=''">
              <ns4:Userholdflag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:userHoldFlag/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:userHoldFlag"/>
              </ns4:Userholdflag>
            </xsl:if>
            <xsl:if test="top:ussglTransactionCode and top:ussglTransactionCode !=''">
              <ns4:Ussgltransactioncode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:ussglTransactionCode/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:ussglTransactionCode"/>
              </ns4:Ussgltransactioncode>
            </xsl:if>
            <xsl:if test="top:vendorContactId and top:vendorContactId !=''">
              <ns4:Vendorcontact>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:vendorContactId/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:vendorContactId"/>
              </ns4:Vendorcontact>
            </xsl:if>
            <xsl:if test="top:vendorContactId and top:vendorContactId !=''">
              <ns4:Vendorcontactid>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:vendorContactId/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:vendorContactId"/>
              </ns4:Vendorcontactid>
            </xsl:if>
            <xsl:if test="top:vendorId and top:vendorId !=''">
              <ns4:Vendorid>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:vendorId/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:vendorId"/>
              </ns4:Vendorid>
            </xsl:if>
            <xsl:if test="top:vendorOrderNum and top:vendorOrderNum !=''">
              <ns4:Vendorordernum>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:vendorOrderNum/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:vendorOrderNum"/>
              </ns4:Vendorordernum>
            </xsl:if>
            <xsl:if test="top:vendorSiteId and top:vendorSiteId !=''">
              <ns4:Vendorsiteid>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:vendorSiteId/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:vendorSiteId"/>
              </ns4:Vendorsiteid>
            </xsl:if>
            <xsl:if test="top:wfItemKey and top:wfItemKey !=''">
              <ns4:Wfitemkey>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:wfItemKey/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:wfItemKey"/>
              </ns4:Wfitemkey>
            </xsl:if>
            <xsl:if test="top:wfItemType and top:wfItemType !=''">
              <ns4:Wfitemtype>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="top:wfItemType/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="top:wfItemType"/>
              </ns4:Wfitemtype>
            </xsl:if>
            <ns4:HeaderDFF>
              <xsl:if test="top:attributeCategory and top:attributeCategory !=''">
                <ns3:AttributeCategory>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="top:attributeCategory/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="top:attributeCategory"/>
                </ns3:AttributeCategory>
              </xsl:if>
              <xsl:if test="top:attribute1 and top:attribute1 !=''">
                <ns3:Attribute1>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="top:attribute1/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="top:attribute1"/>
                </ns3:Attribute1>
              </xsl:if>
              <xsl:if test="top:attribute2 and top:attribute2 !=''">
                <ns3:Attribute2>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="top:attribute2/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="top:attribute2"/>
                </ns3:Attribute2>
              </xsl:if>
              <xsl:if test="top:attribut3 and top:attribute3 !=''">
                <ns3:Attribute3>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="top:attribute3/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="top:attribute3"/>
                </ns3:Attribute3>
              </xsl:if>
              <xsl:if test="top:attribute4 and top:attribute4 !=''">
                <ns3:Attribute4>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="top:attribute4/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="top:attribute4"/>
                </ns3:Attribute4>
              </xsl:if>
              <xsl:if test="top:attribute5 and top:attribute5 !=''">
                <ns3:Attribute5>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="top:attribute5/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="top:attribute5"/>
                </ns3:Attribute5>
              </xsl:if>
              <xsl:if test="top:attribute6 and top:attribute6 !=''">
                <ns3:Attribute6>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="top:attribute6/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="top:attribute6"/>
                </ns3:Attribute6>
              </xsl:if>
              <xsl:if test="top:attribute7 and top:attribute7 !=''">
                <ns3:Attribute7>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="top:attribute7/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="top:attribute7"/>
                </ns3:Attribute7>
              </xsl:if>
              <xsl:if test="top:attribute8 and top:attribute8 !=''">
                <ns3:Attribute8>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="top:attribute8/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="top:attribute8"/>
                </ns3:Attribute8>
              </xsl:if>
              <xsl:if test="top:attribute9 and top:attribute9 !=''">
                <ns3:Attribute9>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="top:attribute9/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="top:attribute9"/>
                </ns3:Attribute9>
              </xsl:if>
              <xsl:if test="top:attribute10 and top:attribute10 !=''">
                <ns3:Attribute10>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="top:attribute10/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="top:attribute10"/>
                </ns3:Attribute10>
              </xsl:if>
              <xsl:if test="top:attribute11 and top:attribute11 !=''">
                <ns3:Attribute11>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="top:attribute11/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="top:attribute11"/>
                </ns3:Attribute11>
              </xsl:if>
              <xsl:if test="top:attribute12 and top:attribute12 !=''">
                <ns3:Attribute12>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="top:attribute12/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="top:attribute12"/>
                </ns3:Attribute12>
              </xsl:if>
              <xsl:if test="top:attribute13 and top:attribute13 !=''">
                <ns3:Attribute13>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="top:attribute13/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="top:attribute13"/>
                </ns3:Attribute13>
              </xsl:if>
              <xsl:if test="top:attribute14 and top:attribute14 !=''">
                <ns3:Attribute14>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="top:attribute14/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="top:attribute14"/>
                </ns3:Attribute14>
              </xsl:if>
              <xsl:if test="top:attribute15 and top:attribute15 !=''">
                <ns3:Attribute15>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="top:attribute15/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="top:attribute15"/>
                </ns3:Attribute15>
              </xsl:if>
            </ns4:HeaderDFF>
            <ns4:ListOfPurchaseOrderLines>
              <xsl:for-each select="top:poLinesAllCollection/top:PoLinesAll">
                <ns4:PurchaseOrderLine>
                  <xsl:if test="top:poLineLocationsAll/top:accrueOnReceiptFlag and top:poLineLocationsAll/top:accrueOnReceiptFlag !=''">
                    <ns4:Accrueonreceiptflag>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:accrueOnReceiptFlag/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:accrueOnReceiptFlag"/>
                    </ns4:Accrueonreceiptflag>
                  </xsl:if>
                  <xsl:if test="top:amount and top:amount !=''">
                    <ns4:Advanceamount>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:amount/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:amount"/>
                    </ns4:Advanceamount>
                  </xsl:if>
                  <xsl:if test="top:allowPriceOverrideFlag and top:allowPriceOverrideFlag !=''">
                    <ns4:Allowpriceoverrideflag>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:allowPriceOverrideFlag/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:allowPriceOverrideFlag"/>
                    </ns4:Allowpriceoverrideflag>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:allowSubstituteReceiptsFlag and top:poLineLocationsAll/top:allowSubstituteReceiptsFlag !=''">
                    <ns4:Allowsubstitutereceiptsflag>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:allowSubstituteReceiptsFlag/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:allowSubstituteReceiptsFlag"/>
                    </ns4:Allowsubstitutereceiptsflag>
                  </xsl:if>
                  <xsl:if test="top:amount and top:amount !=''">
                    <ns4:Amount>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:amount/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:amount"/>
                    </ns4:Amount>
                  </xsl:if>
                  <xsl:if test="top:auctionDisplayNumber and top:auctionDisplayNumber !=''">
                    <ns4:Auctiondisplaynumber>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:auctionDisplayNumber/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:auctionDisplayNumber"/>
                    </ns4:Auctiondisplaynumber>
                  </xsl:if>
                  <xsl:if test="top:auctionHeaderId and top:auctionHeaderId !=''">
                    <ns4:Auctionheaderid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:auctionHeaderId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:auctionHeaderId"/>
                    </ns4:Auctionheaderid>
                  </xsl:if>
                  <xsl:if test="top:auctionLineNumber and top:auctionLineNumber !=''">
                    <ns4:Auctionlinenumber>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:auctionLineNumber/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:auctionLineNumber"/>
                    </ns4:Auctionlinenumber>
                  </xsl:if>
                  <xsl:if test="top:baseQtybaseQty and top:baseQty !=''">
                    <ns4:Baseqty>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:baseQty/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:baseQty"/>
                    </ns4:Baseqty>
                  </xsl:if>
                  <xsl:if test="top:baseUnitPrice and top:baseUnitPrice !=''">
                    <ns4:Baseunitprice>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:baseUnitPrice/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:baseUnitPrice"/>
                    </ns4:Baseunitprice>
                  </xsl:if>
                  <xsl:if test="top:baseUom and top:baseUom !=''">
                    <ns4:Baseuom>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:baseUom/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:baseUom"/>
                    </ns4:Baseuom>
                  </xsl:if>
                  <xsl:if test="top:bidLineNumber and top:bidLineNumber !=''">
                    <ns4:Bidlinenumber>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:bidLineNumber/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:bidLineNumber"/>
                    </ns4:Bidlinenumber>
                  </xsl:if>
                  <xsl:if test="top:bidNumber and top:bidNumber !=''">
                    <ns4:Bidnumber>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:bidNumber/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:bidNumber"/>
                    </ns4:Bidnumber>
                  </xsl:if>
                  <xsl:if test="top:cancelDate and top:cancelDate !=''">
                    <ns4:Canceldate>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:cancelDate/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:cancelDate"/>
                    </ns4:Canceldate>
                  </xsl:if>
                  <xsl:if test="top:cancelFlag and top:cancelFlag !=''">
                    <ns4:Cancelflag>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:cancelFlag/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:cancelFlag"/>
                    </ns4:Cancelflag>
                  </xsl:if>
                  <xsl:if test="top:cancelledBy and top:cancelledBy !=''">
                    <ns4:Cancelledby>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:cancelledBy/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:cancelledBy"/>
                    </ns4:Cancelledby>
                  </xsl:if>
                  <xsl:if test="top:cancelReason and top:cancelReason !=''">
                    <ns4:Cancelreason>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:cancelReason/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:cancelReason"/>
                    </ns4:Cancelreason>
                  </xsl:if>
                  <xsl:if test="top:capitalExpenseFlag and top:capitalExpenseFlag !=''">
                    <ns4:Capitalexpenseflag>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:capitalExpenseFlag/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:capitalExpenseFlag"/>
                    </ns4:Capitalexpenseflag>
                  </xsl:if>
                  <xsl:if test="top:catalogName and top:catalogName !=''">
                    <ns4:Catalogname>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:catalogName/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:catalogName"/>
                    </ns4:Catalogname>
                  </xsl:if>
                  <xsl:if test="top:categoryId and top:categoryId !=''">
                    <ns4:Category>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:categoryId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:categoryId"/>
                    </ns4:Category>
                  </xsl:if>
                  <xsl:if test="top:categoryId and top:categoryId !=''">
                    <ns4:Categoryid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:categoryId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:categoryId"/>
                    </ns4:Categoryid>
                  </xsl:if>
                  <xsl:if test="top:closedBy and top:closedBy !=''">
                    <ns4:Closedby>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:closedBy/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:closedBy"/>
                    </ns4:Closedby>
                  </xsl:if>
                  <xsl:if test="top:closedCode and top:closedCode !=''">
                    <ns4:Closedcode>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:closedCode/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:closedCode"/>
                    </ns4:Closedcode>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:closedCode and top:poLineLocationsAll/top:closedCode !=''">
                    <ns4:PoLocationsAllClosedcode>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:closedCode/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:closedCode"/>
                    </ns4:PoLocationsAllClosedcode>
                  </xsl:if>
                  <xsl:if test="top:closedDate and top:closedDate !=''">
                    <ns4:Closeddate>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:closedDate/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:closedDate"/>
                    </ns4:Closeddate>
                  </xsl:if>
                  <xsl:if test="top:closedFlag and top:closedFlag !=''">
                    <ns4:Closedflag>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:closedFlag/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:closedFlag"/>
                    </ns4:Closedflag>
                  </xsl:if>
                  <xsl:if test="top:closedReason and top:closedReason !=''">
                    <ns4:Closedreason>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:closedReason/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:closedReason"/>
                    </ns4:Closedreason>
                  </xsl:if>
                  <xsl:if test="top:committedAmount and top:committedAmount !=''">
                    <ns4:Committedamount>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:committedAmount/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:committedAmount"/>
                    </ns4:Committedamount>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:consignedFlag and top:poLineLocationsAll/top:consignedFlag !=''">
                    <ns4:Consignedflag>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:consignedFlag/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:consignedFlag"/>
                    </ns4:Consignedflag>
                  </xsl:if>
                  <xsl:if test="top:contractId and top:contractId !=''">
                    <ns4:Contractid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:contractId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:contractId"/>
                    </ns4:Contractid>
                  </xsl:if>
                  <xsl:if test="top:contractNum and top:contractNum !=''">
                    <ns4:Contractnum>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:contractNum/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:contractNum"/>
                    </ns4:Contractnum>
                  </xsl:if>
                  <xsl:if test="top:contractorFirstName and top:contractorFirstName !=''">
                    <ns4:Contractorfirstname>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:contractorFirstName/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:contractorFirstName"/>
                    </ns4:Contractorfirstname>
                  </xsl:if>
                  <xsl:if test="top:contractorLastName and top:contractorLastName !=''">
                    <ns4:Contractorlastname>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:contractorLastName/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:contractorLastName"/>
                    </ns4:Contractorlastname>
                  </xsl:if>
                  <xsl:if test="top:createdBy and top:createdBy !=''">
                    <ns4:Createdby>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:createdBy/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:createdBy"/>
                    </ns4:Createdby>
                  </xsl:if>
                  <xsl:if test="top:creationDate and top:creationDate !=''">
                    <ns4:Creationdate>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:creationDate/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:creationDate"/>
                    </ns4:Creationdate>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:daysEarlyReceiptAllowed and top:poLineLocationsAll/top:daysEarlyReceiptAllowed !=''">
                    <ns4:Daysearlyreceiptallowed>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:daysEarlyReceiptAllowed/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:daysEarlyReceiptAllowed"/>
                    </ns4:Daysearlyreceiptallowed>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:daysLateReceiptAllowed and top:poLineLocationsAll/top:daysLateReceiptAllowed !=''">
                    <ns4:Dayslatereceiptallowed>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:daysLateReceiptAllowed/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:daysLateReceiptAllowed"/>
                    </ns4:Dayslatereceiptallowed>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:dropShipFlag and top:poLineLocationsAll/top:dropShipFlag !=''">
                    <ns4:Dropshipflag>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:dropShipFlag/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:dropShipFlag"/>
                    </ns4:Dropshipflag>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:enforceShipToLocationCode and top:poLineLocationsAll/top:enforceShipToLocationCode !=''">
                    <ns4:Enforceshiptolocationcode>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:enforceShipToLocationCode/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:enforceShipToLocationCode"/>
                    </ns4:Enforceshiptolocationcode>
                  </xsl:if>
                  <xsl:if test="top:expirationDate and top:expirationDate !=''">
                    <ns4:Expirationdate>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:expirationDate/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:expirationDate"/>
                    </ns4:Expirationdate>
                  </xsl:if>
                  <xsl:if test="top:firmDate and top:firmDate !=''">
                    <ns4:Firmdate>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:firmDate/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:firmDate"/>
                    </ns4:Firmdate>
                  </xsl:if>
                  <xsl:if test="top:firmStatusLookupCode and top:firmStatusLookupCode !=''">
                    <ns4:Firmstatuslookupcode>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:firmStatusLookupCode/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:firmStatusLookupCode"/>
                    </ns4:Firmstatuslookupcode>
                  </xsl:if>
                  <xsl:if test="top:fromHeaderId and top:fromHeaderId !=''">
                    <ns4:Fromheaderid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:fromHeaderId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:fromHeaderId"/>
                    </ns4:Fromheaderid>
                  </xsl:if>
                  <xsl:if test="top:fromLineId and top:fromLineId !=''">
                    <ns4:Fromlineid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:fromLineId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:fromLineId"/>
                    </ns4:Fromlineid>
                  </xsl:if>
                  <xsl:if test="top:fromLineLocationId and top:fromLineLocationId !=''">
                    <ns4:Fromlinelocationid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:fromLineLocationId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:fromLineLocationId"/>
                    </ns4:Fromlinelocationid>
                  </xsl:if>
                  <xsl:if test="top:globalAttribute1 and top:globalAttribute1 !=''">
                    <ns4:Globalattribute1>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:globalAttribute1/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:globalAttribute1"/>
                    </ns4:Globalattribute1>
                  </xsl:if>
                  <xsl:if test="top:globalAttribute10 and top:globalAttribute10 !=''">
                    <ns4:Globalattribute10>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:globalAttribute10/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:globalAttribute10"/>
                    </ns4:Globalattribute10>
                  </xsl:if>
                  <xsl:if test="top:globalAttribute11 and top:globalAttribute11 !=''">
                    <ns4:Globalattribute11>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:globalAttribute11/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:globalAttribute11"/>
                    </ns4:Globalattribute11>
                  </xsl:if>
                  <xsl:if test="top:globalAttribute12 and top:globalAttribute12 !=''">
                    <ns4:Globalattribute12>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:globalAttribute12/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:globalAttribute12"/>
                    </ns4:Globalattribute12>
                  </xsl:if>
                  <xsl:if test="top:globalAttribute13 and top:globalAttribute13 !=''">
                    <ns4:Globalattribute13>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:globalAttribute13/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:globalAttribute13"/>
                    </ns4:Globalattribute13>
                  </xsl:if>
                  <xsl:if test="top:globalAttribute14 and top:globalAttribute14 !=''">
                    <ns4:Globalattribute14>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:globalAttribute14/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:globalAttribute14"/>
                    </ns4:Globalattribute14>
                  </xsl:if>
                  <xsl:if test="top:globalAttribute15 and top:globalAttribute15 !=''">
                    <ns4:Globalattribute15>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:globalAttribute15/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:globalAttribute15"/>
                    </ns4:Globalattribute15>
                  </xsl:if>
                  <xsl:if test="top:globalAttribute16 and top:globalAttribute16 !=''">
                    <ns4:Globalattribute16>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:globalAttribute16/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:globalAttribute16"/>
                    </ns4:Globalattribute16>
                  </xsl:if>
                  <xsl:if test="top:globalAttribute17 and top:globalAttribute17 !=''">
                    <ns4:Globalattribute17>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:globalAttribute17/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:globalAttribute17"/>
                    </ns4:Globalattribute17>
                  </xsl:if>
                  <xsl:if test="top:globalAttribute18 and top:globalAttribute18 !=''">
                    <ns4:Globalattribute18>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:globalAttribute18/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:globalAttribute18"/>
                    </ns4:Globalattribute18>
                  </xsl:if>
                  <xsl:if test="top:globalAttribute19 and top:globalAttribute19 !=''">
                    <ns4:Globalattribute19>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:globalAttribute19/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:globalAttribute19"/>
                    </ns4:Globalattribute19>
                  </xsl:if>
                  <xsl:if test="top:globalAttribute2 and top:globalAttribute2 !=''">
                    <ns4:Globalattribute2>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:globalAttribute2/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:globalAttribute2"/>
                    </ns4:Globalattribute2>
                  </xsl:if>
                  <xsl:if test="top:globalAttribute20 and top:globalAttribute20 !=''">
                    <ns4:Globalattribute20>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:globalAttribute20/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:globalAttribute20"/>
                    </ns4:Globalattribute20>
                  </xsl:if>
                  <xsl:if test="top:globalAttribute3 and top:globalAttribute3 !=''">
                    <ns4:Globalattribute3>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:globalAttribute3/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:globalAttribute3"/>
                    </ns4:Globalattribute3>
                  </xsl:if>
                  <xsl:if test="top:globalAttribute4 and top:globalAttribute4 !=''">
                    <ns4:Globalattribute4>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:globalAttribute4/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:globalAttribute4"/>
                    </ns4:Globalattribute4>
                  </xsl:if>
                  <xsl:if test="top:globalAttribute5 and top:globalAttribute5 !=''">
                    <ns4:Globalattribute5>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:globalAttribute5/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:globalAttribute5"/>
                    </ns4:Globalattribute5>
                  </xsl:if>
                  <xsl:if test="top:globalAttribute6 and top:globalAttribute6 !=''">
                    <ns4:Globalattribute6>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:globalAttribute6/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:globalAttribute6"/>
                    </ns4:Globalattribute6>
                  </xsl:if>
                  <xsl:if test="top:globalAttribute7 and top:globalAttribute7 !=''">
                    <ns4:Globalattribute7>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:globalAttribute7/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:globalAttribute7"/>
                    </ns4:Globalattribute7>
                  </xsl:if>
                  <xsl:if test="top:globalAttribute8 and top:globalAttribute8 !=''">
                    <ns4:Globalattribute8>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:globalAttribute8/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:globalAttribute8"/>
                    </ns4:Globalattribute8>
                  </xsl:if>
                  <xsl:if test="top:globalAttribute9 and top:globalAttribute9 !=''">
                    <ns4:Globalattribute9>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:globalAttribute9/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:globalAttribute9"/>
                    </ns4:Globalattribute9>
                  </xsl:if>
                  <xsl:if test="top:globalAttributeCategory and top:globalAttributeCategory !=''">
                    <ns4:Globalattributecategory>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:globalAttributeCategory/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:globalAttributeCategory"/>
                    </ns4:Globalattributecategory>
                  </xsl:if>
                  <xsl:if test="top:governmentContext and top:governmentContext !=''">
                    <ns4:Governmentcontext>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:governmentContext/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:governmentContext"/>
                    </ns4:Governmentcontext>
                  </xsl:if>
                  <xsl:if test="top:hazardClassId and top:hazardClassId !=''">
                    <ns4:Hazardclass>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:hazardClassId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:hazardClassId"/>
                    </ns4:Hazardclass>
                  </xsl:if>
                  <xsl:if test="top:hazardClassId and top:hazardClassId !=''">
                    <ns4:Hazardclassid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:hazardClassId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:hazardClassId"/>
                    </ns4:Hazardclassid>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:inspectionRequiredFlag and top:poLineLocationsAll/top:inspectionRequiredFlag !=''">
                    <ns4:Inspectionrequiredflag>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:inspectionRequiredFlag/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:inspectionRequiredFlag"/>
                    </ns4:Inspectionrequiredflag>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:invoiceCloseTolerance and top:poLineLocationsAll/top:invoiceCloseTolerance !=''">
                    <ns4:Invoiceclosetolerance>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:invoiceCloseTolerance/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:invoiceCloseTolerance"/>
                    </ns4:Invoiceclosetolerance>
                  </xsl:if>
                  <xsl:if test="top:ipCategoryId and top:ipCategoryId !=''">
                    <ns4:Ipcategoryid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:ipCategoryId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:ipCategoryId"/>
                    </ns4:Ipcategoryid>
                  </xsl:if>
                  <xsl:if test="top:itemId and top:itemId !=''">
                    <ns4:Item>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:itemId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:itemId"/>
                    </ns4:Item>
                  </xsl:if>
                  <xsl:if test="top:attribute1 and top:attribute1 !=''">
                    <ns4:Itemattribute1>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute1/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute1"/>
                    </ns4:Itemattribute1>
                  </xsl:if>
                  <xsl:if test="top:attribute10 and top:attribute10 !=''">
                    <ns4:Itemattribute10>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute10/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute10"/>
                    </ns4:Itemattribute10>
                  </xsl:if>
                  <xsl:if test="top:attribute11 and top:attribute11 !=''">
                    <ns4:Itemattribute11>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute11/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute11"/>
                    </ns4:Itemattribute11>
                  </xsl:if>
                  <xsl:if test="top:attribute12 and top:attribute12 !=''">
                    <ns4:Itemattribute12>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute12/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute12"/>
                    </ns4:Itemattribute12>
                  </xsl:if>
                  <xsl:if test="top:attribute13 and top:attribute13 !=''">
                    <ns4:Itemattribute13>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute13/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute13"/>
                    </ns4:Itemattribute13>
                  </xsl:if>
                  <xsl:if test="top:attribute14 and top:attribute14 !=''">
                    <ns4:Itemattribute14>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute14/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute14"/>
                    </ns4:Itemattribute14>
                  </xsl:if>
                  <xsl:if test="top:attribute15 and top:attribute15 !=''">
                    <ns4:Itemattribute15>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute15/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute15"/>
                    </ns4:Itemattribute15>
                  </xsl:if>
                  <xsl:if test="top:attribute2 and top:attribute2 !=''">
                    <ns4:Itemattribute2>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute2/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute2"/>
                    </ns4:Itemattribute2>
                  </xsl:if>
                  <xsl:if test="top:attribute3 and top:attribute3 !=''">
                    <ns4:Itemattribute3>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute3/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute3"/>
                    </ns4:Itemattribute3>
                  </xsl:if>
                  <xsl:if test="top:attribute4 and top:attribute4 !=''">
                    <ns4:Itemattribute4>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute4/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute4"/>
                    </ns4:Itemattribute4>
                  </xsl:if>
                  <xsl:if test="top:attribute5 and top:attribute5 !=''">
                    <ns4:Itemattribute5>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute5/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute5"/>
                    </ns4:Itemattribute5>
                  </xsl:if>
                  <xsl:if test="top:attribute6 and top:attribute6 !=''">
                    <ns4:Itemattribute6>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute6/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute6"/>
                    </ns4:Itemattribute6>
                  </xsl:if>
                  <xsl:if test="top:attribute7 and top:attribute7 !=''">
                    <ns4:Itemattribute7>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute7/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute7"/>
                    </ns4:Itemattribute7>
                  </xsl:if>
                  <xsl:if test="top:attribute8 and top:attribute8 !=''">
                    <ns4:Itemattribute8>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute8/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute8"/>
                    </ns4:Itemattribute8>
                  </xsl:if>
                  <xsl:if test="top:attribute9 and top:attribute9 !=''">
                    <ns4:Itemattribute9>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute9/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute9"/>
                    </ns4:Itemattribute9>
                  </xsl:if>
                  <xsl:if test="top:attributeCategory and top:attributeCategory !=''">
                    <ns4:Itemattributecategory>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attributeCategory/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attributeCategory"/>
                    </ns4:Itemattributecategory>
                  </xsl:if>
                  <xsl:if test="top:itemDescription and top:itemDescription !=''">
                    <ns4:Itemdescription>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:itemDescription/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:itemDescription"/>
                    </ns4:Itemdescription>
                  </xsl:if>
                  <xsl:if test="top:itemId and top:itemId !=''">
                    <ns4:Itemid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:itemId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:itemId"/>
                    </ns4:Itemid>
                  </xsl:if>
                  <xsl:if test="top:itemRevision and top:itemRevision !=''">
                    <ns4:Itemrevision>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:itemRevision/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:itemRevision"/>
                    </ns4:Itemrevision>
                  </xsl:if>
                  <xsl:if test="top:jobId and top:jobId !=''">
                    <ns4:Jobid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:jobId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:jobId"/>
                    </ns4:Jobid>
                  </xsl:if>
                  <xsl:if test="top:lastUpdateDate and top:lastUpdateDate !=''">
                    <ns4:Lastupdatedate>
                      <xsl:value-of select="top:lastUpdateDate"/>
                    </ns4:Lastupdatedate>
                  </xsl:if>
                  <xsl:if test="top:lastUpdatedBy and top:lastUpdatedBy !=''">
                    <ns4:Lastupdatedby>
                      <xsl:value-of select="top:lastUpdatedBy"/>
                    </ns4:Lastupdatedby>
                  </xsl:if>
                  <xsl:if test="top:lastUpdateLogin and top:lastUpdateLogin !=''">
                    <ns4:Lastupdatelogin>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:lastUpdateLogin/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:lastUpdateLogin"/>
                    </ns4:Lastupdatelogin>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:leadTime and top:poLineLocationsAll/top:leadTime !=''">
                    <ns4:Leadtime>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:leadTime/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:leadTime"/>
                    </ns4:Leadtime>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:leadTimeUnit and top:poLineLocationsAll/top:leadTimeUnit !=''">
                    <ns4:Leadtimeunit>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:leadTimeUnit/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:leadTimeUnit"/>
                    </ns4:Leadtimeunit>
                  </xsl:if>
                  <xsl:if test="top:attribute1 and top:attribute1 !=''">
                    <ns4:Lineattribute1>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute1/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute1"/>
                    </ns4:Lineattribute1>
                  </xsl:if>
                  <xsl:if test="top:attribute10 and top:attribute10 !=''">
                    <ns4:Lineattribute10>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute10/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute10"/>
                    </ns4:Lineattribute10>
                  </xsl:if>
                  <xsl:if test="top:attribute11 and top:attribute11 !=''">
                    <ns4:Lineattribute11>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute11/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute11"/>
                    </ns4:Lineattribute11>
                  </xsl:if>
                  <xsl:if test="top:attribute12 and top:attribute12 !=''">
                    <ns4:Lineattribute12>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute12/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute12"/>
                    </ns4:Lineattribute12>
                  </xsl:if>
                  <xsl:if test="top:attribute13 and top:attribute13 !=''">
                    <ns4:Lineattribute13>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute13/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute13"/>
                    </ns4:Lineattribute13>
                  </xsl:if>
                  <xsl:if test="top:attribute14 and top:attribute14 !=''">
                    <ns4:Lineattribute14>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute14/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute14"/>
                    </ns4:Lineattribute14>
                  </xsl:if>
                  <xsl:if test="top:attribute15 and top:attribute15 !=''">
                    <ns4:Lineattribute15>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute15/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute15"/>
                    </ns4:Lineattribute15>
                  </xsl:if>
                  <xsl:if test="top:attribute2 and top:attribute2 !=''">
                    <ns4:Lineattribute2>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute2/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute2"/>
                    </ns4:Lineattribute2>
                  </xsl:if>
                  <xsl:if test="top:attribute3 and top:attribute3 !=''">
                    <ns4:Lineattribute3>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute3/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute3"/>
                    </ns4:Lineattribute3>
                  </xsl:if>
                  <xsl:if test="top:attribute4 and top:attribute4 !=''">
                    <ns4:Lineattribute4>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute4/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute4"/>
                    </ns4:Lineattribute4>
                  </xsl:if>
                  <xsl:if test="top:attribute5 and top:attribute5 !=''">
                    <ns4:Lineattribute5>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute5/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute5"/>
                    </ns4:Lineattribute5>
                  </xsl:if>
                  <xsl:if test="top:attribute6 and top:attribute6 !=''">
                    <ns4:Lineattribute6>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute6/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute6"/>
                    </ns4:Lineattribute6>
                  </xsl:if>
                  <xsl:if test="top:attribute7 and top:attribute7 !=''">
                    <ns4:Lineattribute7>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute7/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute7"/>
                    </ns4:Lineattribute7>
                  </xsl:if>
                  <xsl:if test="top:attribute8 and top:attribute8 !=''">
                    <ns4:Lineattribute8>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute8/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute8"/>
                    </ns4:Lineattribute8>
                  </xsl:if>
                  <xsl:if test="top:attribute9 and top:attribute9 !=''">
                    <ns4:Lineattribute9>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute9/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute9"/>
                    </ns4:Lineattribute9>
                  </xsl:if>
                  <xsl:if test="top:fromLineLocationId and top:fromLineLocationId !=''">
                    <ns4:Linelocationid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:fromLineLocationId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:fromLineLocationId"/>
                    </ns4:Linelocationid>
                  </xsl:if>
                  <xsl:if test="top:lineNum and top:lineNum !=''">
                    <ns4:Linenum>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:lineNum/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:lineNum"/>
                    </ns4:Linenum>
                  </xsl:if>
                  <xsl:if test="top:lineReferenceNum and top:lineReferenceNum !=''">
                    <ns4:Linereferencenum>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:lineReferenceNum/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:lineReferenceNum"/>
                    </ns4:Linereferencenum>
                  </xsl:if>
                  <xsl:if test="top:lineTypeId and top:lineTypeId !=''">
                    <ns4:Linetype>
                      <xsl:value-of select="top:lineTypeId"/>
                    </ns4:Linetype>
                  </xsl:if>
                  <xsl:if test="top:lineTypeId and top:lineTypeId !=''">
                    <ns4:Linetypeid>
                      <xsl:value-of select="top:lineTypeId"/>
                    </ns4:Linetypeid>
                  </xsl:if>
                  <xsl:if test="top:listPricePerUnit and top:listPricePerUnit !=''">
                    <ns4:Listpriceperunit>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:listPricePerUnit/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:listPricePerUnit"/>
                    </ns4:Listpriceperunit>
                  </xsl:if>
                  <xsl:if test="manualPriceChangeFlag and top:manualPriceChangeFlag !=''">
                    <ns4:Manualpricechangeflag>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:manualPriceChangeFlag/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:manualPriceChangeFlag"/>
                    </ns4:Manualpricechangeflag>
                  </xsl:if>
                  <xsl:if test="top:marketPrice and top:marketPrice !=''">
                    <ns4:Marketprice>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:marketPrice/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:marketPrice"/>
                    </ns4:Marketprice>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:matchingBasis and top:poLineLocationsAll/top:matchingBasis !=''">
                    <ns4:Matchingbasis>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:matchingBasis/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:matchingBasis"/>
                    </ns4:Matchingbasis>
                  </xsl:if>
                  <xsl:if test="top:maxOrderQuantity and top:maxOrderQuantity !=''">
                    <ns4:Maxorderquantity>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:maxOrderQuantity/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:maxOrderQuantity"/>
                    </ns4:Maxorderquantity>
                  </xsl:if>
                  <xsl:if test="top:maxRetainageAmount and top:maxRetainageAmount !=''">
                    <ns4:Maxretainageamount>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:maxRetainageAmount/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:maxRetainageAmount"/>
                    </ns4:Maxretainageamount>
                  </xsl:if>
                  <xsl:if test="top:minOrderQuantity and top:minOrderQuantity !=''">
                    <ns4:Minorderquantity>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:minOrderQuantity/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:minOrderQuantity"/>
                    </ns4:Minorderquantity>
                  </xsl:if>
                  <xsl:if test="top:minReleaseAmount and top:minReleaseAmount !=''">
                    <ns4:Minreleaseamount>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:minReleaseAmount/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:minReleaseAmount"/>
                    </ns4:Minreleaseamount>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:needByDate and top:poLineLocationsAll/top:needByDate !=''">
                    <ns4:Needbydate>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:needByDate/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:needByDate"/>
                    </ns4:Needbydate>
                  </xsl:if>
                  <xsl:if test="top:negotiatedByPreparerFlag and top:negotiatedByPreparerFlag !=''">
                    <ns4:Negotiatedbypreparerflag>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:negotiatedByPreparerFlag/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:negotiatedByPreparerFlag"/>
                    </ns4:Negotiatedbypreparerflag>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:noteToReceiver and top:poLineLocationsAll/top:noteToReceiver !=''">
                    <ns4:Notetoreceiver>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:noteToReceiver/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:noteToReceiver"/>
                    </ns4:Notetoreceiver>
                  </xsl:if>
                  <xsl:if test="top:noteToVendor and top:noteToVendor !=''">
                    <ns4:Notetovendor>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:noteToVendor/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:noteToVendor"/>
                    </ns4:Notetovendor>
                  </xsl:if>
                  <xsl:if test="top:notToExceedPrice and top:notToExceedPrice !=''">
                    <ns4:Nottoexceedprice>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:notToExceedPrice/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:notToExceedPrice"/>
                    </ns4:Nottoexceedprice>
                  </xsl:if>
                  <xsl:if test="top:okeContractHeaderId and top:okeContractHeaderId !=''">
                    <ns4:Okecontractheaderid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:okeContractHeaderId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:okeContractHeaderId"/>
                    </ns4:Okecontractheaderid>
                  </xsl:if>
                  <xsl:if test="top:okeContractVersionId and top:okeContractVersionId !=''">
                    <ns4:Okecontractversionid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:okeContractVersionId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:okeContractVersionId"/>
                    </ns4:Okecontractversionid>
                  </xsl:if>
                  <xsl:if test="top:orderTypeLookupCode and top:okeContracorderTypeLookupCodetVersionId !=''">
                    <ns4:Ordertypelookupcode>
                      <xsl:value-of select="top:orderTypeLookupCode"/>
                    </ns4:Ordertypelookupcode>
                  </xsl:if>
                  <xsl:if test="top:orgId and top:orgId !=''">
                    <ns4:Orgid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:orgId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:orgId"/>
                    </ns4:Orgid>
                  </xsl:if>
                  <xsl:if test="top:overToleranceErrorFlag and top:overToleranceErrorFlag !=''">
                    <ns4:Overtoleranceerrorflag>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:overToleranceErrorFlag/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:overToleranceErrorFlag"/>
                    </ns4:Overtoleranceerrorflag>
                  </xsl:if>
                  <xsl:if test="top:poLineId and top:poLineId !=''">
                    <ns4:Polineid>
                      <xsl:value-of select="top:poLineId"/>
                    </ns4:Polineid>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:poReleaseId and top:poLineLocationsAll/top:poReleaseId !=''">
                    <ns4:Poreleaseid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:poReleaseId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:poReleaseId"/>
                    </ns4:Poreleaseid>
                  </xsl:if>
                  <xsl:if test="top:preferredGrade and top:preferredGrade !=''">
                    <ns4:Preferredgrade>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:preferredGrade/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:preferredGrade"/>
                    </ns4:Preferredgrade>
                  </xsl:if>
                  <xsl:if test="top:priceBreakLookupCode and top:priceBreakLookupCode !=''">
                    <ns4:Pricebreaklookupcode>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:priceBreakLookupCode/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:priceBreakLookupCode"/>
                    </ns4:Pricebreaklookupcode>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:priceDiscount and top:poLineLocationsAll/top:priceDiscount !=''">
                    <ns4:Pricediscount>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:priceDiscount/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:priceDiscount"/>
                    </ns4:Pricediscount>
                  </xsl:if>
                  <xsl:if test="top:priceTypeLookupCode and top:priceTypeLookupCode !=''">
                    <ns4:Pricetype>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:priceTypeLookupCode/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:priceTypeLookupCode"/>
                    </ns4:Pricetype>
                  </xsl:if>
                  <xsl:if test="top:priceTypeLookupCode and top:priceTypeLookupCode !=''">
                    <ns4:Pricetypelookupcode>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:priceTypeLookupCode/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:priceTypeLookupCode"/>
                    </ns4:Pricetypelookupcode>
                  </xsl:if>
                  <xsl:if test="top:programApplicationId and top:programApplicationId !=''">
                    <ns4:Programapplicationid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:programApplicationId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:programApplicationId"/>
                    </ns4:Programapplicationid>
                  </xsl:if>
                  <xsl:if test="top:programId and top:programId !=''">
                    <ns4:Programid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:programId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:programId"/>
                    </ns4:Programid>
                  </xsl:if>
                  <xsl:if test="top:programUpdateDate and top:programUpdateDate !=''">
                    <ns4:Programupdatedate>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:programUpdateDate/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:programUpdateDate"/>
                    </ns4:Programupdatedate>
                  </xsl:if>
                  <xsl:if test="top:progressPaymentRate and top:progressPaymentRate !=''">
                    <ns4:Progresspaymentrate>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:progressPaymentRate/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:progressPaymentRate"/>
                    </ns4:Progresspaymentrate>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:promisedDate and top:poLineLocationsAll/top:promisedDate !=''">
                    <ns4:Promiseddate>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:promisedDate/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:promisedDate"/>
                    </ns4:Promiseddate>
                  </xsl:if>
                  <xsl:if test="top:purchaseBasis and top:purchaseBasis !=''">
                    <ns4:Purchasebasis>
                      <xsl:value-of select="top:purchaseBasis"/>
                    </ns4:Purchasebasis>
                  </xsl:if>
                  <xsl:if test="top:qcGrade and top:qcGrade !=''">
                    <ns4:Qcgrade>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:qcGrade/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:qcGrade"/>
                    </ns4:Qcgrade>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:qtyRcvExceptionCode and top:poLineLocationsAll/top:qtyRcvExceptionCode !=''">
                    <ns4:Qtyrcvexceptioncode>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:qtyRcvExceptionCode/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:qtyRcvExceptionCode"/>
                    </ns4:Qtyrcvexceptioncode>
                  </xsl:if>
                  <xsl:if test="top:qtyRcvTolerance and top:qtyRcvTolerance !=''">
                    <ns4:Qtyrcvtolerance>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:qtyRcvTolerance/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:qtyRcvTolerance"/>
                    </ns4:Qtyrcvtolerance>
                  </xsl:if>
                  <xsl:if test="top:quantity and top:quantity !=''">
                    <ns4:Quantity>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:quantity/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:quantity"/>
                    </ns4:Quantity>
                  </xsl:if>
                  <xsl:if test="top:quantityCommitted and top:quantityCommitted !=''">
                    <ns4:Quantitycommitted>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:quantityCommitted/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:quantityCommitted"/>
                    </ns4:Quantitycommitted>
                  </xsl:if>
                  <ns4:Quantitybilled>
                    <xsl:value-of select="sum(top:poLineLocationsAll/top:quantityBilled)"/>
                  </ns4:Quantitybilled>
                  <ns4:Quantitycancelled>
                    <xsl:value-of select="sum(top:poLineLocationsAll/top:quantityCancelled)"/>
                  </ns4:Quantitycancelled>
                  <ns4:Quantitydelivered>
                    <xsl:value-of select="sum(top:poLineLocationsAll/top:poDistributionsAll/top:quantityDelivered)"/>
                  </ns4:Quantitydelivered>
                  <ns4:Quantityreceived>
                    <xsl:value-of select="sum(top:poLineLocationsAll/top:quantityReceived)"/>
                  </ns4:Quantityreceived>
                  <xsl:if test="top:poLineLocationsAll/top:receiptDaysExceptionCode and top:poLineLocationsAll/top:receiptDaysExceptionCode !=''">
                    <ns4:Receiptdaysexceptioncode>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:receiptDaysExceptionCode/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:receiptDaysExceptionCode"/>
                    </ns4:Receiptdaysexceptioncode>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:receiptRequiredFlag and top:poLineLocationsAll/top:receiptRequiredFlag !=''">
                    <ns4:Receiptrequiredflag>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:receiptRequiredFlag/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:receiptRequiredFlag"/>
                    </ns4:Receiptrequiredflag>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:receiveCloseTolerance and top:poLineLocationsAll/top:receiveCloseTolerance !=''">
                    <ns4:Receiveclosetolerance>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:receiveCloseTolerance/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:receiveCloseTolerance"/>
                    </ns4:Receiveclosetolerance>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:receivingRoutingId and top:poLineLocationsAll/top:receivingRoutingId !=''">
                    <ns4:Receivingroutingid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:receivingRoutingId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:receivingRoutingId"/>
                    </ns4:Receivingroutingid>
                  </xsl:if>
                  <xsl:if test="top:recoupmentRate and top:recoupmentRate !=''">
                    <ns4:Recoupmentrate>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:recoupmentRate/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:recoupmentRate"/>
                    </ns4:Recoupmentrate>
                  </xsl:if>
                  <xsl:if test="top:referenceNum and top:recoupmentRate !=''">
                    <ns4:Referencenum>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:referenceNum/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:referenceNum"/>
                    </ns4:Referencenum>
                  </xsl:if>
                  <xsl:if test="top:requestId and top:requestId !=''">
                    <ns4:Requestid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:requestId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:requestId"/>
                    </ns4:Requestid>
                  </xsl:if>
                  <xsl:if test="top:requestId and top:requestId !=''">
                    <ns4:Retainagerate>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:retainageRate/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:retainageRate"/>
                    </ns4:Retainagerate>
                  </xsl:if>
                  <xsl:if test="top:secondaryQty and top:secondaryQty !=''">
                    <ns4:Secondaryqty>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:secondaryQty/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:secondaryQty"/>
                    </ns4:Secondaryqty>
                  </xsl:if>
                  <xsl:if test="top:secondaryQuantity and top:secondaryQuantity !=''">
                    <ns4:Secondaryquantity>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:secondaryQuantity/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:secondaryQuantity"/>
                    </ns4:Secondaryquantity>
                  </xsl:if>
                  <xsl:if test="top:secondaryUnitOfMeasure and top:secondaryUnitOfMeasure !=''">
                    <ns4:Secondaryunitofmeasure>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:secondaryUnitOfMeasure/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:secondaryUnitOfMeasure"/>
                    </ns4:Secondaryunitofmeasure>
                  </xsl:if>
                  <xsl:if test="top:secondaryUom and top:secondaryUom !=''">
                    <ns4:Secondaryuom>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:secondaryUom/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:secondaryUom"/>
                    </ns4:Secondaryuom>
                  </xsl:if>
                  <xsl:if test="top:secondaryUom and top:secondaryUom !=''">
                    <ns4:Secondaryuomcode>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:secondaryUom/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:secondaryUom"/>
                    </ns4:Secondaryuomcode>
                  </xsl:if>
                  <xsl:if test="top:attribute1 and top:attribute1 !=''">
                    <ns4:Shipmentattribute1>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute1/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute1"/>
                    </ns4:Shipmentattribute1>
                  </xsl:if>
                  <xsl:if test="top:attribute10 and top:attribute10 !=''">
                    <ns4:Shipmentattribute10>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute10/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute10"/>
                    </ns4:Shipmentattribute10>
                  </xsl:if>
                  <xsl:if test="top:attribute11 and top:attribute11 !=''">
                    <ns4:Shipmentattribute11>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute11/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute11"/>
                    </ns4:Shipmentattribute11>
                  </xsl:if>
                  <xsl:if test="top:attribute12 and top:attribute12 !=''">
                    <ns4:Shipmentattribute12>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute12/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute12"/>
                    </ns4:Shipmentattribute12>
                  </xsl:if>
                  <xsl:if test="top:attribute13 and top:attribute13!=''">
                    <ns4:Shipmentattribute13>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute13/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute13"/>
                    </ns4:Shipmentattribute13>
                  </xsl:if>
                  <xsl:if test="top:attribute14 and top:attribute14 !=''">
                    <ns4:Shipmentattribute14>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute14/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute14"/>
                    </ns4:Shipmentattribute14>
                  </xsl:if>
                  <xsl:if test="top:attribute15 and top:attribute15 !=''">
                    <ns4:Shipmentattribute15>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute15/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute15"/>
                    </ns4:Shipmentattribute15>
                  </xsl:if>
                  <xsl:if test="top:attribute12 and top:attribute12 !=''">
                    <ns4:Shipmentattribute2>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute2/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute2"/>
                    </ns4:Shipmentattribute2>
                  </xsl:if>
                  <xsl:if test="top:attribute3 and top:attribute3 !=''">
                    <ns4:Shipmentattribute3>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute3/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute3"/>
                    </ns4:Shipmentattribute3>
                  </xsl:if>
                  <xsl:if test="top:attribute3 and top:attribute3 !=''">
                    <ns4:Shipmentattribute4>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute4/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute4"/>
                    </ns4:Shipmentattribute4>
                  </xsl:if>
                  <xsl:if test="top:attribute5 and top:attribute5 !=''">
                    <ns4:Shipmentattribute5>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute5/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute5"/>
                    </ns4:Shipmentattribute5>
                  </xsl:if>
                  <xsl:if test="top:attribute6 and top:attribute6 !=''">
                    <ns4:Shipmentattribute6>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute6/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute6"/>
                    </ns4:Shipmentattribute6>
                  </xsl:if>
                  <xsl:if test="top:attribute7 and top:attribute7 !=''">
                    <ns4:Shipmentattribute7>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute7/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute7"/>
                    </ns4:Shipmentattribute7>
                  </xsl:if>
                  <xsl:if test="top:attribute8 and top:attribute8 !=''">
                    <ns4:Shipmentattribute8>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute8/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute8"/>
                    </ns4:Shipmentattribute8>
                  </xsl:if>
                  <xsl:if test="top:attribute9 and top:attribute9 !=''">
                    <ns4:Shipmentattribute9>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attribute9/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attribute9"/>
                    </ns4:Shipmentattribute9>
                  </xsl:if>
                  <xsl:if test="top:attributeCategory and top:attributeCategory !=''">
                    <ns4:Shipmentattributecategory>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:attributeCategory/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:attributeCategory"/>
                    </ns4:Shipmentattributecategory>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:shipmentNum and top:poLineLocationsAll/top:shipmentNum !=''">
                    <ns4:Shipmentnum>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:shipmentNum/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:shipmentNum"/>
                    </ns4:Shipmentnum>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:shipToLocationId and top:poLineLocationsAll/top:shipToLocationId !=''">
                    <ns4:Shiptolocationid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:shipToLocationId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:shipToLocationId"/>
                    </ns4:Shiptolocationid>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:shipToLocationId and top:poLineLocationsAll/top:shipToLocationId !=''">
                    <ns4:Shiptoorganizationid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:shipToOrganizationId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:shipToOrganizationId"/>
                    </ns4:Shiptoorganizationid>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:sourceShipmentId and top:poLineLocationsAll/top:sourceShipmentId !=''">
                    <ns4:Sourceshipmentid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:sourceShipmentId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:sourceShipmentId"/>
                    </ns4:Sourceshipmentid>
                  </xsl:if>
                  <xsl:if test="top:startDate and top:startDate !=''">
                    <ns4:Startdate>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:startDate/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:startDate"/>
                    </ns4:Startdate>
                  </xsl:if>
                  <xsl:if test="top:supplierPartAuxid and top:supplierPartAuxid !=''">
                    <ns4:Supplierpartauxid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:supplierPartAuxid/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:supplierPartAuxid"/>
                    </ns4:Supplierpartauxid>
                  </xsl:if>
                  <xsl:if test="top:supplierRefNumber and top:supplierRefNumber !=''">
                    <ns4:Supplierrefnumber>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:supplierRefNumber/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:supplierRefNumber"/>
                    </ns4:Supplierrefnumber>
                  </xsl:if>
                  <xsl:if test="top:taxableFlag and top:taxableFlag !=''">
                    <ns4:Taxableflag>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:taxableFlag/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:taxableFlag"/>
                    </ns4:Taxableflag>
                  </xsl:if>
                  <xsl:if test="top:taxCodeId and top:taxCodeId !=''">
                    <ns4:Taxcodeid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:taxCodeId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:taxCodeId"/>
                    </ns4:Taxcodeid>
                  </xsl:if>
                  <xsl:if test="top:taxName and top:taxName !=''">
                    <ns4:Taxname>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:taxName/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:taxName"/>
                    </ns4:Taxname>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:taxUserOverrideFlag and top:poLineLocationsAll/top:taxUserOverrideFlag !=''">
                    <ns4:Taxuseroverrideflag>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:taxUserOverrideFlag/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:taxUserOverrideFlag"/>
                    </ns4:Taxuseroverrideflag>
                  </xsl:if>
                  <xsl:if test="top:udaTemplateId and top:udaTemplateId !=''">
                    <ns4:Templateid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:udaTemplateId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:udaTemplateId"/>
                    </ns4:Templateid>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:termsId and top:poLineLocationsAll/top:termsId !=''">
                    <ns4:Termsid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:termsId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:termsId"/>
                    </ns4:Termsid>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:transactionFlowHeaderId and top:poLineLocationsAll/top:transactionFlowHeaderId !=''">
                    <ns4:Transactionflowheaderid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:transactionFlowHeaderId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:transactionFlowHeaderId"/>
                    </ns4:Transactionflowheaderid>
                  </xsl:if>
                  <xsl:if test="top:transactionReasonCode and top:transactionReasonCode !=''">
                    <ns4:Transactionreason>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:transactionReasonCode/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:transactionReasonCode"/>
                    </ns4:Transactionreason>
                  </xsl:if>
                  <xsl:if test="top:transactionReasonCode and top:transactionReasonCode !=''">
                    <ns4:Transactionreasoncode>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:transactionReasonCode/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:transactionReasonCode"/>
                    </ns4:Transactionreasoncode>
                  </xsl:if>
                  <xsl:if test="top:type1099 and top:type1099 !=''">
                    <ns4:Type1099>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:type1099/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:type1099"/>
                    </ns4:Type1099>
                  </xsl:if>
                  <xsl:if test="top:unitMeasLookupCode and top:unitMeasLookupCode !=''">
                    <ns4:Unitmeaslookupcode>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:unitMeasLookupCode/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:unitMeasLookupCode"/>
                    </ns4:Unitmeaslookupcode>
                  </xsl:if>
                  <xsl:if test="top:secondaryUnitOfMeasure and top:secondaryUnitOfMeasure !=''">
                    <ns4:Unitofmeasure>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:secondaryUnitOfMeasure/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:secondaryUnitOfMeasure"/>
                    </ns4:Unitofmeasure>
                  </xsl:if>
                  <xsl:if test="top:unitPrice and top:unitPrice !=''">
                    <ns4:Unitprice>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:unitPrice/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:unitPrice"/>
                    </ns4:Unitprice>
                  </xsl:if>
                  <xsl:if test="top:unNumberId and top:unNumberId !=''">
                    <ns4:Unnumber>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:unNumberId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:unNumberId"/>
                    </ns4:Unnumber>
                  </xsl:if>
                  <xsl:if test="top:unNumberId and top:unNumberId !=''">
                    <ns4:Unnumberid>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:unNumberId/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:unNumberId"/>
                    </ns4:Unnumberid>
                  </xsl:if>
                  <xsl:if test="top:unorderedFlag and top:unorderedFlag !=''">
                    <ns4:Unorderedflag>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:unorderedFlag/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:unorderedFlag"/>
                    </ns4:Unorderedflag>
                  </xsl:if>
                  <xsl:if test="top:userHoldFlag and top:userHoldFlag !=''">
                    <ns4:Userholdflag>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:userHoldFlag/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:userHoldFlag"/>
                    </ns4:Userholdflag>
                  </xsl:if>
                  <xsl:if test="top:ussglTransactionCode and top:ussglTransactionCode !=''">
                    <ns4:Ussgltransactioncode>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:ussglTransactionCode/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:ussglTransactionCode"/>
                    </ns4:Ussgltransactioncode>
                  </xsl:if>
                  <xsl:if test="top:vendorProductNum and top:vendorProductNum !=''">
                    <ns4:Vendorproductnum>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:vendorProductNum/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:vendorProductNum"/>
                    </ns4:Vendorproductnum>
                  </xsl:if>
                  <xsl:if test="top:poLineLocationsAll/top:vmiFlag and top:poLineLocationsAll/top:vmiFlag !=''">
                    <ns4:Vmiflag>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="top:poLineLocationsAll/top:vmiFlag/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="top:poLineLocationsAll/top:vmiFlag"/>
                    </ns4:Vmiflag>
                  </xsl:if>
                  <ns4:LineDFF>
                    <xsl:if test="top:attributeCategory and top:attributeCategory !=''">
                      <ns3:AttributeCategory>
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="top:attributeCategory/@xsi:nil"/>
                        </xsl:attribute>
                        <xsl:value-of select="top:attributeCategory"/>
                      </ns3:AttributeCategory>
                    </xsl:if>
                    <xsl:if test="top:attribute1 and top:attribute1 !=''">
                      <ns3:Attribute1>
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="top:attribute1/@xsi:nil"/>
                        </xsl:attribute>
                        <xsl:value-of select="top:attribute1"/>
                      </ns3:Attribute1>
                    </xsl:if>
                    <xsl:if test="top:attribute2 and top:attribute2 !=''">
                      <ns3:Attribute2>
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="top:attribute2/@xsi:nil"/>
                        </xsl:attribute>
                        <xsl:value-of select="top:attribute2"/>
                      </ns3:Attribute2>
                    </xsl:if>
                    <xsl:if test="top:attribute3 and top:attribute3 !=''">
                      <ns3:Attribute3>
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="top:attribute3/@xsi:nil"/>
                        </xsl:attribute>
                        <xsl:value-of select="top:attribute3"/>
                      </ns3:Attribute3>
                    </xsl:if>
                    <xsl:if test="top:attribute4 and top:attribute4 !=''">
                      <ns3:Attribute4>
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="top:attribute4/@xsi:nil"/>
                        </xsl:attribute>
                        <xsl:value-of select="top:attribute4"/>
                      </ns3:Attribute4>
                    </xsl:if>
                    <xsl:if test="top:attribute5 and top:attribute5 !=''">
                      <ns3:Attribute5>
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="top:attribute5/@xsi:nil"/>
                        </xsl:attribute>
                        <xsl:value-of select="top:attribute5"/>
                      </ns3:Attribute5>
                    </xsl:if>
                    <xsl:if test="top:attribute6 and top:attribute6 !=''">
                      <ns3:Attribute6>
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="top:attribute6/@xsi:nil"/>
                        </xsl:attribute>
                        <xsl:value-of select="top:attribute6"/>
                      </ns3:Attribute6>
                    </xsl:if>
                    <xsl:if test="top:attribute7 and top:attribute7 !=''">
                      <ns3:Attribute7>
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="top:attribute7/@xsi:nil"/>
                        </xsl:attribute>
                        <xsl:value-of select="top:attribute7"/>
                      </ns3:Attribute7>
                    </xsl:if>
                    <xsl:if test="top:attribute8 and top:attribute8 !=''">
                      <ns3:Attribute8>
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="top:attribute8/@xsi:nil"/>
                        </xsl:attribute>
                        <xsl:value-of select="top:attribute8"/>
                      </ns3:Attribute8>
                    </xsl:if>
                    <xsl:if test="top:attribute9 and top:attribute9 !=''">
                      <ns3:Attribute9>
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="top:attribute9/@xsi:nil"/>
                        </xsl:attribute>
                        <xsl:value-of select="top:attribute9"/>
                      </ns3:Attribute9>
                    </xsl:if>
                    <xsl:if test="top:attribute10 and top:attribute10 !=''">
                      <ns3:Attribute10>
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="top:attribute10/@xsi:nil"/>
                        </xsl:attribute>
                        <xsl:value-of select="top:attribute10"/>
                      </ns3:Attribute10>
                    </xsl:if>
                    <xsl:if test="top:attribute11 and top:attribute11 !=''">
                      <ns3:Attribute11>
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="top:attribute11/@xsi:nil"/>
                        </xsl:attribute>
                        <xsl:value-of select="top:attribute11"/>
                      </ns3:Attribute11>
                    </xsl:if>
                    <xsl:if test="top:attribute12 and top:attribute12 !=''">
                      <ns3:Attribute12>
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="top:attribute12/@xsi:nil"/>
                        </xsl:attribute>
                        <xsl:value-of select="top:attribute12"/>
                      </ns3:Attribute12>
                    </xsl:if>
                    <xsl:if test="top:attribute13 and top:attribute13 !=''">
                      <ns3:Attribute13>
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="top:attribute13/@xsi:nil"/>
                        </xsl:attribute>
                        <xsl:value-of select="top:attribute13"/>
                      </ns3:Attribute13>
                    </xsl:if>
                    <xsl:if test="top:attribute14 and top:attribute14 !=''">
                      <ns3:Attribute14>
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="top:attribute14/@xsi:nil"/>
                        </xsl:attribute>
                        <xsl:value-of select="top:attribute14"/>
                      </ns3:Attribute14>
                    </xsl:if>
                    <xsl:if test="top:attribute15 and top:attribute15 !=''">
                      <ns3:Attribute15>
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="top:attribute15/@xsi:nil"/>
                        </xsl:attribute>
                        <xsl:value-of select="top:attribute15"/>
                      </ns3:Attribute15>
                    </xsl:if>
                  </ns4:LineDFF>
                  <ns4:ListOfPurchaseOrderDistLines>
                    <ns4:PurchaseOrderDistLines>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:accrualAccountId and top:poLineLocationsAll/top:poDistributionsAll/top:accrualAccountId !=''">
                        <ns4:Accrualaccountid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:accrualAccountId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:accrualAccountId"/>
                        </ns4:Accrualaccountid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:accruedFlag and top:poLineLocationsAll/top:poDistributionsAll/top:accruedFlag !=''">
                        <ns4:Accruedflag>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:accruedFlag/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:accruedFlag"/>
                        </ns4:Accruedflag>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:accrueOnReceiptFlag and top:poLineLocationsAll/top:poDistributionsAll/top:accrueOnReceiptFlag !=''">
                        <ns4:Accrueonreceiptflag>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:accrueOnReceiptFlag/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:accrueOnReceiptFlag"/>
                        </ns4:Accrueonreceiptflag>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:amountBilled and top:poLineLocationsAll/top:poDistributionsAll/top:amountBilled !=''">
                        <ns4:Amountbilled>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:amountBilled/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:amountBilled"/>
                        </ns4:Amountbilled>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:amountCancelled and top:poLineLocationsAll/top:poDistributionsAll/top:amountCancelled !=''">
                        <ns4:Amountcancelled>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:amountCancelled/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:amountCancelled"/>
                        </ns4:Amountcancelled>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:amountDelivered and top:poLineLocationsAll/top:poDistributionsAll/top:amountDelivered !=''">
                        <ns4:Amountdelivered>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:amountDelivered/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:amountDelivered"/>
                        </ns4:Amountdelivered>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:amountOrdered and top:poLineLocationsAll/top:poDistributionsAll/top:amountOrdered !=''">
                        <ns4:Amountordered>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:amountOrdered/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:amountOrdered"/>
                        </ns4:Amountordered>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:amountToEncumber and top:poLineLocationsAll/top:poDistributionsAll/top:amountToEncumber !=''">
                        <ns4:Amounttoencumber>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:amountToEncumber/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:amountToEncumber"/>
                        </ns4:Amounttoencumber>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:awardId and top:poLineLocationsAll/top:poDistributionsAll/top:awardId !=''">
                        <ns4:Awardid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:awardId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:awardId"/>
                        </ns4:Awardid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:bomResourceId and top:poLineLocationsAll/top:poDistributionsAll/top:bomResourceId !=''">
                        <ns4:Bomresourceid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:bomResourceId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:bomResourceId"/>
                        </ns4:Bomresourceid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:budgetAccountId and top:poLineLocationsAll/top:poDistributionsAll/top:budgetAccountId !=''">
                        <ns4:Budgetaccount>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:budgetAccountId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:budgetAccountId"/>
                        </ns4:Budgetaccount>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:budgetAccountId and top:poLineLocationsAll/top:poDistributionsAll/top:budgetAccountId !=''">
                        <ns4:Budgetaccountid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:budgetAccountId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:budgetAccountId"/>
                        </ns4:Budgetaccountid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:destChargeAccountId !=''">
                        <ns4:Chargeaccountid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:destChargeAccountId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:destChargeAccountId"/>
                        </ns4:Chargeaccountid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:codeCombinationId !=''">
                        <ns4:Codecombinationid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:codeCombinationId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:codeCombinationId"/>
                        </ns4:Codecombinationid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:createdBy and top:poLineLocationsAll/top:poDistributionsAll/top:createdBy !=''">
                        <ns4:Createdby>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:createdBy/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:createdBy"/>
                        </ns4:Createdby>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:creationDate and top:poLineLocationsAll/top:poDistributionsAll/top:creationDate !=''">
                        <ns4:Creationdate>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:creationDate/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:creationDate"/>
                        </ns4:Creationdate>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:deliverToLocationId and top:poLineLocationsAll/top:poDistributionsAll/top:deliverToLocationId !=''">
                        <ns4:Delivertolocation>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:deliverToLocationId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:deliverToLocationId"/>
                        </ns4:Delivertolocation>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:deliverToLocationId and top:poLineLocationsAll/top:poDistributionsAll/top:deliverToLocationId !=''">
                        <ns4:Delivertolocationid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:deliverToLocationId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:deliverToLocationId"/>
                        </ns4:Delivertolocationid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:deliverToPersonId and top:poLineLocationsAll/top:poDistributionsAll/top:deliverToPersonId !=''">
                        <ns4:Delivertopersonid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:deliverToPersonId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:deliverToPersonId"/>
                        </ns4:Delivertopersonid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:destChargeAccountId and top:poLineLocationsAll/top:poDistributionsAll/top:destChargeAccountId !=''">
                        <ns4:Destchargeaccountid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:destChargeAccountId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:destChargeAccountId"/>
                        </ns4:Destchargeaccountid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:destinationContext and top:poLineLocationsAll/top:poDistributionsAll/top:destinationContext !=''">
                        <ns4:Destinationcontext>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:destinationContext/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:destinationContext"/>
                        </ns4:Destinationcontext>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:destinationOrganizationId and top:poLineLocationsAll/top:poDistributionsAll/top:destinationOrganizationId !=''">
                        <ns4:Destinationorganization>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:destinationOrganizationId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:destinationOrganizationId"/>
                        </ns4:Destinationorganization>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:destinationOrganizationId and top:poLineLocationsAll/top:poDistributionsAll/top:destinationOrganizationId !=''">
                        <ns4:Destinationorganizationid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:destinationOrganizationId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:destinationOrganizationId"/>
                        </ns4:Destinationorganizationid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:destinationSubinventory and top:poLineLocationsAll/top:poDistributionsAll/top:destinationSubinventory !=''">
                        <ns4:Destinationsubinventory>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:destinationSubinventory/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:destinationSubinventory"/>
                        </ns4:Destinationsubinventory>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:destinationTypeCode and top:poLineLocationsAll/top:poDistributionsAll/top:destinationTypeCode !=''">
                        <ns4:Destinationtype>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:destinationTypeCode/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:destinationTypeCode"/>
                        </ns4:Destinationtype>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:destinationTypeCode and top:poLineLocationsAll/top:poDistributionsAll/top:destinationTypeCode !=''">
                        <ns4:Destinationtypecode>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:destinationTypeCode/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:destinationTypeCode"/>
                        </ns4:Destinationtypecode>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:destVarianceAccountId and top:poLineLocationsAll/top:poDistributionsAll/top:destVarianceAccountId !=''">
                        <ns4:Destvarianceaccountid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:destVarianceAccountId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:destVarianceAccountId"/>
                        </ns4:Destvarianceaccountid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:distributionNum and top:poLineLocationsAll/top:poDistributionsAll/top:distributionNum !=''">
                        <ns4:Distributionnum>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:distributionNum"/>
                        </ns4:Distributionnum>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:distributionType and top:poLineLocationsAll/top:poDistributionsAll/top:distributionType !=''">
                        <ns4:Distributiontype>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:distributionType/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:distributionType"/>
                        </ns4:Distributiontype>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:encumberedAmount and top:poLineLocationsAll/top:poDistributionsAll/top:encumberedAmount !=''">
                        <ns4:Encumberedamount>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:encumberedAmount/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:encumberedAmount"/>
                        </ns4:Encumberedamount>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:encumberedFlag and top:poLineLocationsAll/top:poDistributionsAll/top:encumberedFlag !=''">
                        <ns4:Encumberedflag>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:encumberedFlag/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:encumberedFlag"/>
                        </ns4:Encumberedflag>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:endItemUnitNumber and top:poLineLocationsAll/top:poDistributionsAll/top:endItemUnitNumber !=''">
                        <ns4:Enditemunitnumber>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:endItemUnitNumber/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:endItemUnitNumber"/>
                        </ns4:Enditemunitnumber>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:expenditureType and top:poLineLocationsAll/top:poDistributionsAll/top:expenditureType !=''">
                        <ns4:Expenditure>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:expenditureType/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:expenditureType"/>
                        </ns4:Expenditure>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:expenditureItemDate and top:poLineLocationsAll/top:poDistributionsAll/top:expenditureItemDate !=''">
                        <ns4:Expenditureitemdate>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:expenditureItemDate/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:expenditureItemDate"/>
                        </ns4:Expenditureitemdate>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:expenditureOrganizationId and top:poLineLocationsAll/top:poDistributionsAll/top:expenditureOrganizationId !=''">
                        <ns4:Expenditureorganization>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:expenditureOrganizationId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:expenditureOrganizationId"/>
                        </ns4:Expenditureorganization>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:expenditureOrganizationId and top:poLineLocationsAll/top:poDistributionsAll/top:expenditureOrganizationId !=''">
                        <ns4:Expenditureorganizationid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:expenditureOrganizationId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:expenditureOrganizationId"/>
                        </ns4:Expenditureorganizationid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:expenditureType and top:poLineLocationsAll/top:poDistributionsAll/top:expenditureType !=''">
                        <ns4:Expendituretype>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:expenditureType/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:expenditureType"/>
                        </ns4:Expendituretype>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:failedFundsLookupCode and top:poLineLocationsAll/top:poDistributionsAll/top:failedFundsLookupCode !=''">
                        <ns4:Failedfunds>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:failedFundsLookupCode/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:failedFundsLookupCode"/>
                        </ns4:Failedfunds>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:failedFundsLookupCode and top:poLineLocationsAll/top:poDistributionsAll/top:failedFundsLookupCode !=''">
                        <ns4:Failedfundslookupcode>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:failedFundsLookupCode/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:failedFundsLookupCode"/>
                        </ns4:Failedfundslookupcode>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:glCancelledDate and top:poLineLocationsAll/top:poDistributionsAll/top:glCancelledDate !=''">
                        <ns4:Glcancelleddate>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:glCancelledDate/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:glCancelledDate"/>
                        </ns4:Glcancelleddate>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:glClosedDate and top:poLineLocationsAll/top:poDistributionsAll/top:glClosedDate !=''">
                        <ns4:Glcloseddate>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:glClosedDate/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:glClosedDate"/>
                        </ns4:Glcloseddate>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:glEncumberedDate and top:poLineLocationsAll/top:poDistributionsAll/top:glEncumberedDate !=''">
                        <ns4:Glencumbereddate>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:glEncumberedDate/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:glEncumberedDate"/>
                        </ns4:Glencumbereddate>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:glEncumberedPeriodName and top:poLineLocationsAll/top:poDistributionsAll/top:glEncumberedPeriodName !=''">
                        <ns4:Glencumberedperiodname>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:glEncumberedPeriodName/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:glEncumberedPeriodName"/>
                        </ns4:Glencumberedperiodname>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:governmentContext and top:poLineLocationsAll/top:poDistributionsAll/top:governmentContext !=''">
                        <ns4:Governmentcontext>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:governmentContext/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:governmentContext"/>
                        </ns4:Governmentcontext>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:interfaceDistributionRef and top:poLineLocationsAll/top:poDistributionsAll/top:interfaceDistributionRef !=''">
                        <ns4:Interfacedistributionref>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:interfaceDistributionRef/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:interfaceDistributionRef"/>
                        </ns4:Interfacedistributionref>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:invoiceAdjustmentFlag and top:poLineLocationsAll/top:poDistributionsAll/top:invoiceAdjustmentFlag !=''">
                        <ns4:Invoiceadjustmentflag>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:invoiceAdjustmentFlag/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:invoiceAdjustmentFlag"/>
                        </ns4:Invoiceadjustmentflag>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:lastUpdateDate and top:poLineLocationsAll/top:poDistributionsAll/top:lastUpdateDate !=''">
                        <ns4:Lastupdatedate>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:lastUpdateDate"/>
                        </ns4:Lastupdatedate>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:lastUpdatedBy and top:poLineLocationsAll/top:poDistributionsAll/top:lastUpdatedBy !=''">
                        <ns4:Lastupdatedby>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:lastUpdatedBy"/>
                        </ns4:Lastupdatedby>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:lastUpdateLogin and top:poLineLocationsAll/top:poDistributionsAll/top:lastUpdateLogin !=''">
                        <ns4:Lastupdatelogin>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:lastUpdateLogin/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:lastUpdateLogin"/>
                        </ns4:Lastupdatelogin>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:nonrecoverableTax and top:poLineLocationsAll/top:poDistributionsAll/top:nonrecoverableTax !=''">
                        <ns4:Nonrecoverabletax>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:nonrecoverableTax/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:nonrecoverableTax"/>
                        </ns4:Nonrecoverabletax>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:okeContractDeliverableId and top:poLineLocationsAll/top:poDistributionsAll/top:okeContractDeliverableId !=''">
                        <ns4:Okecontractdeliverableid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:okeContractDeliverableId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:okeContractDeliverableId"/>
                        </ns4:Okecontractdeliverableid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:okeContractLineId and top:poLineLocationsAll/top:poDistributionsAll/top:okeContractLineId !=''">
                        <ns4:Okecontractlineid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:okeContractLineId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:okeContractLineId"/>
                        </ns4:Okecontractlineid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:orgId and top:poLineLocationsAll/top:poDistributionsAll/top:orgId !=''">
                        <ns4:Orgid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:orgId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:orgId"/>
                        </ns4:Orgid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:poDistributionId and top:poLineLocationsAll/top:poDistributionsAll/top:poDistributionId !=''">
                        <ns4:Podistributionid>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:poDistributionId"/>
                        </ns4:Podistributionid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:poHeaderId and top:poLineLocationsAll/top:poDistributionsAll/top:poHeaderId !=''">
                        <ns4:Poheaderid>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:poHeaderId"/>
                        </ns4:Poheaderid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:poLineId and top:poLineLocationsAll/top:poDistributionsAll/top:poLineId !=''">
                        <ns4:Polineid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:poLineId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:poLineId"/>
                        </ns4:Polineid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:poReleaseId and top:poLineLocationsAll/top:poDistributionsAll/top:poReleaseId !=''">
                        <ns4:Poreleaseid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:poReleaseId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:poReleaseId"/>
                        </ns4:Poreleaseid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:preventEncumbranceFlag and top:poLineLocationsAll/top:poDistributionsAll/top:preventEncumbranceFlag !=''">
                        <ns4:Preventencumbranceflag>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:preventEncumbranceFlag/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:preventEncumbranceFlag"/>
                        </ns4:Preventencumbranceflag>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:programApplicationId and top:poLineLocationsAll/top:poDistributionsAll/top:programApplicationId !=''">
                        <ns4:Programapplicationid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:programApplicationId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:programApplicationId"/>
                        </ns4:Programapplicationid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:programId and top:poLineLocationsAll/top:poDistributionsAll/top:programId !=''">
                        <ns4:Programid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:programId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:programId"/>
                        </ns4:Programid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:programUpdateDate and top:poLineLocationsAll/top:poDistributionsAll/top:programUpdateDate !=''">
                        <ns4:Programupdatedate>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:programUpdateDate/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:programUpdateDate"/>
                        </ns4:Programupdatedate>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:projectId and top:poLineLocationsAll/top:poDistributionsAll/top:projectId !=''">
                        <ns4:Project>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:projectId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:projectId"/>
                        </ns4:Project>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:projectAccountingContext and top:poLineLocationsAll/top:poDistributionsAll/top:projectAccountingContext !=''">
                        <ns4:Projectaccountingcontext>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:projectAccountingContext/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:projectAccountingContext"/>
                        </ns4:Projectaccountingcontext>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:projectId and top:poLineLocationsAll/top:poDistributionsAll/top:projectId !=''">
                        <ns4:Projectid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:projectId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:projectId"/>
                        </ns4:Projectid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:quantityBilled and top:poLineLocationsAll/top:poDistributionsAll/top:quantityBilled !=''">
                        <ns4:Quantitybilled>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:quantityBilled/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:quantityBilled"/>
                        </ns4:Quantitybilled>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:quantityCancelled and top:poLineLocationsAll/top:poDistributionsAll/top:quantityCancelled !=''">
                        <ns4:Quantitycancelled>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:quantityCancelled/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:quantityCancelled"/>
                        </ns4:Quantitycancelled>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:quantityDelivered and top:poLineLocationsAll/top:poDistributionsAll/top:quantityDelivered !=''">
                        <ns4:Quantitydelivered>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:quantityDelivered/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:quantityDelivered"/>
                        </ns4:Quantitydelivered>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:quantityOrdered and top:poLineLocationsAll/top:poDistributionsAll/top:quantityOrdered !=''">
                        <ns4:Quantityordered>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:quantityOrdered/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:quantityOrdered"/>
                        </ns4:Quantityordered>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:rate and top:poLineLocationsAll/top:poDistributionsAll/top:rate !=''">
                        <ns4:Rate>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:rate/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:rate"/>
                        </ns4:Rate>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:rateDate and top:poLineLocationsAll/top:poDistributionsAll/top:rateDate !=''">
                        <ns4:Ratedate>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:rateDate/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:rateDate"/>
                        </ns4:Ratedate>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:recoverableTax and top:poLineLocationsAll/top:poDistributionsAll/top:recoverableTax !=''">
                        <ns4:Recoverabletax>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:recoverableTax/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:recoverableTax"/>
                        </ns4:Recoverabletax>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:recoveryRate and top:poLineLocationsAll/top:poDistributionsAll/top:recoveryRate !=''">
                        <ns4:Recoveryrate>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:recoveryRate/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:recoveryRate"/>
                        </ns4:Recoveryrate>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:distributionId and top:poLineLocationsAll/top:poDistributionsAll/top:distributionId !=''">
                        <ns4:Reqdistributionid>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:poReqDistributionsAll/top:distributionId"/>
                        </ns4:Reqdistributionid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:reqHeaderReferenceNum and top:poLineLocationsAll/top:poDistributionsAll/top:reqHeaderReferenceNum !=''">
                        <ns4:Reqheaderreferencenum>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:reqHeaderReferenceNum/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:reqHeaderReferenceNum"/>
                        </ns4:Reqheaderreferencenum>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:reqLineReferenceNum and top:poLineLocationsAll/top:poDistributionsAll/top:reqLineReferenceNum !=''">
                        <ns4:Reqlinereferencenum>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:reqLineReferenceNum/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:reqLineReferenceNum"/>
                        </ns4:Reqlinereferencenum>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:orgId and top:poLineLocationsAll/top:poDistributionsAll/top:orgId !=''">
                        <ns4:Reqowningorgid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:orgId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:orgId"/>
                        </ns4:Reqowningorgid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:requestId and top:poLineLocationsAll/top:poDistributionsAll/top:requestId !=''">
                        <ns4:Requestid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:requestId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:requestId"/>
                        </ns4:Requestid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:setOfBooksId and top:poLineLocationsAll/top:poDistributionsAll/top:setOfBooksId !=''">
                        <ns4:Setofbooks>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:setOfBooksId"/>
                        </ns4:Setofbooks>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:setOfBooksId and top:poLineLocationsAll/top:poDistributionsAll/top:setOfBooksId !=''">
                        <ns4:Setofbooksid>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:setOfBooksId"/>
                        </ns4:Setofbooksid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:sourceDistributionId and top:poLineLocationsAll/top:poDistributionsAll/top:sourceDistributionId !=''">
                        <ns4:Sourcedistributionid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:sourceDistributionId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:sourceDistributionId"/>
                        </ns4:Sourcedistributionid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:distributionNum and top:poLineLocationsAll/top:poDistributionsAll/top:distributionNum !=''">
                        <ns4:Sourcedistributionnum>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:distributionNum"/>
                        </ns4:Sourcedistributionnum>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:taskId and top:poLineLocationsAll/top:poDistributionsAll/top:taskId !=''">
                        <ns4:Task>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:taskId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:taskId"/>
                        </ns4:Task>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:taskId and top:poLineLocationsAll/top:poDistributionsAll/top:taskId !=''">
                        <ns4:Taskid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:taskId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:taskId"/>
                        </ns4:Taskid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:taxRecoveryOverrideFlag and top:poLineLocationsAll/top:poDistributionsAll/top:taxRecoveryOverrideFlag !=''">
                        <ns4:Taxrecoveryoverrideflag>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:taxRecoveryOverrideFlag/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:taxRecoveryOverrideFlag"/>
                        </ns4:Taxrecoveryoverrideflag>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:unencumberedAmount and top:poLineLocationsAll/top:poDistributionsAll/top:unencumberedAmount !=''">
                        <ns4:Unencumberedamount>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:unencumberedAmount/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:unencumberedAmount"/>
                        </ns4:Unencumberedamount>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:unencumberedQuantity and top:poLineLocationsAll/top:poDistributionsAll/top:unencumberedQuantity !=''">
                        <ns4:Unencumberedquantity>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:unencumberedQuantity/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:unencumberedQuantity"/>
                        </ns4:Unencumberedquantity>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:ussglTransactionCode and top:poLineLocationsAll/top:poDistributionsAll/top:ussglTransactionCode !=''">
                        <ns4:Ussgltransactioncode>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:ussglTransactionCode/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:ussglTransactionCode"/>
                        </ns4:Ussgltransactioncode>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:varianceAccountId and top:poLineLocationsAll/top:poDistributionsAll/top:varianceAccountId !=''">
                        <ns4:Varianceaccount>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:varianceAccountId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:varianceAccountId"/>
                        </ns4:Varianceaccount>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:varianceAccountId and top:poLineLocationsAll/top:poDistributionsAll/top:varianceAccountId !=''">
                        <ns4:Varianceaccountid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:varianceAccountId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:varianceAccountId"/>
                        </ns4:Varianceaccountid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:wipEntityId and top:poLineLocationsAll/top:poDistributionsAll/top:wipEntityId !=''">
                        <ns4:Wipentity>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:wipEntityId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:wipEntityId"/>
                        </ns4:Wipentity>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:wipEntityId and top:poLineLocationsAll/top:poDistributionsAll/top:wipEntityId !=''">
                        <ns4:Wipentityid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:wipEntityId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:wipEntityId"/>
                        </ns4:Wipentityid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:wipLineId and top:poLineLocationsAll/top:poDistributionsAll/top:wipLineId !=''">
                        <ns4:Wiplineid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:wipLineId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:wipLineId"/>
                        </ns4:Wiplineid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:wipOperationSeqNum and top:poLineLocationsAll/top:poDistributionsAll/top:wipOperationSeqNum !=''">
                        <ns4:Wipoperationseqnum>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:wipOperationSeqNum/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:wipOperationSeqNum"/>
                        </ns4:Wipoperationseqnum>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:wipRepetitiveScheduleId and top:poLineLocationsAll/top:poDistributionsAll/top:wipRepetitiveScheduleId !=''">
                        <ns4:Wiprepetitiveschedule>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:wipRepetitiveScheduleId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:wipRepetitiveScheduleId"/>
                        </ns4:Wiprepetitiveschedule>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:wipRepetitiveScheduleId and top:poLineLocationsAll/top:poDistributionsAll/top:wipRepetitiveScheduleId !=''">
                        <ns4:Wiprepetitivescheduleid>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:wipRepetitiveScheduleId/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:wipRepetitiveScheduleId"/>
                        </ns4:Wiprepetitivescheduleid>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:wipResourceSeqNum and top:poLineLocationsAll/top:poDistributionsAll/top:wipResourceSeqNum !=''">
                        <ns4:Wipresourceseqnum>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:wipResourceSeqNum/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:wipResourceSeqNum"/>
                        </ns4:Wipresourceseqnum>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:poReqDistributionsAll/top:poRequisitionLinesAll/top:poRequisitionHeadersAll/top:segment1 and top:poLineLocationsAll/top:poDistributionsAll/top:poReqDistributionsAll/top:poRequisitionLinesAll/top:poRequisitionHeadersAll/top:segment1 !=''">
                        <ns4:RequisitionNumber>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:poReqDistributionsAll/top:poRequisitionLinesAll/top:poRequisitionHeadersAll/top:segment1"/>
                        </ns4:RequisitionNumber>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:poReqDistributionsAll/top:poRequisitionLinesAll/top:lineNum and top:poLineLocationsAll/top:poDistributionsAll/top:poReqDistributionsAll/top:poRequisitionLinesAll/top:lineNum !=''">
                        <ns4:RequisitionLineNumber>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:poReqDistributionsAll/top:poRequisitionLinesAll/top:lineNum"/>
                        </ns4:RequisitionLineNumber>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:poReqDistributionsAll/top:poRequisitionLinesAll/top:poRequisitionHeadersAll/top:creationDate and top:poLineLocationsAll/top:poDistributionsAll/top:poReqDistributionsAll/top:poRequisitionLinesAll/top:poRequisitionHeadersAll/top:creationDate !=''">
                        <ns4:RequisitionDate>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:poReqDistributionsAll/top:poRequisitionLinesAll/top:poRequisitionHeadersAll/top:creationDate"/>
                        </ns4:RequisitionDate>
                      </xsl:if>
                      <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:poReqDistributionsAll/top:poRequisitionLinesAll/top:poRequisitionHeadersAll/top:approvedDate and top:poLineLocationsAll/top:poDistributionsAll/top:poReqDistributionsAll/top:poRequisitionLinesAll/top:poRequisitionHeadersAll/top:approvedDate !=''">
                        <ns4:RequisitionApprovedDate>
                          <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:poReqDistributionsAll/top:poRequisitionLinesAll/top:poRequisitionHeadersAll/top:approvedDate"/>
                        </ns4:RequisitionApprovedDate>
                      </xsl:if>
                      <ns4:DistDFF>
                        <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:attributeCategory and top:poLineLocationsAll/top:poDistributionsAll/top:attributeCategory !=''">
                          <ns3:AttributeCategory>
                            <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:attributeCategory/@xsi:nil"/>
                            </xsl:attribute>
                          </ns3:AttributeCategory>
                        </xsl:if>
                        <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:attribute1 and top:poLineLocationsAll/top:poDistributionsAll/top:attribute1 !=''">
                          <ns3:Attribute1>
                            <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:attribute1/@xsi:nil"/>
                            </xsl:attribute>
                          </ns3:Attribute1>
                        </xsl:if>
                        <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:attribute2 and top:poLineLocationsAll/top:poDistributionsAll/top:attribute2!=''">
                          <ns3:Attribute2>
                            <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:attribute2/@xsi:nil"/>
                            </xsl:attribute>
                          </ns3:Attribute2>
                        </xsl:if>
                        <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:attribute3 and top:poLineLocationsAll/top:poDistributionsAll/top:attribute3 !=''">
                          <ns3:Attribute3>
                            <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:attribute3/@xsi:nil"/>
                            </xsl:attribute>
                          </ns3:Attribute3>
                        </xsl:if>
                        <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:attribute4 and top:poLineLocationsAll/top:poDistributionsAll/top:attribute4 !=''">
                          <ns3:Attribute4>
                            <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:attribute4/@xsi:nil"/>
                            </xsl:attribute>
                          </ns3:Attribute4>
                        </xsl:if>
                        <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:attribute5 and top:poLineLocationsAll/top:poDistributionsAll/top:attribute5 !=''">
                          <ns3:Attribute5>
                            <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:attribute5/@xsi:nil"/>
                            </xsl:attribute>
                          </ns3:Attribute5>
                        </xsl:if>
                        <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:attribute6 and top:poLineLocationsAll/top:poDistributionsAll/top:attribute6 !=''">
                          <ns3:Attribute6>
                            <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:attribute6/@xsi:nil"/>
                            </xsl:attribute>
                          </ns3:Attribute6>
                        </xsl:if>
                        <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:attribute7 and top:poLineLocationsAll/top:poDistributionsAll/top:attribute7 !=''">
                          <ns3:Attribute7>
                            <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:attribute7/@xsi:nil"/>
                            </xsl:attribute>
                          </ns3:Attribute7>
                        </xsl:if>
                        <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:attribute8 and top:poLineLocationsAll/top:poDistributionsAll/top:attribute8 !=''">
                          <ns3:Attribute8>
                            <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:attribute8/@xsi:nil"/>
                            </xsl:attribute>
                          </ns3:Attribute8>
                        </xsl:if>
                        <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:attribute9 and top:poLineLocationsAll/top:poDistributionsAll/top:attribute9 !=''">
                          <ns3:Attribute9>
                            <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:attribute9/@xsi:nil"/>
                            </xsl:attribute>
                          </ns3:Attribute9>
                        </xsl:if>
                        <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:attribute10 and top:poLineLocationsAll/top:poDistributionsAll/top:attribute10 !=''">
                          <ns3:Attribute10>
                            <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:attribute10/@xsi:nil"/>
                            </xsl:attribute>
                          </ns3:Attribute10>
                        </xsl:if>
                        <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:attribute11 and top:poLineLocationsAll/top:poDistributionsAll/top:attribute11 !=''">
                          <ns3:Attribute11>
                            <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:attribute11/@xsi:nil"/>
                            </xsl:attribute>
                          </ns3:Attribute11>
                        </xsl:if>
                        <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:attribute12 and top:poLineLocationsAll/top:poDistributionsAll/top:attribute12 !=''">
                          <ns3:Attribute12>
                            <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:attribute12/@xsi:nil"/>
                            </xsl:attribute>
                          </ns3:Attribute12>
                        </xsl:if>
                        <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:attribute13 and top:poLineLocationsAll/top:poDistributionsAll/top:attribute13 !=''">
                          <ns3:Attribute13>
                            <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:attribute13/@xsi:nil"/>
                            </xsl:attribute>
                          </ns3:Attribute13>
                        </xsl:if>
                        <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:attribute14 and top:poLineLocationsAll/top:poDistributionsAll/top:attribute14 !=''">
                          <ns3:Attribute14>
                            <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:attribute14/@xsi:nil"/>
                            </xsl:attribute>
                          </ns3:Attribute14>
                        </xsl:if>
                        <xsl:if test="top:poLineLocationsAll/top:poDistributionsAll/top:attribute15 and top:poLineLocationsAll/top:poDistributionsAll/top:attribute15 !=''">
                          <ns3:Attribute15>
                            <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="top:poLineLocationsAll/top:poDistributionsAll/top:attribute15/@xsi:nil"/>
                            </xsl:attribute>
                          </ns3:Attribute15>
                        </xsl:if>
                      </ns4:DistDFF>
                    </ns4:PurchaseOrderDistLines>
                  </ns4:ListOfPurchaseOrderDistLines>
                </ns4:PurchaseOrderLine>
              </xsl:for-each>
            </ns4:ListOfPurchaseOrderLines>
          </ns4:PurchaseOrder>
        </xsl:for-each>
      </poam:ListOfPurchaseOrders>
    </poam:QueryPurchaseOrderResponseMessage>
  </xsl:template>
</xsl:stylesheet>