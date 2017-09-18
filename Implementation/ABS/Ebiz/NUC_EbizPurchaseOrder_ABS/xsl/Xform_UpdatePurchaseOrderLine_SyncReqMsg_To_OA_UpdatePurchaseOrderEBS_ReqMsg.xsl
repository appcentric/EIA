<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:eia="http://xmlns.eia.com/extensions/1.0"
                xmlns:tns="http://xmlns.eia.com/ABS/EBiz/PurchaseOrderABS/1.0"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ns1="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:poam="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderABM/1.0"
                xmlns:ns3="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:ns5="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns0="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns11="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:common="http://schemas.oracle.com/service/bpel/common"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ns2="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:ns4="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:ns9="http://xmlns.oracle.com/pcbpel/adapter/apps/WI_Application/NUC_EbizPurchaseOrder_ABS/OA_UpdatePurchaseOrderEBS"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/sp/OA_UpdatePurchaseOrderEBS"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns6="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:ns10="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns8="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderAO/1.0"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl tns ns1 poam ns3 ns5 soap12 soap wsdl mime core ns0 ns11 common ns2 ns4 xsd ns7 ns6 ns10 ns8 plt ns9 db bpws xp20 eia bpel bpm utl ora socket mhdr oraext dvm hwf med ids xdk xref ldap"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:ns12="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns13="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns14="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns15="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns16="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/PurchaseOrderABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="UpdatePurchaseOrderLineRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderABM/1.0"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/EO/common/V1.0/XSLParameters.xsd"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="POCounterParams"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../OA_UpdatePurchaseOrderEBS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="InputParameters"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/sp/OA_UpdatePurchaseOrderEBS"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <oracle-xsl-mapper:mapShowPrefixes type="true"/>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED SEP 09 14:05:50 CDT 2015].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="POCounterParams"/>
  <xsl:template match="/">
    <db:InputParameters>
      <xsl:variable name="varPOLineCounter"
                    select='$POCounterParams/common:parameters/common:item[(common:name = "POLineCounter")]/common:value'/>
      <xsl:variable name="varPOCounter"
                    select='$POCounterParams/common:parameters/common:item[(common:name = "POCounter")]/common:value'/>
      <db:X_PO_NUMBER>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:UpdatePurchaseOrderLineRequestMessage/poam:ListOfPurchaseOrders/ns8:PurchaseOrder[ns8:Documentnum=$varPOCounter]/ns8:Segment1/@xsi:nil"/>
          <!--xsl:value-of select="$varPOLineCounter"/-->
        </xsl:attribute>
        <xsl:value-of select="/poam:UpdatePurchaseOrderLineRequestMessage/poam:ListOfPurchaseOrders/ns8:PurchaseOrder[ns8:Documentnum=$varPOCounter]/ns8:Documentnum"/>
      </db:X_PO_NUMBER>
      <db:X_RELEASE_NUMBER>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:UpdatePurchaseOrderLineRequestMessage/poam:ListOfPurchaseOrders/ns8:PurchaseOrder[ns8:Documentnum=$varPOCounter]/ns8:Releasenum/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:UpdatePurchaseOrderLineRequestMessage/poam:ListOfPurchaseOrders/ns8:PurchaseOrder[ns8:Documentnum=$varPOCounter]/ns8:Releasenum"/>
      </db:X_RELEASE_NUMBER>
      <db:X_REVISION_NUMBER>
        <!--xsl:value-of select="/poam:UpdatePurchaseOrderLineRequestMessage/poam:ListOfPurchaseOrders/ns8:PurchaseOrder/ns8:Revisionnum"/-->
        <xsl:value-of select="oraext:query-database(concat(&quot;select revision_num from po_headers_all where org_id = '&quot;,/poam:UpdatePurchaseOrderLineRequestMessage/poam:ListOfPurchaseOrders/ns8:PurchaseOrder[ns8:Documentnum=$varPOCounter]/ns8:Orgid,&quot;'&quot;,&quot; and segment1 ='&quot;,/poam:UpdatePurchaseOrderLineRequestMessage/poam:ListOfPurchaseOrders/ns8:PurchaseOrder[ns8:Documentnum=$varPOCounter]/ns8:Documentnum,&quot;'&quot;),false(),false(),&quot;jdbc/ebsapps&quot;)"/>
      </db:X_REVISION_NUMBER>
      <db:X_LINE_NUMBER>
        <xsl:value-of select="/poam:UpdatePurchaseOrderLineRequestMessage/poam:ListOfPurchaseOrders/ns8:PurchaseOrder[ns8:Documentnum=$varPOCounter]/ns8:ListOfPurchaseOrderLines/ns8:PurchaseOrderLine[ns8:Linenum=$varPOLineCounter]/ns8:Linenum"/>
      </db:X_LINE_NUMBER>
      <db:X_SHIPMENT_NUMBER>
        <xsl:value-of select="/poam:UpdatePurchaseOrderLineRequestMessage/poam:ListOfPurchaseOrders/ns8:PurchaseOrder[ns8:Documentnum=$varPOCounter]/ns8:ListOfPurchaseOrderLines/ns8:PurchaseOrderLine[ns8:Linenum=$varPOLineCounter]/ns8:Shipmentnum"/>
      </db:X_SHIPMENT_NUMBER>
      <db:NEW_QUANTITY>
        <xsl:value-of select="/poam:UpdatePurchaseOrderLineRequestMessage/poam:ListOfPurchaseOrders/ns8:PurchaseOrder[ns8:Documentnum=$varPOCounter]/ns8:ListOfPurchaseOrderLines/ns8:PurchaseOrderLine[ns8:Linenum=$varPOLineCounter]/ns8:Quantity"/>
      </db:NEW_QUANTITY>
      <db:NEW_PRICE>
        <xsl:value-of select="/poam:UpdatePurchaseOrderLineRequestMessage/poam:ListOfPurchaseOrders/ns8:PurchaseOrder[ns8:Documentnum=$varPOCounter]/ns8:ListOfPurchaseOrderLines/ns8:PurchaseOrderLine[ns8:Linenum=$varPOLineCounter]/ns8:Unitprice"/>
      </db:NEW_PRICE>
      <db:NEW_PROMISED_DATE>
        <xsl:value-of select="/poam:UpdatePurchaseOrderLineRequestMessage/poam:ListOfPurchaseOrders/ns8:PurchaseOrder[ns8:Documentnum=$varPOCounter]/ns8:ListOfPurchaseOrderLines/ns8:PurchaseOrderLine[ns8:Linenum=$varPOLineCounter]/ns8:Promiseddate"/>
      </db:NEW_PROMISED_DATE>
      <db:NEW_NEED_BY_DATE>
        <xsl:value-of select="/poam:UpdatePurchaseOrderLineRequestMessage/poam:ListOfPurchaseOrders/ns8:PurchaseOrder[ns8:Documentnum=$varPOCounter]/ns8:ListOfPurchaseOrderLines/ns8:PurchaseOrderLine[ns8:Linenum=$varPOLineCounter]/ns8:Needbydate"/>
      </db:NEW_NEED_BY_DATE>
      <db:LAUNCH_APPROVALS_FLAG>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:UpdatePurchaseOrderLineRequestMessage/poam:ListOfPurchaseOrders/ns8:PurchaseOrder[ns8:Documentnum=$varPOCounter]/ns8:Approvedflag/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:UpdatePurchaseOrderLineRequestMessage/poam:ListOfPurchaseOrders/ns8:PurchaseOrder[ns8:Documentnum=$varPOCounter]/ns8:Approvedflag"/>
      </db:LAUNCH_APPROVALS_FLAG>
      <db:UPDATE_SOURCE>
        <xsl:text disable-output-escaping="no"></xsl:text>
      </db:UPDATE_SOURCE>
      <db:VERSION>
        <xsl:text disable-output-escaping="no">1.0</xsl:text>
      </db:VERSION>
      <db:X_OVERRIDE_DATE>
        <xsl:text disable-output-escaping="no"></xsl:text>
      </db:X_OVERRIDE_DATE>
      <db:P_BUYER_NAME>
        <xsl:text disable-output-escaping="no"></xsl:text>
      </db:P_BUYER_NAME>
      <db:P_SECONDARY_QUANTITY>
        <xsl:text disable-output-escaping="no"></xsl:text>
      </db:P_SECONDARY_QUANTITY>
      <db:P_PREFERRED_GRADE>
        <xsl:text disable-output-escaping="no"></xsl:text>
      </db:P_PREFERRED_GRADE>
      <db:P_ORG_ID>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/poam:UpdatePurchaseOrderLineRequestMessage/poam:ListOfPurchaseOrders/ns8:PurchaseOrder[$varPOCounter]/ns8:Orgid/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/poam:UpdatePurchaseOrderLineRequestMessage/poam:ListOfPurchaseOrders/ns8:PurchaseOrder[$varPOCounter]/ns8:Orgid"/>
      </db:P_ORG_ID>
    </db:InputParameters>
  </xsl:template>
</xsl:stylesheet>