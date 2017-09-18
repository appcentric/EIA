<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/OA_CreateReceiptEBS"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns0="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/sp/DB_DeriveReceiptColumns"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 ns1 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:ns6="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptAO/1.0"
                xmlns:ns9="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0"
                xmlns:ns13="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:ns20="http://xmlns.eia.com/AO/EBiz/common/CategoryAO/1.0"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns3="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns4="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:ns5="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns21="http://xmlns.oracle.com/pcbpel/adapter/db/Manish/NUC_EBizPOReceipt_ABS/DB_DeriveReceiptColumns"
                xmlns:ns2="http://xmlns.eia.com/ABS/EBiz/ReceiptABS/1.0"
                xmlns:ns8="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns10="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns12="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:ns11="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns16="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns15="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:ns14="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns18="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderAO/1.0"
                xmlns:ns17="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns19="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:ns22="http://xmlns.oracle.com/pcbpel/adapter/apps/WI_Application/NUC_EBizPOReceipt_ABS/OA_CreateReceiptEBS"
                xmlns:ns23="http://www.w3.org/2000/xmlns/">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/ReceiptABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateReceiptRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../DB_DeriveReceiptColumns.wsdl"/>
        <oracle-xsl-mapper:rootElement name="InputParameters"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/sp/DB_DeriveReceiptColumns"/>
        <oracle-xsl-mapper:param name="InvokeDB_DeriveReceiptColumns_InputVariable.InputParameters"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../DB_DeriveReceiptColumns.wsdl"/>
        <oracle-xsl-mapper:rootElement name="OutputParameters"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/sp/DB_DeriveReceiptColumns"/>
        <oracle-xsl-mapper:param name="InvokeDB_DeriveReceiptColumns_OutputVariable.OutputParameters"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../OA_CreateReceiptEBS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="RcvHeadersInterfaceCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/OA_CreateReceiptEBS"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED JAN 20 02:34:57 CST 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="InvokeDB_DeriveReceiptColumns_InputVariable.InputParameters"/>
  <xsl:param name="InvokeDB_DeriveReceiptColumns_OutputVariable.OutputParameters"/>
  <xsl:template match="/">
  <xsl:variable name="headerInterfaceIdVar"
                  select='oraext:sequence-next-val("RCV_HEADERS_INTERFACE_S","jdbc/ebsapps")'/>
    <tns:RcvHeadersInterfaceCollection>
      <tns:RcvHeadersInterface>
        <xsl:choose>
          <xsl:when test="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns7:Headerinterfaceid !=''">
            <tns:headerInterfaceId>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns7:Headerinterfaceid"/>
            </tns:headerInterfaceId>
          </xsl:when>
          <xsl:otherwise>
          <xsl:value-of select = "$headerInterfaceIdVar"/>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:choose>
          <xsl:when test="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns7:Groupid != ''">
           <tns:groupId>
              <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns7:Groupid"/>
            </tns:groupId>
            </xsl:when>
            <xsl:otherwise>
            <tns:groupId>
              <xsl:value-of select="$InvokeDB_DeriveReceiptColumns_InputVariable.InputParameters/ns1:InputParameters/ns1:P_TRX_ID"/>
            </tns:groupId>
          </xsl:otherwise>
        </xsl:choose>
        <tns:processingStatusCode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns7:Processingstatuscode"/>
        </tns:processingStatusCode>
        <tns:receiptSourceCode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns7:Receiptsourcecode"/>
        </tns:receiptSourceCode>
        <tns:asnType>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns7:Asntype"/>
        </tns:asnType>
        <tns:transactionType>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns7:Transactiontype"/>
        </tns:transactionType>
        <tns:autoTransactCode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns7:Autotransactcode"/>
        </tns:autoTransactCode>
        <xsl:choose>
          <xsl:when test="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns7:Lastupdatedate != '';">
            <tns:lastUpdateDate>
              <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns7:Lastupdatedate"/>
            </tns:lastUpdateDate>
          </xsl:when>
          <xsl:otherwise>
           <tns:lastUpdateDate>
              <xsl:value-of select="xp20:current-dateTime ( )"/>
            </tns:lastUpdateDate>
          </xsl:otherwise>
        </xsl:choose>
      </tns:RcvHeadersInterface>
    </tns:RcvHeadersInterfaceCollection>
  </xsl:template>
</xsl:stylesheet>
