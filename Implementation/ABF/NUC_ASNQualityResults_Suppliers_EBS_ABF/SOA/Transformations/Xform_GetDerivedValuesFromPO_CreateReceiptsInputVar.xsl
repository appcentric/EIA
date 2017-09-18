<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:ns1="http://schemas.oracle.com/service/bpel/common"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:ns3="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderABM/1.0"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns0="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns1 ns3 ns0 xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptAO/1.0"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns23="http:/xmlns.eia.com/Implementation/ABS/NUC_EBizLot_ABS/EBizLotABS/1.0"
                xmlns:ns2="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns10="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:ns12="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:ns11="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:cor="http:/xmlns.eia.com/Implementation/ABF/NSNE_ASNQualityResults_Suppliers_EBS_ABF/ASNQualityResults_Suppliers/1.0/correlationset"
                xmlns:ns22="http://xmlns.eia.com/EDN/1.0/Event"
                xmlns:ns18="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderAO/1.0"
                xmlns:ns17="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns19="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:ns25="http://xmlns.eia.com/ABS/EBiz/PurchaseOrderABS/1.0"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ns6="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0" xmlns:imp1="http://www.example.org"
                xmlns:ns9="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0" xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:ns13="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns20="http://xmlns.eia.com/AO/EBiz/common/CategoryAO/1.0"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns4="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:ns5="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:tns="http://xmlns.eia.com/ABS/EBiz/ReceiptABS/1.0"
                xmlns:ns8="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:vprop="http://docs.oasis-open.org/wsbpel/2.0/varprop"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns21="http://xmlns.oracle.com/pcbpel/adapter/ftp/I109byManish/NSNE_ASNQualityResults_Suppliers_EBS_ABF/FTP_ReadASNSupplier"
                xmlns:ns16="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns15="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:ns14="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns24="http:/xmlns.eia.com/Implementation/ABS/NUC_NUC_EBizQualityResults_ABS/QualityResults/1.0">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/ReceiptABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateReceiptRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FTP_ReadASNSupplier.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="L_deriveItemNumber"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FTP_ReadASNSupplier.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="custPOAndLine"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/PurchaseOrderABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryPurchaseOrderResponseMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderABM/1.0"/>
        <oracle-xsl-mapper:param name="InvokeQueryPO_Sync_OutputVariable.QueryPurchaseOrderResponseMessage"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/ReceiptABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateReceiptRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [TUE AUG 16 10:00:49 CDT 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="L_deriveItemNumber"/>
  <xsl:param name="custPOAndLine"/>
  <xsl:param name="InvokeQueryPO_Sync_OutputVariable.QueryPurchaseOrderResponseMessage"/>
  <xsl:template match="/">
    <ns0:CreateReceiptRequestMessage>
      <ns11:HeaderRq>
        <ns11:TransactionRequestID>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:TransactionRequestID"/>
        </ns11:TransactionRequestID>
        <ns11:Language>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:Language"/>
        </ns11:Language>
        <ns11:ComponentID>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:ComponentID"/>
        </ns11:ComponentID>
        <ns11:ServiceName>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:ServiceName"/>
        </ns11:ServiceName>
        <xsl:if test="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:TransactionIDREF">
          <ns11:TransactionIDREF>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:TransactionIDREF"/>
          </ns11:TransactionIDREF>
        </xsl:if>
        <xsl:if test="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:TransactionName">
          <ns11:TransactionName>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:TransactionName"/>
          </ns11:TransactionName>
        </xsl:if>
        <xsl:if test="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:FileName">
          <ns11:FileName>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:FileName"/>
          </ns11:FileName>
        </xsl:if>
        <xsl:if test="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:FileInstanceID">
          <ns11:FileInstanceID>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:FileInstanceID"/>
          </ns11:FileInstanceID>
        </xsl:if>
        <xsl:if test="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:Source">
          <ns11:Source>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:Source"/>
          </ns11:Source>
        </xsl:if>
        <xsl:if test="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:Target">
          <ns11:Target>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:Target"/>
          </ns11:Target>
        </xsl:if>
        <xsl:if test="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:HostName">
          <ns11:HostName>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:HostName"/>
          </ns11:HostName>
        </xsl:if>
        <xsl:if test="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:UserName">
          <ns11:UserName>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:UserName"/>
          </ns11:UserName>
        </xsl:if>
        <xsl:if test="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:UserRole">
          <ns11:UserRole>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:UserRole"/>
          </ns11:UserRole>
        </xsl:if>
        <xsl:if test="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:AdminEmail">
          <ns11:AdminEmail>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:AdminEmail"/>
          </ns11:AdminEmail>
        </xsl:if>
        <xsl:if test="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:ApplicationResponsibility">
          <ns11:ApplicationResponsibility>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:ApplicationResponsibility"/>
          </ns11:ApplicationResponsibility>
        </xsl:if>
        <xsl:if test="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:EOFFlag">
          <ns11:EOFFlag>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:EOFFlag"/>
          </ns11:EOFFlag>
        </xsl:if>
        <xsl:if test="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:SOFFlag">
          <ns11:SOFFlag>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:SOFFlag"/>
          </ns11:SOFFlag>
        </xsl:if>
        <xsl:if test="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:FileRecordCount">
          <ns11:FileRecordCount>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:FileRecordCount"/>
          </ns11:FileRecordCount>
        </xsl:if>
        <xsl:if test="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:TimeStamp">
          <ns11:TimeStamp>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:TimeStamp"/>
          </ns11:TimeStamp>
        </xsl:if>
        <xsl:if test="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:MillName">
          <ns11:MillName>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns11:HeaderRq/ns11:MillName"/>
          </ns11:MillName>
        </xsl:if>
      </ns11:HeaderRq>
      <ns0:AppsContext>
        <ns12:UserName>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns12:UserName"/>
        </ns12:UserName>
        <ns12:UserId>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns12:UserId"/>
        </ns12:UserId>
        <ns12:ResponsibilityName>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns12:ResponsibilityName"/>
        </ns12:ResponsibilityName>
        <ns12:OrgId>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns12:OrgId"/>
        </ns12:OrgId>
      </ns0:AppsContext>
      <ns0:Receipt>
        <ns7:ListOfTransactions>
          <xsl:for-each select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns7:ListOfTransactions/ns7:Transaction">
            <ns7:Transaction>
              <ns7:ToOrganizationCode>
                <xsl:value-of select="$InvokeQueryPO_Sync_OutputVariable.QueryPurchaseOrderResponseMessage/ns3:QueryPurchaseOrderResponseMessage/ns3:ListOfPurchaseOrders/ns18:PurchaseOrder[ns18:Segment1 = $custPOAndLine/ns1:parameters/ns1:item/ns1:value]/ns18:ListOfPurchaseOrderLines/ns18:PurchaseOrderLine[ns18:Linenum = $custPOAndLine/ns1:parameters/ns1:item/ns1:name]/ns18:Orgid"/>
              </ns7:ToOrganizationCode>
            </ns7:Transaction>
          </xsl:for-each>
        </ns7:ListOfTransactions>
      </ns0:Receipt>
    </ns0:CreateReceiptRequestMessage>
  </xsl:template>
</xsl:stylesheet>
