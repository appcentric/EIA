<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:eia="http://xmlns.eia.com/extensions/1.0"
                xmlns:tns="http://xmlns.eia.com/ABS/EBiz/PurchaseOrderABS/1.0"
                xmlns:ns9="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ns7="http://xmlns.oracle.com/pcbpel/adapter/db/WI_Application/NUC_EbizPurchaseOrder_ABS/DB_QueryPurchaseOrderEBS"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:ns1="http://xmlns.eia.com/AO/EBiz/common/SupplierAO/1.0"
                xmlns:poam="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderABM/1.0"
                xmlns:ns4="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0"
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
                xmlns:ns8="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:ns0="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_QueryPurchaseOrderEBS"
                xmlns:ns5="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:ns6="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ns12="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns11="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns2="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:ns3="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderAO/1.0"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl tns ns9 poam ns4 ns10 soap12 soap mime wsdl core ns8 ns0 ns5 ns6 xsd ns12 ns11 ns2 ns3 ns7 plt top bpws xp20 eia bpel bpm utl ora socket mhdr oraext dvm hwf med ids xdk xref ldap"
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
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/PurchaseOrderABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryPurchaseOrderRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderABM/1.0"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../DB_QueryPurchaseOrderEBS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="PoHeadersAll"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_QueryPurchaseOrderEBS"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <oracle-xsl-mapper:mapShowPrefixes type="true"/>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED SEP 09 14:05:50 CDT 2015].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <top:PoHeadersAll>
      <top:poHeaderId>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Poheaderid"/>
      </top:poHeaderId>
      <top:agentId>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Agentid"/>
      </top:agentId>
      <top:typeLookupCode>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Typelookupcode"/>
      </top:typeLookupCode>
      <top:lastUpdateDate>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Lastupdatedate"/>
      </top:lastUpdateDate>
      <top:lastUpdatedBy>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Lastupdatedby"/>
      </top:lastUpdatedBy>
      <top:segment1>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Segment1"/>
      </top:segment1>
      <top:summaryFlag>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Summaryflag"/>
      </top:summaryFlag>
      <top:enabledFlag>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Enabledflag"/>
      </top:enabledFlag>
      <top:segment2>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Segment2/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Segment2"/>
      </top:segment2>
      <top:segment3>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Segment3/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Segment3"/>
      </top:segment3>
      <top:segment4>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Segment4/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Segment4"/>
      </top:segment4>
      <top:segment5>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Segment5/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Segment5"/>
      </top:segment5>
      <top:startDateActive>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Startdateactive/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Startdateactive"/>
      </top:startDateActive>
      <top:endDateActive>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Enddateactive/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Enddateactive"/>
      </top:endDateActive>
      <top:lastUpdateLogin>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Lastupdatelogin/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Lastupdatelogin"/>
      </top:lastUpdateLogin>
      <top:creationDate>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Creationdate/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Creationdate"/>
      </top:creationDate>
      <top:createdBy>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Createdby/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Createdby"/>
      </top:createdBy>
      <top:vendorId>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Vendorid/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Vendorid"/>
      </top:vendorId>
      <top:vendorSiteId>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Vendorsiteid/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Vendorsiteid"/>
      </top:vendorSiteId>
      <top:vendorContactId>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Vendorcontactid/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Vendorcontactid"/>
      </top:vendorContactId>
      <top:shipToLocationId>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Shiptolocationid/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Shiptolocationid"/>
      </top:shipToLocationId>
      <top:billToLocationId>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Billtolocationid/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Billtolocationid"/>
      </top:billToLocationId>
      <top:termsId>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Termsid/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Termsid"/>
      </top:termsId>
      <top:shipViaLookupCode>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Shipvialookupcode/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Shipvialookupcode"/>
      </top:shipViaLookupCode>
      <top:fobLookupCode>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Foblookupcode/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Foblookupcode"/>
      </top:fobLookupCode>
      <top:freightTermsLookupCode>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Freighttermslookupcode/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Freighttermslookupcode"/>
      </top:freightTermsLookupCode>
      <top:statusLookupCode>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Statuslookupcode/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Statuslookupcode"/>
      </top:statusLookupCode>
      <top:currencyCode>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Currencycode/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Currencycode"/>
      </top:currencyCode>
      <top:rateType>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Ratetype/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Ratetype"/>
      </top:rateType>
      <top:rateDate>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Ratedate/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Ratedate"/>
      </top:rateDate>
      <top:rate>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Rate/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Rate"/>
      </top:rate>
      <top:fromHeaderId>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Fromheaderid/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Fromheaderid"/>
      </top:fromHeaderId>
      <top:fromTypeLookupCode>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Fromtypelookupcode/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Fromtypelookupcode"/>
      </top:fromTypeLookupCode>
      <top:startDate>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Startdate/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Startdate"/>
      </top:startDate>
      <top:endDate>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Enddate/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Enddate"/>
      </top:endDate>
      <top:blanketTotalAmount>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Blankettotalamount/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Blankettotalamount"/>
      </top:blanketTotalAmount>
      <top:authorizationStatus>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Authorizationstatus/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Authorizationstatus"/>
      </top:authorizationStatus>
      <top:revisionNum>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Revisionnum/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Revisionnum"/>
      </top:revisionNum>
      <top:revisedDate>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Reviseddate/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Reviseddate"/>
      </top:revisedDate>
      <top:approvedFlag>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Approvedflag/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Approvedflag"/>
      </top:approvedFlag>
      <top:approvedDate>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Approveddate/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Approveddate"/>
      </top:approvedDate>
      <top:amountLimit>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Amountlimit/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Amountlimit"/>
      </top:amountLimit>
      <top:minReleaseAmount>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Minreleaseamount/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Minreleaseamount"/>
      </top:minReleaseAmount>
      <top:noteToAuthorizer>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Notetoauthorizer/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Notetoauthorizer"/>
      </top:noteToAuthorizer>
      <top:noteToVendor>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Notetovendor/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Notetovendor"/>
      </top:noteToVendor>
      <top:noteToReceiver>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Notetoreceiver/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Notetoreceiver"/>
      </top:noteToReceiver>
      <top:printCount>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Printcount/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Printcount"/>
      </top:printCount>
      <top:printedDate>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Printeddate/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Printeddate"/>
      </top:printedDate>
      <top:vendorOrderNum>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Vendorordernum/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Vendorordernum"/>
      </top:vendorOrderNum>
      <top:confirmingOrderFlag>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Confirmingorderflag/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Confirmingorderflag"/>
      </top:confirmingOrderFlag>
      <top:comments>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Comments/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Comments"/>
      </top:comments>
      <top:replyDate>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Replydate/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Replydate"/>
      </top:replyDate>
      <top:replyMethodLookupCode>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Replymethodlookupcode/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Replymethodlookupcode"/>
      </top:replyMethodLookupCode>
      <top:rfqCloseDate>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Rfqclosedate/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Rfqclosedate"/>
      </top:rfqCloseDate>
      <top:quoteTypeLookupCode>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Quotetypelookupcode/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Quotetypelookupcode"/>
      </top:quoteTypeLookupCode>
      <top:quotationClassCode>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Quotationclasscode/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Quotationclasscode"/>
      </top:quotationClassCode>
      <top:quoteWarningDelayUnit>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Quotewarningdelayunit/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Quotewarningdelayunit"/>
      </top:quoteWarningDelayUnit>
      <top:quoteWarningDelay>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Quotewarningdelay/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Quotewarningdelay"/>
      </top:quoteWarningDelay>
      <top:quoteVendorQuoteNumber>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Quotevendorquotenumber/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Quotevendorquotenumber"/>
      </top:quoteVendorQuoteNumber>
      <top:acceptanceRequiredFlag>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Acceptancerequiredflag/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Acceptancerequiredflag"/>
      </top:acceptanceRequiredFlag>
      <top:acceptanceDueDate>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Acceptanceduedate/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Acceptanceduedate"/>
      </top:acceptanceDueDate>
      <top:closedDate>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Closeddate/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Closeddate"/>
      </top:closedDate>
      <top:userHoldFlag>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Userholdflag/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Userholdflag"/>
      </top:userHoldFlag>
      <top:approvalRequiredFlag>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Approvalrequiredflag/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Approvalrequiredflag"/>
      </top:approvalRequiredFlag>
      <top:cancelFlag>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Cancelflag/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Cancelflag"/>
      </top:cancelFlag>
      <top:firmStatusLookupCode>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Firmstatuslookupcode/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Firmstatuslookupcode"/>
      </top:firmStatusLookupCode>
      <top:firmDate>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Firmdate/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Firmdate"/>
      </top:firmDate>
      <top:frozenFlag>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Frozenflag/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Frozenflag"/>
      </top:frozenFlag>
      <top:supplyAgreementFlag>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Supplyagreementflag/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Supplyagreementflag"/>
      </top:supplyAgreementFlag>
      <top:ediProcessedStatus>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Status/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Status"/>
      </top:ediProcessedStatus>
      <top:attributeCategory>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattributecategory/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattributecategory"/>
      </top:attributeCategory>
      <top:attribute1>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute1/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute1"/>
      </top:attribute1>
      <top:attribute2>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute2/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute2"/>
      </top:attribute2>
      <top:attribute3>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute3/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute3"/>
      </top:attribute3>
      <top:attribute4>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute4/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute4"/>
      </top:attribute4>
      <top:attribute5>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute5/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute5"/>
      </top:attribute5>
      <top:attribute6>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute6/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute6"/>
      </top:attribute6>
      <top:attribute7>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute7/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute7"/>
      </top:attribute7>
      <top:attribute8>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute8/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute8"/>
      </top:attribute8>
      <top:attribute9>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute9/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute9"/>
      </top:attribute9>
      <top:attribute10>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute10/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute10"/>
      </top:attribute10>
      <top:attribute11>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute11/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute11"/>
      </top:attribute11>
      <top:attribute12>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute12/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute12"/>
      </top:attribute12>
      <top:attribute13>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute13/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute13"/>
      </top:attribute13>
      <top:attribute14>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute14/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute14"/>
      </top:attribute14>
      <top:attribute15>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute15/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute15"/>
      </top:attribute15>
      <top:closedCode>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Closedcode/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Closedcode"/>
      </top:closedCode>
      <top:ussglTransactionCode>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Ussgltransactioncode/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Ussgltransactioncode"/>
      </top:ussglTransactionCode>
      <top:governmentContext>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Governmentcontext/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Governmentcontext"/>
      </top:governmentContext>
      <top:requestId>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Requestid/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Requestid"/>
      </top:requestId>
      <top:programApplicationId>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Programapplicationid/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Programapplicationid"/>
      </top:programApplicationId>
      <top:programId>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Programid/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Programid"/>
      </top:programId>
      <top:programUpdateDate>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Programupdatedate/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Programupdatedate"/>
      </top:programUpdateDate>
      <!--top:orgId>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Orgid/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Orgid"/>
      </top:orgId-->
      <top:globalAttributeCategory>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattributecategory/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattributecategory"/>
      </top:globalAttributeCategory>
      <top:globalAttribute1>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute1/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute1"/>
      </top:globalAttribute1>
      <top:globalAttribute2>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute2/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute2"/>
      </top:globalAttribute2>
      <top:globalAttribute3>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute3/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute3"/>
      </top:globalAttribute3>
      <top:globalAttribute4>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute4/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute4"/>
      </top:globalAttribute4>
      <top:globalAttribute5>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute5/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute5"/>
      </top:globalAttribute5>
      <top:globalAttribute6>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute6/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute6"/>
      </top:globalAttribute6>
      <top:globalAttribute7>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute7/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute7"/>
      </top:globalAttribute7>
      <top:globalAttribute8>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute8/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute8"/>
      </top:globalAttribute8>
      <top:globalAttribute9>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute9/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute9"/>
      </top:globalAttribute9>
      <top:globalAttribute10>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute10/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute10"/>
      </top:globalAttribute10>
      <top:globalAttribute11>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute11/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute11"/>
      </top:globalAttribute11>
      <top:globalAttribute12>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute12/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute12"/>
      </top:globalAttribute12>
      <top:globalAttribute13>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute13/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute13"/>
      </top:globalAttribute13>
      <top:globalAttribute14>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute14/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute14"/>
      </top:globalAttribute14>
      <top:globalAttribute15>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute15/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute15"/>
      </top:globalAttribute15>
      <top:globalAttribute16>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute16/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute16"/>
      </top:globalAttribute16>
      <top:globalAttribute17>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute17/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute17"/>
      </top:globalAttribute17>
      <top:globalAttribute18>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute18/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute18"/>
      </top:globalAttribute18>
      <top:globalAttribute19>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute19/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute19"/>
      </top:globalAttribute19>
      <top:globalAttribute20>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute20/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalattribute20"/>
      </top:globalAttribute20>
      <top:interfaceSourceCode>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Interfacesourcecode/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Interfacesourcecode"/>
      </top:interfaceSourceCode>
      <top:referenceNum>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Referencenum/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Referencenum"/>
      </top:referenceNum>
      <top:wfItemType>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Wfitemtype/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Wfitemtype"/>
      </top:wfItemType>
      <top:wfItemKey>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Wfitemkey/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Wfitemkey"/>
      </top:wfItemKey>
      <top:mrcRateType>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Ratetype/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Ratetype"/>
      </top:mrcRateType>
      <top:mrcRateDate>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Ratedate/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Ratedate"/>
      </top:mrcRateDate>
      <top:mrcRate>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Rate/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Rate"/>
      </top:mrcRate>
      <top:pcardId>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Pcardid/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Pcardid"/>
      </top:pcardId>
      <top:priceUpdateTolerance>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Priceupdatetolerance/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Priceupdatetolerance"/>
      </top:priceUpdateTolerance>
      <top:payOnCode>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Payoncode/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Payoncode"/>
      </top:payOnCode>
      <top:xmlSendDate>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Enddate/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Enddate"/>
      </top:xmlSendDate>
      <top:xmlChangeSendDate>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Enddate/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Enddate"/>
      </top:xmlChangeSendDate>
      <top:globalAgreementFlag>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalagreementflag/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Globalagreementflag"/>
      </top:globalAgreementFlag>
      <top:consignedConsumptionFlag>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Consignedconsumptionflag/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Consignedconsumptionflag"/>
      </top:consignedConsumptionFlag>
      <top:consumeReqDemandFlag>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Consumereqdemandflag/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Consumereqdemandflag"/>
      </top:consumeReqDemandFlag>
      <top:shippingControl>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Shippingcontrol/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Shippingcontrol"/>
      </top:shippingControl>
      <top:contermsExistFlag>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Contermsexistflag/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Contermsexistflag"/>
      </top:contermsExistFlag>
      <top:contermsArticlesUpdDate>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Contermsarticlesupddate/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Contermsarticlesupddate"/>
      </top:contermsArticlesUpdDate>
      <top:contermsDelivUpdDate>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Contermsdelivupddate/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Contermsdelivupddate"/>
      </top:contermsDelivUpdDate>
      <top:encumbranceRequiredFlag>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Encumbrancerequiredflag/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Encumbrancerequiredflag"/>
      </top:encumbranceRequiredFlag>
      <top:pendingSignatureFlag>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Pendingsignatureflag/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Pendingsignatureflag"/>
      </top:pendingSignatureFlag>
      <top:changeSummary>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Changesummary/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Changesummary"/>
      </top:changeSummary>
      <top:fax>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Fax/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Fax"/>
      </top:fax>
      <top:createdLanguage>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Createdlanguage/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Createdlanguage"/>
      </top:createdLanguage>
      <top:cpaReference>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Cpareference/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Cpareference"/>
      </top:cpaReference>
      <top:lockOwnerRole>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Lockownerrole/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Lockownerrole"/>
      </top:lockOwnerRole>
      <top:lockOwnerUserId>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Lockowneruserid/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Lockowneruserid"/>
      </top:lockOwnerUserId>
      <top:supplierAuthEnabledFlag>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Enabledflag/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Enabledflag"/>
      </top:supplierAuthEnabledFlag>
      <top:catAdminAuthEnabledFlag>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Enabledflag/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Enabledflag"/>
      </top:catAdminAuthEnabledFlag>
      <top:styleId>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Styleid"/>
      </top:styleId>
      <top:enableAllSites>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Enableallsites/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Enableallsites"/>
      </top:enableAllSites>
      <top:poLinesAllCollection>
        <xsl:for-each select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:ListOfPurchaseOrderLines/ns3:PurchaseOrderLine">
          <top:PoLinesAll>
            <top:poLineId>
              <xsl:value-of select="ns3:Polineid"/>
            </top:poLineId>
            <top:lastUpdateDate>
              <xsl:value-of select="ns3:Lastupdatedate"/>
            </top:lastUpdateDate>
            <top:lastUpdatedBy>
              <xsl:value-of select="ns3:Lastupdatedby"/>
            </top:lastUpdatedBy>
            <top:lineTypeId>
              <xsl:value-of select="ns3:Linetypeid"/>
            </top:lineTypeId>
            <top:lineNum>
              <xsl:value-of select="ns3:Linenum"/>
            </top:lineNum>
            <top:lastUpdateLogin>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Lastupdatelogin/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Lastupdatelogin"/>
            </top:lastUpdateLogin>
            <top:creationDate>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Creationdate/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Creationdate"/>
            </top:creationDate>
            <top:createdBy>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Createdby/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Createdby"/>
            </top:createdBy>
            <top:itemId>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Itemid/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Itemid"/>
            </top:itemId>
            <top:itemRevision>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Itemrevision/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Itemrevision"/>
            </top:itemRevision>
            <top:categoryId>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Categoryid/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Categoryid"/>
            </top:categoryId>
            <top:itemDescription>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Itemdescription/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Itemdescription"/>
            </top:itemDescription>
            <top:unitMeasLookupCode>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Unitmeaslookupcode/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Unitmeaslookupcode"/>
            </top:unitMeasLookupCode>
            <top:quantityCommitted>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Quantitycommitted/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Quantitycommitted"/>
            </top:quantityCommitted>
            <top:committedAmount>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Committedamount/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Committedamount"/>
            </top:committedAmount>
            <top:allowPriceOverrideFlag>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Allowpriceoverrideflag/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Allowpriceoverrideflag"/>
            </top:allowPriceOverrideFlag>
            <top:notToExceedPrice>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Nottoexceedprice/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Nottoexceedprice"/>
            </top:notToExceedPrice>
            <top:listPricePerUnit>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Listpriceperunit/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Listpriceperunit"/>
            </top:listPricePerUnit>
            <top:unitPrice>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Unitprice/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Unitprice"/>
            </top:unitPrice>
            <top:quantity>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Quantity/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Quantity"/>
            </top:quantity>
            <top:unNumberId>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Unnumberid/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Unnumberid"/>
            </top:unNumberId>
            <top:hazardClassId>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Hazardclassid/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Hazardclassid"/>
            </top:hazardClassId>
            <top:noteToVendor>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Notetovendor/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Notetovendor"/>
            </top:noteToVendor>
            <top:fromHeaderId>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Fromheaderid/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Fromheaderid"/>
            </top:fromHeaderId>
            <top:fromLineId>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Fromlineid/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Fromlineid"/>
            </top:fromLineId>
            <top:minOrderQuantity>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Minorderquantity/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Minorderquantity"/>
            </top:minOrderQuantity>
            <top:maxOrderQuantity>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Maxorderquantity/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Maxorderquantity"/>
            </top:maxOrderQuantity>
            <top:qtyRcvTolerance>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Qtyrcvtolerance/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Qtyrcvtolerance"/>
            </top:qtyRcvTolerance>
            <top:overToleranceErrorFlag>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Overtoleranceerrorflag/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Overtoleranceerrorflag"/>
            </top:overToleranceErrorFlag>
            <top:marketPrice>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Marketprice/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Marketprice"/>
            </top:marketPrice>
            <top:unorderedFlag>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Unorderedflag/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Unorderedflag"/>
            </top:unorderedFlag>
            <top:closedFlag>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Closedflag/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Closedflag"/>
            </top:closedFlag>
            <top:userHoldFlag>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Userholdflag/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Userholdflag"/>
            </top:userHoldFlag>
            <top:cancelFlag>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Cancelflag/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Cancelflag"/>
            </top:cancelFlag>
            <top:cancelledBy>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Cancelledby/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Cancelledby"/>
            </top:cancelledBy>
            <top:cancelDate>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Canceldate/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Canceldate"/>
            </top:cancelDate>
            <top:cancelReason>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Cancelreason/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Cancelreason"/>
            </top:cancelReason>
            <top:firmStatusLookupCode>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Firmstatuslookupcode/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Firmstatuslookupcode"/>
            </top:firmStatusLookupCode>
            <top:firmDate>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Firmdate/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Firmdate"/>
            </top:firmDate>
            <top:vendorProductNum>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Vendorproductnum/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Vendorproductnum"/>
            </top:vendorProductNum>
            <top:contractNum>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Contractnum/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Contractnum"/>
            </top:contractNum>
            <top:taxableFlag>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Taxableflag/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Taxableflag"/>
            </top:taxableFlag>
            <top:taxName>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Taxname/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Taxname"/>
            </top:taxName>
            <top:type1099>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Type1099/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Type1099"/>
            </top:type1099>
            <top:capitalExpenseFlag>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Capitalexpenseflag/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Capitalexpenseflag"/>
            </top:capitalExpenseFlag>
            <top:negotiatedByPreparerFlag>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Negotiatedbypreparerflag/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Negotiatedbypreparerflag"/>
            </top:negotiatedByPreparerFlag>
            <top:attributeCategory>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Shipmentattributecategory/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Shipmentattributecategory"/>
            </top:attributeCategory>
            <top:attribute1>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Shipmentattribute1/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Shipmentattribute1"/>
            </top:attribute1>
            <top:attribute2>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Shipmentattribute2/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Shipmentattribute2"/>
            </top:attribute2>
            <top:attribute3>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Shipmentattribute3/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Shipmentattribute3"/>
            </top:attribute3>
            <top:attribute4>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Shipmentattribute4/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Shipmentattribute4"/>
            </top:attribute4>
            <top:attribute5>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Shipmentattribute5/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Shipmentattribute5"/>
            </top:attribute5>
            <top:attribute6>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Shipmentattribute6/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Shipmentattribute6"/>
            </top:attribute6>
            <top:attribute7>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Shipmentattribute7/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Shipmentattribute7"/>
            </top:attribute7>
            <top:attribute8>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Shipmentattribute8/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Shipmentattribute8"/>
            </top:attribute8>
            <top:attribute9>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Shipmentattribute9/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Shipmentattribute9"/>
            </top:attribute9>
            <top:attribute10>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Shipmentattribute10/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Shipmentattribute10"/>
            </top:attribute10>
            <top:referenceNum>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Referencenum/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Referencenum"/>
            </top:referenceNum>
            <top:attribute11>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Shipmentattribute11/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Shipmentattribute11"/>
            </top:attribute11>
            <top:attribute12>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Shipmentattribute12/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Shipmentattribute12"/>
            </top:attribute12>
            <top:attribute13>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Shipmentattribute13/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Shipmentattribute13"/>
            </top:attribute13>
            <top:attribute14>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Shipmentattribute14/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Shipmentattribute14"/>
            </top:attribute14>
            <top:attribute15>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Shipmentattribute15/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Shipmentattribute15"/>
            </top:attribute15>
            <top:minReleaseAmount>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Minreleaseamount/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Minreleaseamount"/>
            </top:minReleaseAmount>
            <top:priceTypeLookupCode>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Pricetypelookupcode/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Pricetypelookupcode"/>
            </top:priceTypeLookupCode>
            <top:closedCode>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Closedcode/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Closedcode"/>
            </top:closedCode>
            <top:priceBreakLookupCode>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Pricebreaklookupcode/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Pricebreaklookupcode"/>
            </top:priceBreakLookupCode>
            <top:ussglTransactionCode>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Ussgltransactioncode/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Ussgltransactioncode"/>
            </top:ussglTransactionCode>
            <top:governmentContext>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Governmentcontext/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Governmentcontext"/>
            </top:governmentContext>
            <top:requestId>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Requestid/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Requestid"/>
            </top:requestId>
            <top:programApplicationId>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Programapplicationid/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Programapplicationid"/>
            </top:programApplicationId>
            <top:programId>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Programid/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Programid"/>
            </top:programId>
            <top:programUpdateDate>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Programupdatedate/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Programupdatedate"/>
            </top:programUpdateDate>
            <top:closedDate>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Closeddate/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Closeddate"/>
            </top:closedDate>
            <top:closedReason>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Closedreason/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Closedreason"/>
            </top:closedReason>
            <top:closedBy>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Closedby/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Closedby"/>
            </top:closedBy>
            <top:transactionReasonCode>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Transactionreasoncode/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Transactionreasoncode"/>
            </top:transactionReasonCode>
            <top:orgId>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Orgid/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Orgid"/>
            </top:orgId>
            <top:qcGrade>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Qcgrade/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Qcgrade"/>
            </top:qcGrade>
            <top:baseUom>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Baseuom/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Baseuom"/>
            </top:baseUom>
            <top:baseQty>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Baseqty/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Baseqty"/>
            </top:baseQty>
            <top:secondaryUom>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Secondaryuom/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Secondaryuom"/>
            </top:secondaryUom>
            <top:secondaryQty>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Secondaryqty/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Secondaryqty"/>
            </top:secondaryQty>
            <top:globalAttributeCategory>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Globalattributecategory/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Globalattributecategory"/>
            </top:globalAttributeCategory>
            <top:globalAttribute1>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Globalattribute1/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Globalattribute1"/>
            </top:globalAttribute1>
            <top:globalAttribute2>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Globalattribute2/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Globalattribute2"/>
            </top:globalAttribute2>
            <top:globalAttribute3>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Globalattribute3/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Globalattribute3"/>
            </top:globalAttribute3>
            <top:globalAttribute4>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Globalattribute4/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Globalattribute4"/>
            </top:globalAttribute4>
            <top:globalAttribute5>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Globalattribute5/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Globalattribute5"/>
            </top:globalAttribute5>
            <top:globalAttribute6>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Globalattribute6/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Globalattribute6"/>
            </top:globalAttribute6>
            <top:globalAttribute7>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Globalattribute7/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Globalattribute7"/>
            </top:globalAttribute7>
            <top:globalAttribute8>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Globalattribute8/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Globalattribute8"/>
            </top:globalAttribute8>
            <top:globalAttribute9>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Globalattribute9/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Globalattribute9"/>
            </top:globalAttribute9>
            <top:globalAttribute10>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Globalattribute10/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Globalattribute10"/>
            </top:globalAttribute10>
            <top:globalAttribute11>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Globalattribute11/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Globalattribute11"/>
            </top:globalAttribute11>
            <top:globalAttribute12>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Globalattribute12/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Globalattribute12"/>
            </top:globalAttribute12>
            <top:globalAttribute13>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Globalattribute13/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Globalattribute13"/>
            </top:globalAttribute13>
            <top:globalAttribute14>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Globalattribute14/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Globalattribute14"/>
            </top:globalAttribute14>
            <top:globalAttribute15>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Globalattribute15/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Globalattribute15"/>
            </top:globalAttribute15>
            <top:globalAttribute16>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Globalattribute16/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Globalattribute16"/>
            </top:globalAttribute16>
            <top:globalAttribute17>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Globalattribute17/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Globalattribute17"/>
            </top:globalAttribute17>
            <top:globalAttribute18>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Globalattribute18/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Globalattribute18"/>
            </top:globalAttribute18>
            <top:globalAttribute19>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Globalattribute19/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Globalattribute19"/>
            </top:globalAttribute19>
            <top:globalAttribute20>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Globalattribute20/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Globalattribute20"/>
            </top:globalAttribute20>
            <top:lineReferenceNum>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Linereferencenum/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Linereferencenum"/>
            </top:lineReferenceNum>
            <top:expirationDate>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Expirationdate/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Expirationdate"/>
            </top:expirationDate>
            <top:taxCodeId>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Taxcodeid/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Taxcodeid"/>
            </top:taxCodeId>
            <top:okeContractHeaderId>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Okecontractheaderid/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Okecontractheaderid"/>
            </top:okeContractHeaderId>
            <top:okeContractVersionId>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Okecontractversionid/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Okecontractversionid"/>
            </top:okeContractVersionId>
            <top:secondaryQuantity>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Secondaryquantity/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Secondaryquantity"/>
            </top:secondaryQuantity>
            <top:secondaryUnitOfMeasure>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Secondaryunitofmeasure/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Secondaryunitofmeasure"/>
            </top:secondaryUnitOfMeasure>
            <top:preferredGrade>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Preferredgrade/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Preferredgrade"/>
            </top:preferredGrade>
            <top:auctionHeaderId>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Auctionheaderid/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Auctionheaderid"/>
            </top:auctionHeaderId>
            <top:auctionDisplayNumber>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Auctiondisplaynumber/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Auctiondisplaynumber"/>
            </top:auctionDisplayNumber>
            <top:auctionLineNumber>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Auctionlinenumber/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Auctionlinenumber"/>
            </top:auctionLineNumber>
            <top:bidNumber>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Bidnumber/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Bidnumber"/>
            </top:bidNumber>
            <top:bidLineNumber>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Bidlinenumber/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Bidlinenumber"/>
            </top:bidLineNumber>
            <top:fromLineLocationId>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Fromlinelocationid/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Fromlinelocationid"/>
            </top:fromLineLocationId>
            <top:supplierRefNumber>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Supplierrefnumber/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Supplierrefnumber"/>
            </top:supplierRefNumber>
            <top:contractId>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Contractid/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Contractid"/>
            </top:contractId>
            <top:startDate>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Startdate/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Startdate"/>
            </top:startDate>
            <top:amount>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Amount/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Amount"/>
            </top:amount>
            <top:jobId>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Jobid/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Jobid"/>
            </top:jobId>
            <top:contractorFirstName>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Contractorfirstname/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Contractorfirstname"/>
            </top:contractorFirstName>
            <top:contractorLastName>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Contractorlastname/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Contractorlastname"/>
            </top:contractorLastName>
            <top:orderTypeLookupCode>
              <xsl:value-of select="ns3:Ordertypelookupcode"/>
            </top:orderTypeLookupCode>
            <top:purchaseBasis>
              <xsl:value-of select="ns3:Purchasebasis"/>
            </top:purchaseBasis>
            <top:matchingBasis>
              <xsl:value-of select="ns3:Matchingbasis"/>
            </top:matchingBasis>
            <top:baseUnitPrice>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Baseunitprice/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Baseunitprice"/>
            </top:baseUnitPrice>
            <top:manualPriceChangeFlag>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Manualpricechangeflag/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Manualpricechangeflag"/>
            </top:manualPriceChangeFlag>
            <top:retainageRate>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Retainagerate/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Retainagerate"/>
            </top:retainageRate>
            <top:maxRetainageAmount>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Maxretainageamount/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Maxretainageamount"/>
            </top:maxRetainageAmount>
            <top:progressPaymentRate>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Progresspaymentrate/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Progresspaymentrate"/>
            </top:progressPaymentRate>
            <top:recoupmentRate>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Recoupmentrate/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Recoupmentrate"/>
            </top:recoupmentRate>
            <top:catalogName>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Catalogname/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Catalogname"/>
            </top:catalogName>
            <top:supplierPartAuxid>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Supplierpartauxid/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Supplierpartauxid"/>
            </top:supplierPartAuxid>
            <top:ipCategoryId>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Ipcategoryid/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Ipcategoryid"/>
            </top:ipCategoryId>
            <top:lineNumDisplay>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Linenum/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Linenum"/>
            </top:lineNumDisplay>
            <top:clmBaseLineNum>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Linenum/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Linenum"/>
            </top:clmBaseLineNum>
            <top:udaTemplateId>
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns3:Templateid/@xsi:nil"/>
              </xsl:attribute>
              <xsl:value-of select="ns3:Templateid"/>
            </top:udaTemplateId>
            <top:poLineLocationsAll>
              <top:lastUpdateLogin>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Lastupdatelogin/@xsi:nil"/>
                </xsl:attribute>
              </top:lastUpdateLogin>
              <top:creationDate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Creationdate/@xsi:nil"/>
                </xsl:attribute>
              </top:creationDate>
              <top:createdBy>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Createdby/@xsi:nil"/>
                </xsl:attribute>
              </top:createdBy>
              <top:quantity>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Quantity/@xsi:nil"/>
                </xsl:attribute>
              </top:quantity>
              <top:unitMeasLookupCode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Unitmeaslookupcode/@xsi:nil"/>
                </xsl:attribute>
              </top:unitMeasLookupCode>
              <top:poReleaseId>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Poreleaseid/@xsi:nil"/>
                </xsl:attribute>
              </top:poReleaseId>
              <top:shipToLocationId>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Shiptolocationid/@xsi:nil"/>
                </xsl:attribute>
              </top:shipToLocationId>
              <top:needByDate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Needbydate/@xsi:nil"/>
                </xsl:attribute>
              </top:needByDate>
              <top:promisedDate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Promiseddate/@xsi:nil"/>
                </xsl:attribute>
              </top:promisedDate>
              <top:taxableFlag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Taxableflag/@xsi:nil"/>
                </xsl:attribute>
              </top:taxableFlag>
              <top:taxName>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Taxname/@xsi:nil"/>
                </xsl:attribute>
              </top:taxName>
              <top:fromHeaderId>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Fromheaderid/@xsi:nil"/>
                </xsl:attribute>
              </top:fromHeaderId>
              <top:fromLineId>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Fromlineid/@xsi:nil"/>
                </xsl:attribute>
              </top:fromLineId>
              <top:fromLineLocationId>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Fromlinelocationid/@xsi:nil"/>
                </xsl:attribute>
              </top:fromLineLocationId>
              <top:startDate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Startdate/@xsi:nil"/>
                </xsl:attribute>
              </top:startDate>
              <top:leadTime>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Leadtime/@xsi:nil"/>
                </xsl:attribute>
              </top:leadTime>
              <top:leadTimeUnit>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Leadtimeunit/@xsi:nil"/>
                </xsl:attribute>
              </top:leadTimeUnit>
              <top:priceDiscount>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Pricediscount/@xsi:nil"/>
                </xsl:attribute>
              </top:priceDiscount>
              <top:termsId>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Termsid/@xsi:nil"/>
                </xsl:attribute>
              </top:termsId>
              <top:closedFlag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Closedflag/@xsi:nil"/>
                </xsl:attribute>
              </top:closedFlag>
              <top:cancelFlag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Cancelflag/@xsi:nil"/>
                </xsl:attribute>
              </top:cancelFlag>
              <top:cancelledBy>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Cancelledby/@xsi:nil"/>
                </xsl:attribute>
              </top:cancelledBy>
              <top:cancelDate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Canceldate/@xsi:nil"/>
                </xsl:attribute>
              </top:cancelDate>
              <top:cancelReason>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Cancelreason/@xsi:nil"/>
                </xsl:attribute>
              </top:cancelReason>
              <top:firmStatusLookupCode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Firmstatuslookupcode/@xsi:nil"/>
                </xsl:attribute>
              </top:firmStatusLookupCode>
              <top:firmDate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Firmdate/@xsi:nil"/>
                </xsl:attribute>
              </top:firmDate>
              <top:inspectionRequiredFlag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Inspectionrequiredflag/@xsi:nil"/>
                </xsl:attribute>
              </top:inspectionRequiredFlag>
              <top:receiptRequiredFlag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Receiptrequiredflag/@xsi:nil"/>
                </xsl:attribute>
              </top:receiptRequiredFlag>
              <top:qtyRcvTolerance>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Qtyrcvtolerance/@xsi:nil"/>
                </xsl:attribute>
              </top:qtyRcvTolerance>
              <top:qtyRcvExceptionCode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Qtyrcvexceptioncode/@xsi:nil"/>
                </xsl:attribute>
              </top:qtyRcvExceptionCode>
              <top:enforceShipToLocationCode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Enforceshiptolocationcode/@xsi:nil"/>
                </xsl:attribute>
              </top:enforceShipToLocationCode>
              <top:allowSubstituteReceiptsFlag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Allowsubstitutereceiptsflag/@xsi:nil"/>
                </xsl:attribute>
              </top:allowSubstituteReceiptsFlag>
              <top:daysEarlyReceiptAllowed>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Daysearlyreceiptallowed/@xsi:nil"/>
                </xsl:attribute>
              </top:daysEarlyReceiptAllowed>
              <top:daysLateReceiptAllowed>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Dayslatereceiptallowed/@xsi:nil"/>
                </xsl:attribute>
              </top:daysLateReceiptAllowed>
              <top:receiptDaysExceptionCode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Receiptdaysexceptioncode/@xsi:nil"/>
                </xsl:attribute>
              </top:receiptDaysExceptionCode>
              <top:invoiceCloseTolerance>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Invoiceclosetolerance/@xsi:nil"/>
                </xsl:attribute>
              </top:invoiceCloseTolerance>
              <top:receiveCloseTolerance>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Receiveclosetolerance/@xsi:nil"/>
                </xsl:attribute>
              </top:receiveCloseTolerance>
              <top:shipToOrganizationId>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Shiptoorganizationid/@xsi:nil"/>
                </xsl:attribute>
              </top:shipToOrganizationId>
              <top:shipmentNum>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Shipmentnum/@xsi:nil"/>
                </xsl:attribute>
              </top:shipmentNum>
              <top:sourceShipmentId>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Sourceshipmentid/@xsi:nil"/>
                </xsl:attribute>
              </top:sourceShipmentId>
              <top:closedCode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Closedcode/@xsi:nil"/>
                </xsl:attribute>
              </top:closedCode>
              <top:requestId>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Requestid/@xsi:nil"/>
                </xsl:attribute>
              </top:requestId>
              <top:programApplicationId>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Programapplicationid/@xsi:nil"/>
                </xsl:attribute>
              </top:programApplicationId>
              <top:programId>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Programid/@xsi:nil"/>
                </xsl:attribute>
              </top:programId>
              <top:programUpdateDate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Programupdatedate/@xsi:nil"/>
                </xsl:attribute>
              </top:programUpdateDate>
              <top:ussglTransactionCode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Ussgltransactioncode/@xsi:nil"/>
                </xsl:attribute>
              </top:ussglTransactionCode>
              <top:governmentContext>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Governmentcontext/@xsi:nil"/>
                </xsl:attribute>
              </top:governmentContext>
              <top:receivingRoutingId>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Receivingroutingid/@xsi:nil"/>
                </xsl:attribute>
              </top:receivingRoutingId>
              <top:accrueOnReceiptFlag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Accrueonreceiptflag/@xsi:nil"/>
                </xsl:attribute>
              </top:accrueOnReceiptFlag>
              <top:closedReason>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Closedreason/@xsi:nil"/>
                </xsl:attribute>
              </top:closedReason>
              <top:closedDate>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Closeddate/@xsi:nil"/>
                </xsl:attribute>
              </top:closedDate>
              <top:closedBy>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Closedby/@xsi:nil"/>
                </xsl:attribute>
              </top:closedBy>
              <top:orgId>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Orgid/@xsi:nil"/>
                </xsl:attribute>
              </top:orgId>
              <top:globalAttributeCategory>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Globalattributecategory/@xsi:nil"/>
                </xsl:attribute>
              </top:globalAttributeCategory>
              <top:globalAttribute1>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Globalattribute1/@xsi:nil"/>
                </xsl:attribute>
              </top:globalAttribute1>
              <top:globalAttribute2>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Globalattribute2/@xsi:nil"/>
                </xsl:attribute>
              </top:globalAttribute2>
              <top:globalAttribute3>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Globalattribute3/@xsi:nil"/>
                </xsl:attribute>
              </top:globalAttribute3>
              <top:globalAttribute4>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Globalattribute4/@xsi:nil"/>
                </xsl:attribute>
              </top:globalAttribute4>
              <top:globalAttribute5>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Globalattribute5/@xsi:nil"/>
                </xsl:attribute>
              </top:globalAttribute5>
              <top:globalAttribute6>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Globalattribute6/@xsi:nil"/>
                </xsl:attribute>
              </top:globalAttribute6>
              <top:globalAttribute7>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Globalattribute7/@xsi:nil"/>
                </xsl:attribute>
              </top:globalAttribute7>
              <top:globalAttribute8>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Globalattribute8/@xsi:nil"/>
                </xsl:attribute>
              </top:globalAttribute8>
              <top:globalAttribute9>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Globalattribute9/@xsi:nil"/>
                </xsl:attribute>
              </top:globalAttribute9>
              <top:globalAttribute10>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Globalattribute10/@xsi:nil"/>
                </xsl:attribute>
              </top:globalAttribute10>
              <top:globalAttribute11>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Globalattribute11/@xsi:nil"/>
                </xsl:attribute>
              </top:globalAttribute11>
              <top:globalAttribute12>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Globalattribute12/@xsi:nil"/>
                </xsl:attribute>
              </top:globalAttribute12>
              <top:globalAttribute13>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Globalattribute13/@xsi:nil"/>
                </xsl:attribute>
              </top:globalAttribute13>
              <top:globalAttribute14>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Globalattribute14/@xsi:nil"/>
                </xsl:attribute>
              </top:globalAttribute14>
              <top:globalAttribute15>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Globalattribute15/@xsi:nil"/>
                </xsl:attribute>
              </top:globalAttribute15>
              <top:globalAttribute16>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Globalattribute16/@xsi:nil"/>
                </xsl:attribute>
              </top:globalAttribute16>
              <top:globalAttribute17>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Globalattribute17/@xsi:nil"/>
                </xsl:attribute>
              </top:globalAttribute17>
              <top:globalAttribute18>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Globalattribute18/@xsi:nil"/>
                </xsl:attribute>
              </top:globalAttribute18>
              <top:globalAttribute19>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Globalattribute19/@xsi:nil"/>
                </xsl:attribute>
              </top:globalAttribute19>
              <top:globalAttribute20>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Globalattribute20/@xsi:nil"/>
                </xsl:attribute>
              </top:globalAttribute20>
              <top:taxUserOverrideFlag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Taxuseroverrideflag/@xsi:nil"/>
                </xsl:attribute>
              </top:taxUserOverrideFlag>
              <top:taxCodeId>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Taxcodeid/@xsi:nil"/>
                </xsl:attribute>
              </top:taxCodeId>
              <top:noteToReceiver>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Notetoreceiver/@xsi:nil"/>
                </xsl:attribute>
              </top:noteToReceiver>
              <top:secondaryQuantity>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Secondaryquantity/@xsi:nil"/>
                </xsl:attribute>
              </top:secondaryQuantity>
              <top:secondaryUnitOfMeasure>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Secondaryunitofmeasure/@xsi:nil"/>
                </xsl:attribute>
              </top:secondaryUnitOfMeasure>
              <top:preferredGrade>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Preferredgrade/@xsi:nil"/>
                </xsl:attribute>
              </top:preferredGrade>
              <top:vmiFlag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Vmiflag/@xsi:nil"/>
                </xsl:attribute>
              </top:vmiFlag>
              <top:consignedFlag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Consignedflag/@xsi:nil"/>
                </xsl:attribute>
              </top:consignedFlag>
              <top:amount>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Amount/@xsi:nil"/>
                </xsl:attribute>
              </top:amount>
              <top:dropShipFlag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Dropshipflag/@xsi:nil"/>
                </xsl:attribute>
              </top:dropShipFlag>
              <top:transactionFlowHeaderId>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Transactionflowheaderid/@xsi:nil"/>
                </xsl:attribute>
              </top:transactionFlowHeaderId>
              <top:manualPriceChangeFlag>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Manualpricechangeflag/@xsi:nil"/>
                </xsl:attribute>
              </top:manualPriceChangeFlag>
              <top:matchingBasis>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns3:Matchingbasis/@xsi:nil"/>
                </xsl:attribute>
              </top:matchingBasis>
              <top:poDistributionsAll>
                <top:poDistributionId>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Podistributionid"/>
                </top:poDistributionId>
                <top:lastUpdateDate>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Lastupdatedate"/>
                </top:lastUpdateDate>
                <top:lastUpdatedBy>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Lastupdatedby"/>
                </top:lastUpdatedBy>
                <top:poHeaderId>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Poheaderid"/>
                </top:poHeaderId>
                <top:poLineId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Polineid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Polineid"/>
                </top:poLineId>
                <top:setOfBooksId>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Setofbooksid"/>
                </top:setOfBooksId>
                <top:codeCombinationId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Codecombinationid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Codecombinationid"/>
                </top:codeCombinationId>
                <top:quantityOrdered>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Quantityordered/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Quantityordered"/>
                </top:quantityOrdered>
                <top:lastUpdateLogin>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Lastupdatelogin/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Lastupdatelogin"/>
                </top:lastUpdateLogin>
                <top:creationDate>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Creationdate/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Creationdate"/>
                </top:creationDate>
                <top:createdBy>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Createdby/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Createdby"/>
                </top:createdBy>
                <top:poReleaseId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Poreleaseid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Poreleaseid"/>
                </top:poReleaseId>
                <top:quantityDelivered>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Quantitydelivered/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Quantitydelivered"/>
                </top:quantityDelivered>
                <top:quantityBilled>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Quantitybilled/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Quantitybilled"/>
                </top:quantityBilled>
                <top:quantityCancelled>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Quantitycancelled/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Quantitycancelled"/>
                </top:quantityCancelled>
                <top:reqHeaderReferenceNum>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Reqheaderreferencenum/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Reqheaderreferencenum"/>
                </top:reqHeaderReferenceNum>
                <top:reqLineReferenceNum>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Reqlinereferencenum/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Reqlinereferencenum"/>
                </top:reqLineReferenceNum>
                <!--top:reqDistributionId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Reqdistributionid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Reqdistributionid"/>
                </top:reqDistributionId-->
                <top:deliverToLocationId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Delivertolocationid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Delivertolocationid"/>
                </top:deliverToLocationId>
                <top:deliverToPersonId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Delivertopersonid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Delivertopersonid"/>
                </top:deliverToPersonId>
                <top:rateDate>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Ratedate/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Ratedate"/>
                </top:rateDate>
                <top:rate>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Rate/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Rate"/>
                </top:rate>
                <top:amountBilled>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Amountbilled/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Amountbilled"/>
                </top:amountBilled>
                <top:accruedFlag>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Accruedflag/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Accruedflag"/>
                </top:accruedFlag>
                <top:encumberedFlag>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Encumberedflag/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Encumberedflag"/>
                </top:encumberedFlag>
                <top:encumberedAmount>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Encumberedamount/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Encumberedamount"/>
                </top:encumberedAmount>
                <top:unencumberedQuantity>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Unencumberedquantity/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Unencumberedquantity"/>
                </top:unencumberedQuantity>
                <top:unencumberedAmount>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Unencumberedamount/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Unencumberedamount"/>
                </top:unencumberedAmount>
                <top:failedFundsLookupCode>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Failedfundslookupcode/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Failedfundslookupcode"/>
                </top:failedFundsLookupCode>
                <top:glEncumberedDate>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Glencumbereddate/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Glencumbereddate"/>
                </top:glEncumberedDate>
                <top:glEncumberedPeriodName>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Glencumberedperiodname/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Glencumberedperiodname"/>
                </top:glEncumberedPeriodName>
                <top:glCancelledDate>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Glcancelleddate/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Glcancelleddate"/>
                </top:glCancelledDate>
                <top:destinationTypeCode>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Destinationtypecode/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Destinationtypecode"/>
                </top:destinationTypeCode>
                <top:destinationOrganizationId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Destinationorganizationid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Destinationorganizationid"/>
                </top:destinationOrganizationId>
                <top:destinationSubinventory>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Destinationsubinventory/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Destinationsubinventory"/>
                </top:destinationSubinventory>
                <top:attributeCategory>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:DistDFF/ns2:AttributeCategory/@xsi:nil"/>
                  </xsl:attribute>
                </top:attributeCategory>
                <top:attribute1>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:DistDFF/ns2:Attribute1/@xsi:nil"/>
                  </xsl:attribute>
                </top:attribute1>
                <top:attribute2>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:DistDFF/ns2:Attribute2/@xsi:nil"/>
                  </xsl:attribute>
                </top:attribute2>
                <top:attribute3>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:DistDFF/ns2:Attribute3/@xsi:nil"/>
                  </xsl:attribute>
                </top:attribute3>
                <top:attribute4>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:DistDFF/ns2:Attribute4/@xsi:nil"/>
                  </xsl:attribute>
                </top:attribute4>
                <top:attribute5>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:DistDFF/ns2:Attribute5/@xsi:nil"/>
                  </xsl:attribute>
                </top:attribute5>
                <top:attribute6>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:DistDFF/ns2:Attribute6/@xsi:nil"/>
                  </xsl:attribute>
                </top:attribute6>
                <top:attribute7>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:DistDFF/ns2:Attribute7/@xsi:nil"/>
                  </xsl:attribute>
                </top:attribute7>
                <top:attribute8>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:DistDFF/ns2:Attribute8/@xsi:nil"/>
                  </xsl:attribute>
                </top:attribute8>
                <top:attribute9>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:DistDFF/ns2:Attribute9/@xsi:nil"/>
                  </xsl:attribute>
                </top:attribute9>
                <top:attribute10>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:DistDFF/ns2:Attribute10/@xsi:nil"/>
                  </xsl:attribute>
                </top:attribute10>
                <top:attribute11>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:DistDFF/ns2:Attribute11/@xsi:nil"/>
                  </xsl:attribute>
                </top:attribute11>
                <top:attribute12>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:DistDFF/ns2:Attribute12/@xsi:nil"/>
                  </xsl:attribute>
                </top:attribute12>
                <top:attribute13>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:DistDFF/ns2:Attribute13/@xsi:nil"/>
                  </xsl:attribute>
                </top:attribute13>
                <top:attribute14>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:DistDFF/ns2:Attribute14/@xsi:nil"/>
                  </xsl:attribute>
                </top:attribute14>
                <top:attribute15>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:DistDFF/ns2:Attribute15/@xsi:nil"/>
                  </xsl:attribute>
                </top:attribute15>
                <top:wipEntityId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Wipentityid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Wipentityid"/>
                </top:wipEntityId>
                <top:wipOperationSeqNum>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Wipoperationseqnum/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Wipoperationseqnum"/>
                </top:wipOperationSeqNum>
                <top:wipResourceSeqNum>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Wipresourceseqnum/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Wipresourceseqnum"/>
                </top:wipResourceSeqNum>
                <top:wipRepetitiveScheduleId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Wiprepetitivescheduleid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Wiprepetitivescheduleid"/>
                </top:wipRepetitiveScheduleId>
                <top:wipLineId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Wiplineid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Wiplineid"/>
                </top:wipLineId>
                <top:bomResourceId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Bomresourceid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Bomresourceid"/>
                </top:bomResourceId>
                <top:budgetAccountId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Budgetaccountid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Budgetaccountid"/>
                </top:budgetAccountId>
                <top:accrualAccountId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Accrualaccountid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Accrualaccountid"/>
                </top:accrualAccountId>
                <top:varianceAccountId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Varianceaccountid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Varianceaccountid"/>
                </top:varianceAccountId>
                <top:preventEncumbranceFlag>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Preventencumbranceflag/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Preventencumbranceflag"/>
                </top:preventEncumbranceFlag>
                <top:ussglTransactionCode>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Ussgltransactioncode/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Ussgltransactioncode"/>
                </top:ussglTransactionCode>
                <top:governmentContext>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Governmentcontext/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Governmentcontext"/>
                </top:governmentContext>
                <top:destinationContext>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Destinationcontext/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Destinationcontext"/>
                </top:destinationContext>
                <top:distributionNum>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Distributionnum"/>
                </top:distributionNum>
                <top:sourceDistributionId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Sourcedistributionid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Sourcedistributionid"/>
                </top:sourceDistributionId>
                <top:requestId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Requestid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Requestid"/>
                </top:requestId>
                <top:programApplicationId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Programapplicationid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Programapplicationid"/>
                </top:programApplicationId>
                <top:programId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Programid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Programid"/>
                </top:programId>
                <top:programUpdateDate>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Programupdatedate/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Programupdatedate"/>
                </top:programUpdateDate>
                <top:projectId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Projectid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Projectid"/>
                </top:projectId>
                <top:taskId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Taskid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Taskid"/>
                </top:taskId>
                <top:expenditureType>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Expendituretype/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Expendituretype"/>
                </top:expenditureType>
                <top:projectAccountingContext>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Projectaccountingcontext/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Projectaccountingcontext"/>
                </top:projectAccountingContext>
                <top:expenditureOrganizationId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Expenditureorganizationid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Expenditureorganizationid"/>
                </top:expenditureOrganizationId>
                <top:glClosedDate>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Glcloseddate/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Glcloseddate"/>
                </top:glClosedDate>
                <top:accrueOnReceiptFlag>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Accrueonreceiptflag/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Accrueonreceiptflag"/>
                </top:accrueOnReceiptFlag>
                <top:expenditureItemDate>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Expenditureitemdate/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Expenditureitemdate"/>
                </top:expenditureItemDate>
                <top:orgId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Orgid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Orgid"/>
                </top:orgId>
                <top:awardId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Awardid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Awardid"/>
                </top:awardId>
                <top:mrcRateDate>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Ratedate/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Ratedate"/>
                </top:mrcRateDate>
                <top:mrcRate>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Rate/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Rate"/>
                </top:mrcRate>
                <top:mrcEncumberedAmount>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Encumberedamount/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Encumberedamount"/>
                </top:mrcEncumberedAmount>
                <top:mrcUnencumberedAmount>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Encumberedamount/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Encumberedamount"/>
                </top:mrcUnencumberedAmount>
                <top:endItemUnitNumber>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Enditemunitnumber/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Enditemunitnumber"/>
                </top:endItemUnitNumber>
                <top:taxRecoveryOverrideFlag>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Taxrecoveryoverrideflag/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Taxrecoveryoverrideflag"/>
                </top:taxRecoveryOverrideFlag>
                <top:recoverableTax>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Recoverabletax/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Recoverabletax"/>
                </top:recoverableTax>
                <top:nonrecoverableTax>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Nonrecoverabletax/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Nonrecoverabletax"/>
                </top:nonrecoverableTax>
                <top:recoveryRate>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Recoveryrate/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Recoveryrate"/>
                </top:recoveryRate>
                <top:okeContractLineId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Okecontractlineid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Okecontractlineid"/>
                </top:okeContractLineId>
                <top:okeContractDeliverableId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Okecontractdeliverableid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Okecontractdeliverableid"/>
                </top:okeContractDeliverableId>
                <top:amountOrdered>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Amountordered/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Amountordered"/>
                </top:amountOrdered>
                <top:amountDelivered>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Amountdelivered/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Amountdelivered"/>
                </top:amountDelivered>
                <top:amountCancelled>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Amountcancelled/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Amountcancelled"/>
                </top:amountCancelled>
                <top:distributionType>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Distributiontype/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Distributiontype"/>
                </top:distributionType>
                <top:amountToEncumber>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Amounttoencumber/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Amounttoencumber"/>
                </top:amountToEncumber>
                <top:invoiceAdjustmentFlag>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Invoiceadjustmentflag/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Invoiceadjustmentflag"/>
                </top:invoiceAdjustmentFlag>
                <top:destChargeAccountId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Destchargeaccountid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Destchargeaccountid"/>
                </top:destChargeAccountId>
                <top:destVarianceAccountId>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Destvarianceaccountid/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Destvarianceaccountid"/>
                </top:destVarianceAccountId>
                <top:interfaceDistributionRef>
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Interfacedistributionref/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns3:ListOfPurchaseOrderDistLines/ns3:PurchaseOrderDistLines/ns3:Interfacedistributionref"/>
                </top:interfaceDistributionRef>
              </top:poDistributionsAll>
            </top:poLineLocationsAll>
          </top:PoLinesAll>
        </xsl:for-each>
      </top:poLinesAllCollection>
      <top:hrOperatingUnits>
        <top:organizationId>
          <xsl:value-of select="/poam:QueryPurchaseOrderRequestMessage/poam:PurchaseOrder/ns3:Orgid"/>
        </top:organizationId>
      </top:hrOperatingUnits>
    </top:PoHeadersAll>
  </xsl:template>
</xsl:stylesheet>