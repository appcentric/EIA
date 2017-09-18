<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:eia="http://xmlns.eia.com/extensions/1.0"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ns1="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0"
                xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/OA_CreateReceiptEBS"
                xmlns:ns2="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptAO/1.0"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:ns3="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:ns6="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ns11="http://xmlns.eia.com/AO/EBiz/common/CategoryAO/1.0"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns0="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns13="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:tns="http://xmlns.eia.com/ABS/EBiz/ReceiptABS/1.0"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ns4="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:ns12="http://xmlns.oracle.com/pcbpel/adapter/apps/WI_Application/NUC_EBizPOReceipt_ABS/OA_CreateReceiptEBS"
                xmlns:ns5="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:porecpam="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:ns8="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns9="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns10="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderAO/1.0"
                xmlns:bpmn="http://schemas.oracle.com/bpm/xpath"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl ns1 ns2 ns3 ns6 soap12 soap mime wsdl ns11 core ns0 ns13 tns ns4 ns5 porecpam xsd ns7 ns8 ns9 ns10 top plt ns12 bpws xp20 eia bpel bpm utl ora socket mhdr oraext dvm hwf med ids xdk xref ldap"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:ns16="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns17="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns18="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:ns14="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns15="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/ReceiptABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateReceiptRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../OA_CreateReceiptEBS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="RcvHeadersInterfaceCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/OA_CreateReceiptEBS"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [TUE AUG 16 15:09:18 IST 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <xsl:variable name="headerInterfaceIdVar"
                  select='oraext:sequence-next-val("RCV_HEADERS_INTERFACE_S","jdbc/ebsapps")'/>
    <xsl:variable name="groupIdVar" select='oraext:sequence-next-val("RCV_INTERFACE_GROUPS_S","jdbc/ebsapps")'/>
    <top:RcvHeadersInterfaceCollection>
      <top:RcvHeadersInterface>
        <xsl:choose>
          <xsl:when test="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Headerinterfaceid and /porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Headerinterfaceid !=''">
            <top:headerInterfaceId>
              <xsl:value-of select=" /porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Headerinterfaceid"/>
            </top:headerInterfaceId>
          </xsl:when>
          <xsl:otherwise>
            <top:headerInterfaceId>
              <xsl:value-of select="$headerInterfaceIdVar"/>
            </top:headerInterfaceId>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:choose>
          <xsl:when test="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Groupid and /porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Groupid !=''">
            <top:groupId>
              <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Groupid"/>
            </top:groupId>
          </xsl:when>
          <xsl:otherwise>
            <top:groupId>
              <xsl:value-of select="$groupIdVar"/>
            </top:groupId>
          </xsl:otherwise>
        </xsl:choose>
        <top:processingStatusCode>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Processingstatuscode"/>
        </top:processingStatusCode>
        <top:receiptSourceCode>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Receiptsourcecode"/>
        </top:receiptSourceCode>
        <top:asnType>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Asntype"/>
        </top:asnType>
        <top:transactionType>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Transactiontype"/>
        </top:transactionType>
        <top:autoTransactCode>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Autotransactcode"/>
        </top:autoTransactCode>
        <xsl:choose>
          <xsl:when test='/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Lastupdatedate != ""'>
            <top:lastUpdateDate>
              <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Lastupdatedate"/>
            </top:lastUpdateDate>
          </xsl:when>
          <xsl:otherwise>
            <top:lastUpdateDate>
              <xsl:value-of select="xp20:current-dateTime()"/>
            </top:lastUpdateDate>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:choose>
          <xsl:when test='/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Lastupdatedby != ""'>
            <top:lastUpdatedBy>
              <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Lastupdatedby"/>
            </top:lastUpdatedBy>
          </xsl:when>
          <xsl:otherwise>
            <top:lastUpdatedBy>
              <xsl:value-of select='dvm:lookupValue("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_USER_NAME_DIVISION_MAP.dvm","DIVISION","Yamato","EBS_USER_ID","")'/>
            </top:lastUpdatedBy>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:choose>
          <xsl:when test='/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Creationdate != ""'>
            <top:creationDate>
              <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Creationdate"/>
            </top:creationDate>
          </xsl:when>
          <xsl:otherwise>
            <top:creationDate>
              <xsl:value-of select="xp20:current-dateTime()"/>
            </top:creationDate>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:choose>
          <xsl:when test='/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Createdby != ""'>
            <top:createdBy>
              <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Createdby"/>
            </top:createdBy>
          </xsl:when>
          <xsl:otherwise>
            <top:createdBy>
              <xsl:value-of select='dvm:lookupValue("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_USER_NAME_DIVISION_MAP.dvm","DIVISION","Yamato","EBS_USER_ID","")'/>
            </top:createdBy>
          </xsl:otherwise>
        </xsl:choose>
        <top:noticeCreationDate>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Transactiondate"/>
        </top:noticeCreationDate>
        <xsl:choose>
          <xsl:when test='/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:BasicReceipt/ns2:ShipmentNumber != ""'>
            <top:shipmentNum>
              <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:BasicReceipt/ns2:ShipmentNumber"/>
            </top:shipmentNum>
          </xsl:when>
          <xsl:otherwise>
            <top:shipmentNum>
              <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Shipmentnum"/>
            </top:shipmentNum>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:choose>
          <xsl:when test='/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:BasicReceipt/ns2:ReceiptNumber != ""'>
            <top:receiptNum>
              <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:BasicReceipt/ns2:ReceiptNumber"/>
            </top:receiptNum>
          </xsl:when>
          <xsl:otherwise>
            <top:receiptNum>
              <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Receiptnum"/>
            </top:receiptNum>
          </xsl:otherwise>
        </xsl:choose>
        <top:vendorName>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Vendorname"/>
        </top:vendorName>
        <top:vendorNum>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Vendornum"/>
        </top:vendorNum>
        <top:vendorId>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Vendorid"/>
        </top:vendorId>
        <top:vendorSiteCode>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Vendorsitecode"/>
        </top:vendorSiteCode>
        <top:vendorSiteId>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Vendorsiteid"/>
        </top:vendorSiteId>
        <top:shipToOrganizationCode>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Shiptoorganizationcode"/>
        </top:shipToOrganizationCode>
        <top:shipToOrganizationId>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Shiptoorganizationid"/>
        </top:shipToOrganizationId>
        <xsl:choose>
          <xsl:when test="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:BasicReceipt/ns2:BillOfLAdding != ''">
            <top:billOfLading>
              <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:BasicReceipt/ns2:BillOfLAdding"/>
            </top:billOfLading>
          </xsl:when>
          <xsl:otherwise>
            <top:billOfLading>
              <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Billoflading"/>
            </top:billOfLading>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:choose>
          <xsl:when test="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:BasicReceipt/ns2:Packing != ''">
            <top:packingSlip>
              <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:BasicReceipt/ns2:Packing"/>
            </top:packingSlip>
          </xsl:when>
          <xsl:otherwise>
            <top:packingSlip>
              <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Packingslip"/>
            </top:packingSlip>
          </xsl:otherwise>
        </xsl:choose>
        <top:shippedDate>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Shippeddate"/>
        </top:shippedDate>
        <top:freightCarrierCode>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Freightcarriercode"/>
        </top:freightCarrierCode>
        <top:expectedReceiptDate>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Expectedreceiptdate"/>
        </top:expectedReceiptDate>
        <top:waybillAirbillNum>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Waybillairbillnum"/>
        </top:waybillAirbillNum>
        <top:comments>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Comments"/>
        </top:comments>
        <top:grossWeight>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Grossweight"/>
        </top:grossWeight>
        <top:grossWeightUomCode>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Grossweightuomcode"/>
        </top:grossWeightUomCode>
        <top:netWeight>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Netweight"/>
        </top:netWeight>
        <top:netWeightUomCode>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Netweightuomcode"/>
        </top:netWeightUomCode>
        <top:packagingCode>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Packagingcode"/>
        </top:packagingCode>
        <top:currencyCode>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Currencycode"/>
        </top:currencyCode>
        <top:attributeCategory>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:HeaderDFF/ns7:AttributeCategory"/>
        </top:attributeCategory>
        <top:attribute1>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:HeaderDFF/ns7:Attribute1"/>
        </top:attribute1>
        <top:attribute2>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:HeaderDFF/ns7:Attribute2"/>
        </top:attribute2>
        <top:attribute3>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:HeaderDFF/ns7:Attribute3"/>
        </top:attribute3>
        <top:attribute4>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:HeaderDFF/ns7:Attribute4"/>
        </top:attribute4>
        <top:attribute5>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:HeaderDFF/ns7:Attribute5"/>
        </top:attribute5>
        <top:attribute6>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:HeaderDFF/ns7:Attribute6"/>
        </top:attribute6>
        <top:attribute7>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:HeaderDFF/ns7:Attribute7"/>
        </top:attribute7>
        <top:attribute8>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:HeaderDFF/ns7:Attribute8"/>
        </top:attribute8>
        <top:attribute9>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:HeaderDFF/ns7:Attribute9"/>
        </top:attribute9>
        <top:attribute10>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:HeaderDFF/ns7:Attribute10"/>
        </top:attribute10>
        <top:attribute11>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:HeaderDFF/ns7:Attribute11"/>
        </top:attribute11>
        <top:attribute12>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:HeaderDFF/ns7:Attribute12"/>
        </top:attribute12>
        <top:attribute13>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:HeaderDFF/ns7:Attribute13"/>
        </top:attribute13>
        <top:attribute14>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:HeaderDFF/ns7:Attribute14"/>
        </top:attribute14>
        <top:attribute15>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:HeaderDFF/ns7:Attribute15"/>
        </top:attribute15>
        <top:employeeName>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Employeename"/>
        </top:employeeName>
        <top:employeeId>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Employeeid"/>
        </top:employeeId>
        <top:validationFlag>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Validationflag"/>
        </top:validationFlag>
        <top:orgId>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Orgid"/>
        </top:orgId>
        <top:operatingUnit>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Operatingunit"/>
        </top:operatingUnit>
        <top:shipFromLocationId>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Shipfromlocationid"/>
        </top:shipFromLocationId>
        <top:shipFromLocationCode>
          <xsl:value-of select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:Shipfromlocationcode"/>
        </top:shipFromLocationCode>
        <top:rcvTransactionsInterfaceCollection>
          <xsl:for-each select="/porecpam:CreateReceiptRequestMessage/porecpam:Receipt/ns2:ListOfTransactions/ns2:Transaction">
            <top:RcvTransactionsInterface>
              <xsl:choose>
                <xsl:when test="ns2:InterfaceTransactionId and ns2:InterfaceTransactionId !='' ">
                  <top:interfaceTransactionId>
                    <xsl:value-of select="ns2:InterfaceTransactionId"/>
                  </top:interfaceTransactionId>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:variable name="interfaceTransactionIdVar"
                                select='oraext:sequence-next-val("RCV_TRANSACTIONS_INTERFACE_S","jdbc/ebsapps")'/>
                  <top:interfaceTransactionId>
                    <xsl:value-of select="$interfaceTransactionIdVar"/>
                  </top:interfaceTransactionId>
                </xsl:otherwise>
              </xsl:choose>
              <xsl:choose>
                <xsl:when test="ns2:GroupId and ns2:GroupId !=''">
                  <top:groupId>
                    <xsl:value-of select="ns2:GroupId"/>
                  </top:groupId>
                </xsl:when>
                <xsl:otherwise>
                  <top:groupId>
                    <xsl:value-of select="$groupIdVar"/>
                  </top:groupId>
                </xsl:otherwise>
              </xsl:choose>
              <xsl:choose>
                <xsl:when test='../../ns2:Lastupdatedate != ""'>
                  <top:lastUpdateDate>
                    <xsl:value-of select="../../ns2:Lastupdatedate"/>
                  </top:lastUpdateDate>
                </xsl:when>
                <xsl:otherwise>
                  <top:lastUpdateDate>
                    <xsl:value-of select="xp20:current-dateTime()"/>
                  </top:lastUpdateDate>
                </xsl:otherwise>
              </xsl:choose>
              <xsl:choose>
                <xsl:when test='../../ns2:Lastupdatedby != ""'>
                  <top:lastUpdatedBy>
                    <xsl:value-of select="../../ns2:Lastupdatedby"/>
                  </top:lastUpdatedBy>
                </xsl:when>
                <xsl:otherwise>
                  <top:lastUpdatedBy>
                    <xsl:value-of select='dvm:lookupValue("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_USER_NAME_DIVISION_MAP.dvm","DIVISION","NSNE","EBS_USER_ID","")'/>
                  </top:lastUpdatedBy>
                </xsl:otherwise>
              </xsl:choose>
              <xsl:choose>
                <xsl:when test='../../ns2:Lastupdatedate != ""'>
                  <top:creationDate>
                    <xsl:value-of select="../../ns2:Lastupdatedate"/>
                  </top:creationDate>
                </xsl:when>
                <xsl:otherwise>
                  <top:creationDate>
                    <xsl:value-of select="xp20:current-dateTime()"/>
                  </top:creationDate>
                </xsl:otherwise>
              </xsl:choose>
              <xsl:choose>
                <xsl:when test='../../ns2:Lastupdatedby != ""'>
                  <top:createdBy>
                    <xsl:value-of select="../../ns2:Lastupdatedby"/>
                  </top:createdBy>
                </xsl:when>
                <xsl:otherwise>
                  <top:createdBy>
                    <xsl:value-of select='dvm:lookupValue("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_USER_NAME_DIVISION_MAP.dvm","DIVISION","NSNE","EBS_USER_ID","")'/>
                  </top:createdBy>
                </xsl:otherwise>
              </xsl:choose>
              <xsl:choose>
                <xsl:when test='../../ns2:Lastupdatedby != ""'>
                  <top:lastUpdateLogin>
                    <xsl:value-of select="../../ns2:Lastupdatedby"/>
                  </top:lastUpdateLogin>
                </xsl:when>
                <xsl:otherwise>
                  <top:lastUpdateLogin>
                    <xsl:value-of select='dvm:lookupValue("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_USER_NAME_DIVISION_MAP.dvm","DIVISION","NSNE","EBS_USER_ID","")'/>
                  </top:lastUpdateLogin>
                </xsl:otherwise>
              </xsl:choose>
              <top:transactionType>
                <xsl:value-of select="ns2:TransactionType"/>
              </top:transactionType>
              <top:transactionDate>
                <xsl:value-of select="ns2:TransactionDate"/>
              </top:transactionDate>
              <top:transferLicensePlateNumber><xsl:value-of select="ns2:TransferLicensePlateNumber"/></top:transferLicensePlateNumber>
              <top:processingStatusCode>
                <xsl:value-of select="ns2:ProcessingStatusCode"/>
              </top:processingStatusCode>
              <top:processingModeCode>
                <xsl:value-of select="ns2:ProcessingModeCode"/>
              </top:processingModeCode>
              <top:transactionStatusCode>
                <xsl:value-of select="ns2:TransactionStatusCode"/>
              </top:transactionStatusCode>
              <top:quantity>
                <xsl:value-of select="ns2:Quantity"/>
              </top:quantity>
              <top:unitOfMeasure>
                <xsl:value-of select="ns2:UnitOfMeasure"/>
              </top:unitOfMeasure>
              <top:interfaceSourceCode>
                <xsl:value-of select="ns2:InterfaceSourceCode"/>
              </top:interfaceSourceCode>
              <top:itemId>
                <xsl:value-of select="ns2:Item/ns6:Identifier"/>
              </top:itemId>
              <top:itemDescription>
                <xsl:value-of select="ns2:Item/ns6:Description"/>
              </top:itemDescription>
              <top:itemRevision>
                <xsl:value-of select="ns2:Item/ns6:ItemRevision"/>
              </top:itemRevision>
              <top:uomCode>
                <xsl:value-of select="ns2:UomCode"/>
              </top:uomCode>
              <top:autoTransactCode>
                <xsl:value-of select="ns2:AutoTransactCode"/>
              </top:autoTransactCode>
              <top:receiptSourceCode>
                <xsl:value-of select="ns2:ReceiptSourceCode"/>
              </top:receiptSourceCode>
              <top:toOrganizationId>
                <xsl:value-of select="ns2:ToOrganizationId"/>
              </top:toOrganizationId>
              <top:sourceDocumentCode>
                <xsl:value-of select="ns2:SourceDocumentCode"/>
              </top:sourceDocumentCode>
              <top:parentTransactionId>
                <xsl:value-of select="ns2:ParentTransactionId"/>
              </top:parentTransactionId>
              <top:poHeaderId>
                <xsl:value-of select="ns2:BasicPurchaseOrder/ns10:POIndentfierID"/>
              </top:poHeaderId>
              <top:poRevisionNum>
                <xsl:value-of select="ns2:PoRevisionNum"/>
              </top:poRevisionNum>
              <top:poReleaseId>
                <xsl:value-of select="ns2:PoReleaseId"/>
              </top:poReleaseId>
              <top:poLineId>
                <xsl:value-of select="ns2:BasicPurchaseOrderLine/ns10:POIndentfierID"/>
              </top:poLineId>
              <top:poLineLocationId>
                <xsl:value-of select="ns2:PoLineLocationId"/>
              </top:poLineLocationId>
              <top:poUnitPrice>
                <xsl:value-of select="ns2:PoUnitPrice"/>
              </top:poUnitPrice>
              <top:destinationTypeCode>
                <xsl:value-of select="ns2:DestinationTypeCode"/>
              </top:destinationTypeCode>
              <top:deliverToLocationId>
                <xsl:value-of select="ns2:DeliverToLocationId"/>
              </top:deliverToLocationId>
              <top:subinventory>
                <xsl:value-of select="ns2:Subinventory"/>
              </top:subinventory>
              <top:shipmentLineId>
                <xsl:value-of select="ns2:ShipmentLineId"/>
              </top:shipmentLineId>
              <top:shipmentNum>
                <xsl:value-of select="ns2:ShipmentNum"/>
              </top:shipmentNum>
              <top:shippedDate>
                <xsl:value-of select="ns2:ShippedDate"/>
              </top:shippedDate>
              <top:comments>
                <xsl:value-of select="ns2:Comments"/>
              </top:comments>
              <top:attributeCategory>
                <xsl:value-of select="ns2:DFF/ns7:AttributeCategory"/>
              </top:attributeCategory>
              <top:attribute1>
                <xsl:value-of select="ns2:DFF/ns7:Attribute1"/>
              </top:attribute1>
              <top:attribute2>
                <xsl:value-of select="ns2:DFF/ns7:Attribute2"/>
              </top:attribute2>
              <top:attribute3>
                <xsl:value-of select="ns2:DFF/ns7:Attribute3"/>
              </top:attribute3>
              <top:attribute4>
                <xsl:value-of select="ns2:DFF/ns7:Attribute4"/>
              </top:attribute4>
              <top:attribute5>
                <xsl:value-of select="ns2:DFF/ns7:Attribute5"/>
              </top:attribute5>
              <top:attribute6>
                <xsl:value-of select="ns2:DFF/ns7:Attribute6"/>
              </top:attribute6>
              <top:attribute7>
                <xsl:value-of select="ns2:DFF/ns7:Attribute7"/>
              </top:attribute7>
              <top:attribute8>
                <xsl:value-of select="ns2:DFF/ns7:Attribute8"/>
              </top:attribute8>
              <top:attribute9>
                <xsl:value-of select="ns2:DFF/ns7:Attribute9"/>
              </top:attribute9>
              <top:attribute10>
                <xsl:value-of select="ns2:DFF/ns7:Attribute10"/>
              </top:attribute10>
              <top:attribute11>
                <xsl:value-of select="ns2:DFF/ns7:Attribute11"/>
              </top:attribute11>
              <top:attribute12>
                <xsl:value-of select="ns2:DFF/ns7:Attribute12"/>
              </top:attribute12>
              <top:attribute13>
                <xsl:value-of select="ns2:DFF/ns7:Attribute13"/>
              </top:attribute13>
              <top:attribute14>
                <xsl:value-of select="ns2:DFF/ns7:Attribute14"/>
              </top:attribute14>
              <top:attribute15>
                <xsl:value-of select="ns2:DFF/ns7:Attribute15"/>
              </top:attribute15>
              <top:itemNum>
                <xsl:value-of select="ns2:Item/ns6:Item"/>
              </top:itemNum>
              <top:documentNum>
                <xsl:value-of select="ns2:DocumentNum"/>
              </top:documentNum>
              <top:documentLineNum>
                <xsl:value-of select="ns2:DocumentLineNum"/>
              </top:documentLineNum>
              <top:truckNum>
                <xsl:value-of select="ns2:TruckNum"/>
              </top:truckNum>
              <top:shipToLocationCode>
                <xsl:value-of select="ns2:ShipToLocationCode"/>
              </top:shipToLocationCode>
              <top:itemCategory>
                <xsl:value-of select="ns2:Category/ns11:Category"/>
              </top:itemCategory>
              <top:locationCode>
                <xsl:value-of select="ns2:LocationCode"/>
              </top:locationCode>
              <top:vendorName>
                <xsl:value-of select="ns2:VendorName"/>
              </top:vendorName>
              <top:vendorNum>
                <xsl:value-of select="ns2:VendorNum"/>
              </top:vendorNum>
              <top:vendorSiteCode>
                <xsl:value-of select="ns2:VendorSiteCode"/>
              </top:vendorSiteCode>
              <top:toOrganizationCode>
                <xsl:value-of select="ns2:ToOrganizationCode"/>
              </top:toOrganizationCode>
              <top:releaseNum>
                <xsl:value-of select="ns2:ReleaseNum"/>
              </top:releaseNum>
              <top:documentShipmentLineNum>
                <xsl:value-of select="ns2:DocumentShipmentLineNum"/>
              </top:documentShipmentLineNum>
              <top:documentDistributionNum>
                <xsl:value-of select="ns2:DocumentDistributionNum"/>
              </top:documentDistributionNum>
              <top:deliverToPersonName>
                <xsl:value-of select="ns2:DeliverToPersonName"/>
              </top:deliverToPersonName>
              <top:deliverToLocationCode>
                <xsl:value-of select="ns2:DeliverToLocationCode"/>
              </top:deliverToLocationCode>
              <top:useMtlLot>
                <xsl:value-of select="ns2:UseMtlLot"/>
              </top:useMtlLot>
              <top:useMtlSerial>
                <xsl:value-of select="ns2:UseMtlSerial"/>
              </top:useMtlSerial>
              <top:locator>
                <xsl:value-of select="ns2:Locator"/>
              </top:locator>
              <top:validationFlag>
                <xsl:value-of select="ns2:ValidationFlag"/>
              </top:validationFlag>
              <top:sourceTransactionNum>
                <xsl:value-of select="ns2:SourceTransactionNum"/>
              </top:sourceTransactionNum>
              <top:parentInterfaceTxnId>
                <xsl:value-of select="ns2:ParentInterfaceTxnId"/>
              </top:parentInterfaceTxnId>
              <top:orgId>
                <xsl:value-of select="ns2:OrgId"/>
              </top:orgId>
              <top:operatingUnit>
                <xsl:value-of select="ns2:OperatingUnit"/>
              </top:operatingUnit>
              <top:waybillAirbillNum>
                <xsl:value-of select="ns2:WaybillAirbillNum"/>
              </top:waybillAirbillNum>
              <top:packingSlip>
                <xsl:value-of select="ns2:PackingSlip"/>
              </top:packingSlip>
              <top:mtlTransactionLotsInterfaceCollection>
                <xsl:for-each select="ns2:ListOfLotTxns/ns2:LotTransaction">
                  <top:MtlTransactionLotsInterface>
                    <xsl:if test="ns2:Age and ns2:Age != ''">
                      <top:age>
                        <xsl:value-of select="ns2:Age"/>
                      </top:age>
                    </xsl:if>
                    <xsl:if test="ns2:LotsDFF/ns7:Attribute1 and ns2:LotsDFF/ns7:Attribute1 != '' ">
                      <top:attribute1>
                        <xsl:value-of select="ns2:LotsDFF/ns7:Attribute1"/>
                      </top:attribute1>
                    </xsl:if>
                    <xsl:if test="ns2:LotsDFF/ns7:Attribute10 and ns2:LotsDFF/ns7:Attribute10 != '' ">
                      <top:attribute10>
                        <xsl:value-of select="ns2:LotsDFF/ns7:Attribute10"/>
                      </top:attribute10>
                    </xsl:if>
                    <xsl:if test="ns2:LotsDFF/ns7:Attribute11 and ns2:LotsDFF/ns7:Attribute11 != '' ">
                      <top:attribute11>
                        <xsl:value-of select="ns2:LotsDFF/ns7:Attribute11"/>
                      </top:attribute11>
                    </xsl:if>
                    <xsl:if test="ns2:LotsDFF/ns7:Attribute12 and ns2:LotsDFF/ns7:Attribute12 != '' ">
                      <top:attribute12>
                        <xsl:value-of select="ns2:LotsDFF/ns7:Attribute12"/>
                      </top:attribute12>
                    </xsl:if>
                    <xsl:if test="ns2:LotsDFF/ns7:Attribute13 and ns2:LotsDFF/ns7:Attribute13 != '' ">
                      <top:attribute13>
                        <xsl:value-of select="ns2:LotsDFF/ns7:Attribute13"/>
                      </top:attribute13>
                    </xsl:if>
                    <xsl:if test="ns2:LotsDFF/ns7:Attribute14 and ns2:LotsDFF/ns7:Attribute14 != '' ">
                      <top:attribute14>
                        <xsl:value-of select="ns2:LotsDFF/ns7:Attribute14"/>
                      </top:attribute14>
                    </xsl:if>
                    <xsl:if test="ns2:LotsDFF/ns7:Attribute15 and ns2:LotsDFF/ns7:Attribute15 != '' ">
                      <top:attribute15>
                        <xsl:value-of select="ns2:LotsDFF/ns7:Attribute15"/>
                      </top:attribute15>
                    </xsl:if>
                    <xsl:if test="ns2:LotsDFF/ns7:Attribute2 and ns2:LotsDFF/ns7:Attribute2 != '' ">
                      <top:attribute2>
                        <xsl:value-of select="ns2:LotsDFF/ns7:Attribute2"/>
                      </top:attribute2>
                    </xsl:if>
                    <xsl:if test="ns2:LotsDFF/ns7:Attribute3 and ns2:LotsDFF/ns7:Attribute3 != '' ">
                      <top:attribute3>
                        <xsl:value-of select="ns2:LotsDFF/ns7:Attribute3"/>
                      </top:attribute3>
                    </xsl:if>
                    <xsl:if test="ns2:LotsDFF/ns7:Attribute4 and ns2:LotsDFF/ns7:Attribute4 != '' ">
                      <top:attribute4>
                        <xsl:value-of select="ns2:LotsDFF/ns7:Attribute4"/>
                      </top:attribute4>
                    </xsl:if>
                    <xsl:if test="ns2:LotsDFF/ns7:Attribute5 and ns2:LotsDFF/ns7:Attribute5 != '' ">
                      <top:attribute5>
                        <xsl:value-of select="ns2:LotsDFF/ns7:Attribute5"/>
                      </top:attribute5>
                    </xsl:if>
                    <xsl:if test="ns2:LotsDFF/ns7:Attribute6 and ns2:LotsDFF/ns7:Attribute6 != '' ">
                      <top:attribute6>
                        <xsl:value-of select="ns2:LotsDFF/ns7:Attribute6"/>
                      </top:attribute6>
                    </xsl:if>
                    <xsl:if test="ns2:LotsDFF/ns7:Attribute7 and ns2:LotsDFF/ns7:Attribute7 != '' ">
                      <top:attribute7>
                        <xsl:value-of select="ns2:LotsDFF/ns7:Attribute7"/>
                      </top:attribute7>
                    </xsl:if>
                    <xsl:if test="ns2:LotsDFF/ns7:Attribute8 and ns2:LotsDFF/ns7:Attribute8 != '' ">
                      <top:attribute8>
                        <xsl:value-of select="ns2:LotsDFF/ns7:Attribute8"/>
                      </top:attribute8>
                    </xsl:if>
                    <xsl:if test="ns2:LotsDFF/ns7:Attribute9 and ns2:LotsDFF/ns7:Attribute9 != '' ">
                      <top:attribute9>
                        <xsl:value-of select="ns2:LotsDFF/ns7:Attribute9"/>
                      </top:attribute9>
                    </xsl:if>
                    <xsl:if test="ns2:LotsDFF/ns7:AttributeCategory and ns2:LotsDFF/ns7:AttributeCategory != '' ">
                      <top:attributeCategory>
                        <xsl:value-of select="ns2:LotsDFF/ns7:AttributeCategory"/>
                      </top:attributeCategory>
                    </xsl:if>
                    <xsl:if test="ns2:BestByDate and ns2:BestByDate != '' ">
                      <top:bestByDate>
                        <xsl:value-of select="ns2:BestByDate"/>
                      </top:bestByDate>
                    </xsl:if>
                    <xsl:if test="ns2:ChangeDate and ns2:ChangeDate != '' ">
                      <top:changeDate>
                        <xsl:value-of select="ns2:ChangeDate"/>
                      </top:changeDate>
                    </xsl:if>
                    <xsl:if test="ns2:Color and ns2:Color != '' ">
                      <top:color>
                        <xsl:value-of select="ns2:Color"/>
                      </top:color>
                    </xsl:if>
                    <xsl:if test="ns2:CountryOfOrigin and ns2:CountryOfOrigin != '' ">
                      <top:countryOfOrigin>
                        <xsl:value-of select="ns2:CountryOfOrigin"/>
                      </top:countryOfOrigin>
                    </xsl:if>
                    <xsl:choose>
                      <xsl:when test="ns2:WhoColumns/ns3:CreatedBy and ns2:WhoColumns/ns3:CreatedBy != ''">
                        <top:createdBy>
                          <xsl:value-of select="ns2:WhoColumns/ns3:CreatedBy"/>
                        </top:createdBy>
                      </xsl:when>
                      <xsl:otherwise>
                        <top:createdBy>
                          <xsl:value-of select='dvm:lookupValue("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_USER_NAME_DIVISION_MAP.dvm","DIVISION","NSNE","EBS_USER_ID","")'/>
                        </top:createdBy>
                      </xsl:otherwise>
                    </xsl:choose>
                    <!--xsl:if test="ns2:WhoColumns/ns3:CreatedBy and ns2:WhoColumns/ns3:CreatedBy != '' ">
                      <top:createdBy>
                        <xsl:value-of select="ns2:WhoColumns/ns3:CreatedBy"/>
                      </top:createdBy>
                    </xsl:if-->
                    <xsl:choose>
                      <xsl:when test="ns2:WhoColumns/ns3:CreationDate and ns2:WhoColumns/ns3:CreationDate != ''">
                        <top:creationDate>
                          <xsl:value-of select="ns2:WhoColumns/ns3:CreationDate"/>
                        </top:creationDate>
                      </xsl:when>
                      <xsl:otherwise>
                        <top:creationDate>
                          <xsl:value-of select="xp20:current-dateTime()"/>
                        </top:creationDate>
                      </xsl:otherwise>
                    </xsl:choose>
                    <!--xsl:if test="ns2:WhoColumns/ns3:CreationDate and ns2:WhoColumns/ns3:CreationDate != '' ">
                      <top:creationDate>
                        <xsl:value-of select="ns2:WhoColumns/ns3:CreationDate"/>
                      </top:creationDate>
                    </xsl:if-->
                    <xsl:if test="ns2:CurlWrinkleFold and ns2:CurlWrinkleFold != '' ">
                      <top:curlWrinkleFold>
                        <xsl:value-of select="ns2:CurlWrinkleFold"/>
                      </top:curlWrinkleFold>
                    </xsl:if>
                    <!--xsl:if test="ns2:CAttrDFF/ns7:AttributeCategory and ns2:CAttr/ns7:AttributeCategory != '' ">
                      <top:CAttributeCategory>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:AttributeCategory"/>
                      </top:CAttributeCategory>
                    </xsl:if-->
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute1 and ns2:CAttrDFF/ns7:Attribute1 != '' ">
                      <top:cAttribute1>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute1"/>
                      </top:cAttribute1>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute10 and ns2:CAttrDFF/ns7:Attribute10 != '' ">
                      <top:cAttribute10>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute10"/>
                      </top:cAttribute10>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute11 and ns2:CAttrDFF/ns7:Attribute11 != '' ">
                      <top:cAttribute11>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute11"/>
                      </top:cAttribute11>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute12 and ns2:CAttrDFF/ns7:Attribute12 != '' ">
                      <top:cAttribute12>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute12"/>
                      </top:cAttribute12>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute13 and ns2:CAttrDFF/ns7:Attribute13 != '' ">
                      <top:cAttribute13>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute13"/>
                      </top:cAttribute13>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute14 and ns2:CAttrDFF/ns7:Attribute14 != '' ">
                      <top:cAttribute14>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute14"/>
                      </top:cAttribute14>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute15 and ns2:CAttrDFF/ns7:Attribute15 != '' ">
                      <top:cAttribute15>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute15"/>
                      </top:cAttribute15>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute16 and ns2:CAttrDFF/ns7:Attribute16 != '' ">
                      <top:cAttribute16>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute16"/>
                      </top:cAttribute16>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute17 and ns2:CAttrDFF/ns7:Attribute17 != '' ">
                      <top:cAttribute17>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute17"/>
                      </top:cAttribute17>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute18 and ns2:CAttrDFF/ns7:Attribute18 != '' ">
                      <top:cAttribute18>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute18"/>
                      </top:cAttribute18>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute19 and ns2:CAttrDFF/ns7:Attribute19 != '' ">
                      <top:cAttribute19>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute19"/>
                      </top:cAttribute19>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute2 and ns2:CAttrDFF/ns7:Attribute2 != '' ">
                      <top:cAttribute2>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute2"/>
                      </top:cAttribute2>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute20 and ns2:CAttrDFF/ns7:Attribute20 != '' ">
                      <top:cAttribute20>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute20"/>
                      </top:cAttribute20>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute21 and ns2:CAttrDFF/ns7:Attribute21 != '' ">
                      <top:cAttribute21>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute21"/>
                      </top:cAttribute21>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute22 and ns2:CAttrDFF/ns7:Attribute22 != '' ">
                      <top:cAttribute22>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute22"/>
                      </top:cAttribute22>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute23 and ns2:CAttrDFF/ns7:Attribute23 != '' ">
                      <top:cAttribute23>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute23"/>
                      </top:cAttribute23>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute24 and ns2:CAttrDFF/ns7:Attribute24 != '' ">
                      <top:cAttribute24>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute24"/>
                      </top:cAttribute24>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute25 and ns2:CAttrDFF/ns7:Attribute25 != '' ">
                      <top:cAttribute25>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute25"/>
                      </top:cAttribute25>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute26 and ns2:CAttrDFF/ns7:Attribute26 != '' ">
                      <top:cAttribute26>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute26"/>
                      </top:cAttribute26>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute27 and ns2:CAttrDFF/ns7:Attribute27 != '' ">
                      <top:cAttribute27>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute27"/>
                      </top:cAttribute27>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute28 and ns2:CAttrDFF/ns7:Attribute28 != '' ">
                      <top:cAttribute28>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute28"/>
                      </top:cAttribute28>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute29 and ns2:CAttrDFF/ns7:Attribute29 != '' ">
                      <top:cAttribute29>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute29"/>
                      </top:cAttribute29>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute3 and ns2:CAttrDFF/ns7:Attribute3 != '' ">
                      <top:cAttribute3>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute3"/>
                      </top:cAttribute3>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute30 and ns2:CAttrDFF/ns7:Attribute30 != '' ">
                      <top:cAttribute30>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute30"/>
                      </top:cAttribute30>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute4 and ns2:CAttrDFF/ns7:Attribute4 != '' ">
                      <top:cAttribute4>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute4"/>
                      </top:cAttribute4>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute5 and ns2:CAttrDFF/ns7:Attribute5 != '' ">
                      <top:cAttribute5>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute5"/>
                      </top:cAttribute5>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute6 and ns2:CAttrDFF/ns7:Attribute6 != '' ">
                      <top:cAttribute6>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute6"/>
                      </top:cAttribute6>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute7 and ns2:CAttrDFF/ns7:Attribute7 != '' ">
                      <top:cAttribute7>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute7"/>
                      </top:cAttribute7>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute8 and ns2:CAttrDFF/ns7:Attribute8 != '' ">
                      <top:cAttribute8>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute8"/>
                      </top:cAttribute8>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute9 and ns2:CAttrDFF/ns7:Attribute9 != '' ">
                      <top:cAttribute9>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute9"/>
                      </top:cAttribute9>
                    </xsl:if>
                    <xsl:if test="ns2:DateCode and ns2:DateCode != '' ">
                      <top:dateCode>
                        <xsl:value-of select="ns2:DateCode"/>
                      </top:dateCode>
                    </xsl:if>
                    <xsl:if test="ns2:Description and ns2:Description != '' ">
                      <top:description>
                        <xsl:value-of select="ns2:Description"/>
                      </top:description>
                    </xsl:if>
                    <!--xsl:if test="ns2:DAttrDFF/ns7:AttributeCategory and ns2:DAttr/ns7:AttributeCategory != '' ">
                      <top:DAttributeCategory>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:AttributeCategory"/>
                      </top:DAttributeCategory>
                    </xsl:if-->
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute1 and ns2:DAttrDFF/ns7:Attribute1 != '' ">
                      <top:dAttribute1>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute1"/>
                      </top:dAttribute1>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute10 and ns2:DAttrDFF/ns7:Attribute10 != '' ">
                      <top:dAttribute10>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute10"/>
                      </top:dAttribute10>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute11 and ns2:DAttrDFF/ns7:Attribute11 != '' ">
                      <top:dAttribute11>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute11"/>
                      </top:dAttribute11>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute12 and ns2:DAttrDFF/ns7:Attribute12 != '' ">
                      <top:dAttribute12>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute12"/>
                      </top:dAttribute12>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute13 and ns2:DAttrDFF/ns7:Attribute13 != '' ">
                      <top:dAttribute13>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute13"/>
                      </top:dAttribute13>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute14 and ns2:DAttrDFF/ns7:Attribute14 != '' ">
                      <top:dAttribute14>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute14"/>
                      </top:dAttribute14>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute15 and ns2:DAttrDFF/ns7:Attribute15 != '' ">
                      <top:dAttribute15>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute15"/>
                      </top:dAttribute15>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute16 and ns2:DAttrDFF/ns7:Attribute16 != '' ">
                      <top:dAttribute16>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute16"/>
                      </top:dAttribute16>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute17 and ns2:DAttrDFF/ns7:Attribute17 != '' ">
                      <top:dAttribute17>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute17"/>
                      </top:dAttribute17>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute18 and ns2:DAttrDFF/ns7:Attribute18 != '' ">
                      <top:dAttribute18>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute18"/>
                      </top:dAttribute18>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute19 and ns2:DAttrDFF/ns7:Attribute19 != '' ">
                      <top:dAttribute19>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute19"/>
                      </top:dAttribute19>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute2 and ns2:DAttrDFF/ns7:Attribute2 != '' ">
                      <top:dAttribute2>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute2"/>
                      </top:dAttribute2>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute20 and ns2:DAttrDFF/ns7:Attribute20 != '' ">
                      <top:dAttribute20>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute20"/>
                      </top:dAttribute20>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute3 and ns2:DAttrDFF/ns7:Attribute3 != '' ">
                      <top:dAttribute3>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute3"/>
                      </top:dAttribute3>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute4 and ns2:DAttrDFF/ns7:Attribute4 != '' ">
                      <top:dAttribute4>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute4"/>
                      </top:dAttribute4>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute5 and ns2:DAttrDFF/ns7:Attribute5 != '' ">
                      <top:dAttribute5>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute5"/>
                      </top:dAttribute5>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute6 and ns2:DAttrDFF/ns7:Attribute6 != '' ">
                      <top:dAttribute6>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute6"/>
                      </top:dAttribute6>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute7 and ns2:DAttrDFF/ns7:Attribute7 != '' ">
                      <top:dAttribute7>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute7"/>
                      </top:dAttribute7>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute8 and ns2:DAttrDFF/ns7:Attribute8 != '' ">
                      <top:dAttribute8>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute8"/>
                      </top:dAttribute8>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute9 and ns2:DAttrDFF/ns7:Attribute9 != '' ">
                      <top:dAttribute9>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute9"/>
                      </top:dAttribute9>
                    </xsl:if>
                    <xsl:if test="ns2:ErrorCode and ns2:ErrorCode != '' ">
                      <top:errorCode>
                        <xsl:value-of select="ns2:ErrorCode"/>
                      </top:errorCode>
                    </xsl:if>
                    <xsl:if test="ns2:ExpirationActionCode and ns2:ExpirationActionCode != '' ">
                      <top:expirationActionCode>
                        <xsl:value-of select="ns2:ExpirationActionCode"/>
                      </top:expirationActionCode>
                    </xsl:if>
                    <xsl:if test="ns2:ExpirationActionDate and ns2:ExpirationActionDate != '' ">
                      <top:expirationActionDate>
                        <xsl:value-of select="ns2:ExpirationActionDate"/>
                      </top:expirationActionDate>
                    </xsl:if>
                    <xsl:if test="ns2:GradeCode and ns2:GradeCode != '' ">
                      <top:gradeCode>
                        <xsl:value-of select="ns2:GradeCode"/>
                      </top:gradeCode>
                    </xsl:if>
                    <xsl:if test="ns2:HoldDate and ns2:HoldDate != '' ">
                      <top:holdDate>
                        <xsl:value-of select="ns2:HoldDate"/>
                      </top:holdDate>
                    </xsl:if>
                    <xsl:if test="ns2:ItemSize and ns2:ItemSize != '' ">
                      <top:itemSize>
                        <xsl:value-of select="ns2:ItemSize"/>
                      </top:itemSize>
                    </xsl:if>
                    <xsl:if test="ns2:KillDate and ns2:KillDate != '' ">
                      <top:killDate>
                        <xsl:value-of select="ns2:KillDate"/>
                      </top:killDate>
                    </xsl:if>
                    <xsl:choose>
                      <xsl:when test="ns2:WhoColumns/ns3:LastUpdatedBy and ns2:WhoColumns/ns3:LastUpdatedBy != ''">
                        <top:lastUpdatedBy>
                          <xsl:value-of select="ns2:WhoColumns/ns3:LastUpdatedBy"/>
                        </top:lastUpdatedBy>
                      </xsl:when>
                      <xsl:otherwise>
                        <top:lastUpdatedBy>
                          <xsl:value-of select='dvm:lookupValue("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_USER_NAME_DIVISION_MAP.dvm","DIVISION","NSNE","EBS_USER_ID","")'/>
                        </top:lastUpdatedBy>
                      </xsl:otherwise>
                    </xsl:choose>
                    <!--xsl:if test="ns2:WhoColumns/ns3:LastUpdatedBy and ns2:WhoColumns/ns3:LastUpdatedBy != '' ">
                      <top:lastUpdatedBy>
                        <xsl:value-of select="ns2:WhoColumns/ns3:LastUpdatedBy"/>
                      </top:lastUpdatedBy>
                    </xsl:if-->
                    <xsl:choose>
                      <xsl:when test="ns2:WhoColumns/ns3:LastUpdateDate and ns2:WhoColumns/ns3:LastUpdateDate != ''">
                        <top:lastUpdateDate>
                          <xsl:value-of select="ns2:WhoColumns/ns3:LastUpdateDate"/>
                        </top:lastUpdateDate>
                      </xsl:when>
                      <xsl:otherwise>
                        <top:lastUpdateDate>
                          <xsl:value-of select="xp20:current-dateTime()"/>
                        </top:lastUpdateDate>
                      </xsl:otherwise>
                    </xsl:choose>
                    <!--xsl:if test="ns2:WhoColumns/ns3:LastUpdateDate and ns2:WhoColumns/ns3:LastUpdateDate != '' ">
                      <top:lastUpdateDate>
                        <xsl:value-of select="ns2:WhoColumns/ns3:LastUpdateDate"/>
                      </top:lastUpdateDate>
                    </xsl:if-->
                    <xsl:choose>
                      <xsl:when test="ns2:WhoColumns/ns3:LastUpdateLogin and ns2:WhoColumns/ns3:LastUpdateLogin != ''">
                        <top:lastUpdateLogin>
                          <xsl:value-of select="ns2:WhoColumns/ns3:LastUpdateLogin"/>
                        </top:lastUpdateLogin>
                      </xsl:when>
                      <xsl:otherwise>
                        <top:lastUpdateLogin>
                          <xsl:value-of select='dvm:lookupValue("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_USER_NAME_DIVISION_MAP.dvm","DIVISION","NSNE","EBS_USER_ID","")'/>
                        </top:lastUpdateLogin>
                      </xsl:otherwise>
                    </xsl:choose>
                    <!--xsl:if test="ns2:WhoColumns/ns3:LastUpdateLogin and ns2:WhoColumns/ns3:LastUpdateLogin != '' ">
                      <top:lastUpdateLogin>
                        <xsl:value-of select="ns2:WhoColumns/ns3:LastUpdateLogin"/>
                      </top:lastUpdateLogin>
                    </xsl:if-->
                    <xsl:if test="ns2:Length and ns2:Length != '' ">
                      <top:length>
                        <xsl:value-of select="ns2:Length"/>
                      </top:length>
                    </xsl:if>
                    <!--xsl:if test="ns2:NAttrDFF/ns7:AttributeCategory and ns2:NAttr/ns7:AttributeCategory != '' ">
                      <top:NAttributeCategory>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:AttributeCategory"/>
                      </top:NAttributeCategory>
                    </xsl:if-->
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute1 and ns2:NAttrDFF/ns7:Attribute1 != '' ">
                      <top:nAttribute1>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute1"/>
                      </top:nAttribute1>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute10 and ns2:NAttrDFF/ns7:Attribute10 != '' ">
                      <top:nAttribute10>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute10"/>
                      </top:nAttribute10>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute11 and ns2:NAttrDFF/ns7:Attribute11 != '' ">
                      <top:nAttribute11>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute11"/>
                      </top:nAttribute11>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute12 and ns2:NAttrDFF/ns7:Attribute12 != '' ">
                      <top:nAttribute12>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute12"/>
                      </top:nAttribute12>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute13 and ns2:NAttrDFF/ns7:Attribute13 != '' ">
                      <top:nAttribute13>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute13"/>
                      </top:nAttribute13>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute14 and ns2:NAttrDFF/ns7:Attribute14 != '' ">
                      <top:nAttribute14>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute14"/>
                      </top:nAttribute14>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute15 and ns2:NAttrDFF/ns7:Attribute15 != '' ">
                      <top:nAttribute15>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute15"/>
                      </top:nAttribute15>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute16 and ns2:NAttrDFF/ns7:Attribute16 != '' ">
                      <top:nAttribute16>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute16"/>
                      </top:nAttribute16>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute17 and ns2:NAttrDFF/ns7:Attribute17 != '' ">
                      <top:nAttribute17>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute17"/>
                      </top:nAttribute17>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute18 and ns2:NAttrDFF/ns7:Attribute18 != '' ">
                      <top:nAttribute18>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute18"/>
                      </top:nAttribute18>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute19 and ns2:NAttrDFF/ns7:Attribute19 != '' ">
                      <top:nAttribute19>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute19"/>
                      </top:nAttribute19>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute2 and ns2:NAttrDFF/ns7:Attribute2 != '' ">
                      <top:nAttribute2>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute2"/>
                      </top:nAttribute2>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute20 and ns2:NAttrDFF/ns7:Attribute20 != '' ">
                      <top:nAttribute20>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute20"/>
                      </top:nAttribute20>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute21 and ns2:NAttrDFF/ns7:Attribute21 != '' ">
                      <top:nAttribute21>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute21"/>
                      </top:nAttribute21>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute22 and ns2:NAttrDFF/ns7:Attribute22 != '' ">
                      <top:nAttribute22>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute22"/>
                      </top:nAttribute22>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute23 and ns2:NAttrDFF/ns7:Attribute23 != '' ">
                      <top:nAttribute23>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute23"/>
                      </top:nAttribute23>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute24 and ns2:NAttrDFF/ns7:Attribute24 != '' ">
                      <top:nAttribute24>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute24"/>
                      </top:nAttribute24>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute25 and ns2:NAttrDFF/ns7:Attribute25 != '' ">
                      <top:nAttribute25>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute25"/>
                      </top:nAttribute25>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute26 and ns2:NAttrDFF/ns7:Attribute26 != '' ">
                      <top:nAttribute26>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute26"/>
                      </top:nAttribute26>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute27 and ns2:NAttrDFF/ns7:Attribute27 != '' ">
                      <top:nAttribute27>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute27"/>
                      </top:nAttribute27>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute28 and ns2:NAttrDFF/ns7:Attribute28 != '' ">
                      <top:nAttribute28>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute28"/>
                      </top:nAttribute28>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute29 and ns2:NAttrDFF/ns7:Attribute29 != '' ">
                      <top:nAttribute29>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute29"/>
                      </top:nAttribute29>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute3 and ns2:NAttrDFF/ns7:Attribute3 != '' ">
                      <top:nAttribute3>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute3"/>
                      </top:nAttribute3>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute30 and ns2:NAttrDFF/ns7:Attribute30 != '' ">
                      <top:nAttribute30>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute30"/>
                      </top:nAttribute30>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute4 and ns2:NAttrDFF/ns7:Attribute4 != '' ">
                      <top:nAttribute4>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute4"/>
                      </top:nAttribute4>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute5 and ns2:NAttrDFF/ns7:Attribute5 != '' ">
                      <top:nAttribute5>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute5"/>
                      </top:nAttribute5>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute6 and ns2:NAttrDFF/ns7:Attribute6 != '' ">
                      <top:nAttribute6>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute6"/>
                      </top:nAttribute6>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute7 and ns2:NAttrDFF/ns7:Attribute7 != '' ">
                      <top:nAttribute7>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute7"/>
                      </top:nAttribute7>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute8 and ns2:NAttrDFF/ns7:Attribute8 != '' ">
                      <top:nAttribute8>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute8"/>
                      </top:nAttribute8>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute9 and ns2:NAttrDFF/ns7:Attribute9 != '' ">
                      <top:nAttribute9>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute9"/>
                      </top:nAttribute9>
                    </xsl:if>
                    <xsl:if test="ns2:LengthUom/ns1:Code and ns2:LengthUom/ns1:Code != '' ">
                      <top:lengthUom>
                        <xsl:value-of select="ns2:LengthUom/ns1:Code"/>
                      </top:lengthUom>
                    </xsl:if>
                    <xsl:if test="ns2:LotAttributeCategory and ns2:LotAttributeCategory != '' ">
                      <top:lotAttributeCategory>
                        <xsl:value-of select="ns2:LotAttributeCategory"/>
                      </top:lotAttributeCategory>
                    </xsl:if>
                    <xsl:if test="ns2:LotExpirationDate and ns2:LotExpirationDate != '' ">
                      <top:lotExpirationDate>
                        <xsl:value-of select="ns2:LotExpirationDate"/>
                      </top:lotExpirationDate>
                    </xsl:if>
                    <xsl:if test="ns2:LotNumber and ns2:LotNumber != '' ">
                      <top:lotNumber>
                        <xsl:value-of select="ns2:LotNumber"/>
                      </top:lotNumber>
                    </xsl:if>
                    <xsl:if test="ns2:MaturityDate and ns2:MaturityDate != '' ">
                      <top:maturityDate>
                        <xsl:value-of select="ns2:MaturityDate"/>
                      </top:maturityDate>
                    </xsl:if>
                    <xsl:if test="ns2:OriginationDate and ns2:OriginationDate != '' ">
                      <top:originationDate>
                        <xsl:value-of select="ns2:OriginationDate"/>
                      </top:originationDate>
                    </xsl:if>
                    <xsl:if test="ns2:OriginationType and ns2:OriginationType != '' ">
                      <top:originationType>
                        <xsl:value-of select="ns2:OriginationType"/>
                      </top:originationType>
                    </xsl:if>
                    <xsl:if test="ns2:ParentItemId and ns2:ParentItemId != '' ">
                      <top:parentItemId>
                        <xsl:value-of select="ns2:ParentItemId"/>
                      </top:parentItemId>
                    </xsl:if>
                    <xsl:if test="ns2:ParentLotNumber and ns2:ParentLotNumber != '' ">
                      <top:parentLotNumber>
                        <xsl:value-of select="ns2:ParentLotNumber"/>
                      </top:parentLotNumber>
                    </xsl:if>
                    <xsl:if test="ns2:ParentObjectId and ns2:ParentObjectId != '' ">
                      <top:parentObjectId>
                        <xsl:value-of select="ns2:ParentObjectId"/>
                      </top:parentObjectId>
                    </xsl:if>
                    <xsl:if test="ns2:ParentObjectId2 and ns2:ParentObjectId2 != '' ">
                      <top:parentObjectId2>
                        <xsl:value-of select="ns2:ParentObjectId2"/>
                      </top:parentObjectId2>
                    </xsl:if>
                    <xsl:if test="ns2:ParentObjectNumber and ns2:ParentObjectNumber != '' ">
                      <top:parentObjectNumber>
                        <xsl:value-of select="ns2:ParentObjectNumber"/>
                      </top:parentObjectNumber>
                    </xsl:if>
                    <xsl:if test="ns2:ParentObjectNumber2 and ns2:ParentObjectNumber2 != '' ">
                      <top:parentObjectNumber2>
                        <xsl:value-of select="ns2:ParentObjectNumber2"/>
                      </top:parentObjectNumber2>
                    </xsl:if>
                    <xsl:if test="ns2:ParentObjectType and ns2:ParentObjectType != '' ">
                      <top:parentObjectType>
                        <xsl:value-of select="ns2:ParentObjectType"/>
                      </top:parentObjectType>
                    </xsl:if>
                    <xsl:if test="ns2:ParentObjectType2 and ns2:ParentObjectType2 != '' ">
                      <top:parentObjectType2>
                        <xsl:value-of select="ns2:ParentObjectType2"/>
                      </top:parentObjectType2>
                    </xsl:if>
                    <xsl:if test="ns2:PlaceOfOrigin and ns2:PlaceOfOrigin != '' ">
                      <top:placeOfOrigin>
                        <xsl:value-of select="ns2:PlaceOfOrigin"/>
                      </top:placeOfOrigin>
                    </xsl:if>
                    <xsl:if test="ns2:PrimaryQuantity and ns2:PrimaryQuantity != '' ">
                      <top:primaryQuantity>
                        <xsl:value-of select="ns2:PrimaryQuantity"/>
                      </top:primaryQuantity>
                    </xsl:if>
                    <xsl:if test="ns2:ProcessFlag and ns2:ProcessFlag != '' ">
                      <top:processFlag>
                        <xsl:value-of select="ns2:ProcessFlag"/>
                      </top:processFlag>
                    </xsl:if>
                    <xsl:if test="ns2:ProductCode and ns2:ProductCode != '' ">
                      <top:productCode>
                        <xsl:value-of select="ns2:ProductCode"/>
                      </top:productCode>
                    </xsl:if>
                    <xsl:if test="ns2:ProductTransactionId and ns2:ProductTransactionId != '' ">
                      <top:productTransactionId>
                        <xsl:value-of select="ns2:ProductTransactionId"/>
                      </top:productTransactionId>
                    </xsl:if>
                    <xsl:if test="ns2:ProgramApplicationId and ns2:ProgramApplicationId != '' ">
                      <top:programApplicationId>
                        <xsl:value-of select="ns2:ProgramApplicationId"/>
                      </top:programApplicationId>
                    </xsl:if>
                    <xsl:if test="ns2:ProgramId and ns2:ProgramId != '' ">
                      <top:programId>
                        <xsl:value-of select="ns2:ProgramId"/>
                      </top:programId>
                    </xsl:if>
                    <xsl:if test="ns2:ProgramUpdateDate and ns2:ProgramUpdateDate != '' ">
                      <top:programUpdateDate>
                        <xsl:value-of select="ns2:ProgramUpdateDate"/>
                      </top:programUpdateDate>
                    </xsl:if>
                    <xsl:if test="ns2:ReasonCode and ns2:ReasonCode != '' ">
                      <top:reasonCode>
                        <xsl:value-of select="ns2:ReasonCode"/>
                      </top:reasonCode>
                    </xsl:if>
                    <xsl:if test="ns2:ReasonId and ns2:ReasonId != '' ">
                      <top:reasonId>
                        <xsl:value-of select="ns2:ReasonId"/>
                      </top:reasonId>
                    </xsl:if>
                    <xsl:if test="ns2:RecycledContent and ns2:RecycledContent != '' ">
                      <top:recycledContent>
                        <xsl:value-of select="ns2:RecycledContent"/>
                      </top:recycledContent>
                    </xsl:if>
                    <xsl:if test="ns2:RequestId and ns2:RequestId != '' ">
                      <top:requestId>
                        <xsl:value-of select="ns2:RequestId"/>
                      </top:requestId>
                    </xsl:if>
                    <xsl:if test="ns2:RetestDate and ns2:RetestDate != '' ">
                      <top:retestDate>
                        <xsl:value-of select="ns2:RetestDate"/>
                      </top:retestDate>
                    </xsl:if>
                    <xsl:if test="ns2:SecondaryTransactionQuantity and ns2:SecondaryTransactionQuantity != '' ">
                      <top:secondaryTransactionQuantity>
                        <xsl:value-of select="ns2:SecondaryTransactionQuantity"/>
                      </top:secondaryTransactionQuantity>
                    </xsl:if>
                    <xsl:if test="ns2:SerialTransactionTempId and ns2:SerialTransactionTempId != '' ">
                      <top:serialTransactionTempId>
                        <xsl:value-of select="ns2:SerialTransactionTempId"/>
                      </top:serialTransactionTempId>
                    </xsl:if>
                    <xsl:if test="ns2:SourceCode and ns2:SourceCode != '' ">
                      <top:sourceCode>
                        <xsl:value-of select="ns2:SourceCode"/>
                      </top:sourceCode>
                    </xsl:if>
                    <xsl:if test="ns2:SourceLineId and ns2:SourceLineId != '' ">
                      <top:sourceLineId>
                        <xsl:value-of select="ns2:SourceLineId"/>
                      </top:sourceLineId>
                    </xsl:if>
                    <xsl:if test="ns2:StatusId and ns2:StatusId != '' ">
                      <top:statusId>
                        <xsl:value-of select="ns2:StatusId"/>
                      </top:statusId>
                    </xsl:if>
                    <xsl:if test="ns2:SublotNum and ns2:SublotNum != '' ">
                      <top:sublotNum>
                        <xsl:value-of select="ns2:SublotNum"/>
                      </top:sublotNum>
                    </xsl:if>
                    <xsl:if test="ns2:SupplierLotNumber and ns2:SupplierLotNumber != '' ">
                      <top:supplierLotNumber>
                        <xsl:value-of select="ns2:SupplierLotNumber"/>
                      </top:supplierLotNumber>
                    </xsl:if>
                    <xsl:if test="ns2:TerritoryCode and ns2:TerritoryCode != '' ">
                      <top:territoryCode>
                        <xsl:value-of select="ns2:TerritoryCode"/>
                      </top:territoryCode>
                    </xsl:if>
                    <xsl:if test="ns2:Thickness and ns2:Thickness != '' ">
                      <top:thickness>
                        <xsl:value-of select="ns2:Thickness"/>
                      </top:thickness>
                    </xsl:if>
                    <xsl:if test="ns2:ThicknessUom/ns1:Code and ns2:ThicknessUom/ns1:Code != '' ">
                      <top:thicknessUom>
                        <xsl:value-of select="ns2:ThicknessUom/ns1:Code"/>
                      </top:thicknessUom>
                    </xsl:if>
                    <xsl:choose>
                      <xsl:when test="ns2:TransactionInterfaceId and ns2:TransactionInterfaceId != ''">
                        <top:transactionInterfaceId>
                          <xsl:value-of select="ns2:TransactionInterfaceId"/>
                        </top:transactionInterfaceId>
                      </xsl:when>
                      <xsl:otherwise>
                        <top:transactionInterfaceId>
                            <xsl:value-of select='oraext:sequence-next-val("MTL_MATERIAL_TRANSACTIONS_S","jdbc/ebsapps")'/>
                          </top:transactionInterfaceId>
                      </xsl:otherwise>
                    </xsl:choose>
                    <!--xsl:if test="ns2:TransactionInterfaceId and ns2:TransactionInterfaceId != '' ">
                      <top:transactionInterfaceId>
                        <xsl:value-of select="ns2:TransactionInterfaceId"/>
                      </top:transactionInterfaceId>
                    </xsl:if-->
                    <xsl:if test="ns2:TransactionQuantity and ns2:TransactionQuantity != '' ">
                      <top:transactionQuantity>
                        <xsl:value-of select="ns2:TransactionQuantity"/>
                      </top:transactionQuantity>
                    </xsl:if>
                    <xsl:if test="ns2:VendorId and ns2:VendorId != '' ">
                      <top:vendorId>
                        <xsl:value-of select="ns2:VendorId"/>
                      </top:vendorId>
                    </xsl:if>
                    <xsl:if test="ns2:VendorName and ns2:VendorName != '' ">
                      <top:vendorName>
                        <xsl:value-of select="ns2:VendorName"/>
                      </top:vendorName>
                    </xsl:if>
                    <xsl:if test="ns2:Volume and ns2:Volume != '' ">
                      <top:volume>
                        <xsl:value-of select="ns2:Volume"/>
                      </top:volume>
                    </xsl:if>
                    <xsl:if test="ns2:VolumeUom/ns1:Code and ns2:VolumeUom/ns1:Code != '' ">
                      <top:volumeUom>
                        <xsl:value-of select="ns2:VolumeUom/ns1:Code"/>
                      </top:volumeUom>
                    </xsl:if>
                    <xsl:if test="ns2:Width and ns2:Width != '' ">
                      <top:width>
                        <xsl:value-of select="ns2:Width"/>
                      </top:width>
                    </xsl:if>
                    <xsl:if test="ns2:WidthUom/ns1:Code and ns2:WidthUom/ns1:Code != '' ">
                      <top:widthUom>
                        <xsl:value-of select="ns2:WidthUom/ns1:Code"/>
                      </top:widthUom>
                    </xsl:if>
                  </top:MtlTransactionLotsInterface>
                </xsl:for-each>
              </top:mtlTransactionLotsInterfaceCollection>
              <top:mtlSerialNumbersInterfaceCollection>
                <xsl:for-each select="ns2:ListOfSerialTxns/ns2:SerialTransaction">
                  <top:MtlSerialNumbersInterface>
                    <xsl:if test="ns2:CountryOfOrigin and ns2:CountryOfOrigin != '' ">
                      <top:countryOfOrigin>
                        <xsl:value-of select="ns2:CountryOfOrigin"/>
                      </top:countryOfOrigin>
                    </xsl:if>
                    <xsl:if test="ns2:CyclesSinceMark and ns2:CyclesSinceMark != '' ">
                      <top:cyclesSinceMark>
                        <xsl:value-of select="ns2:CyclesSinceMark"/>
                      </top:cyclesSinceMark>
                    </xsl:if>
                    <xsl:if test="ns2:CyclesSinceNew and ns2:CyclesSinceNew != '' ">
                      <top:cyclesSinceNew>
                        <xsl:value-of select="ns2:CyclesSinceNew"/>
                      </top:cyclesSinceNew>
                    </xsl:if>
                    <xsl:if test="ns2:CyclesSinceOverhaul and ns2:CyclesSinceOverhaul != '' ">
                      <top:cyclesSinceOverhaul>
                        <xsl:value-of select="ns2:CyclesSinceOverhaul"/>
                      </top:cyclesSinceOverhaul>
                    </xsl:if>
                    <xsl:if test="ns2:CyclesSinceRepair and ns2:CyclesSinceRepair != '' ">
                      <top:cyclesSinceRepair>
                        <xsl:value-of select="ns2:CyclesSinceRepair"/>
                      </top:cyclesSinceRepair>
                    </xsl:if>
                    <xsl:if test="ns2:CyclesSinceVisit and ns2:CyclesSinceVisit != '' ">
                      <top:cyclesSinceVisit>
                        <xsl:value-of select="ns2:CyclesSinceVisit"/>
                      </top:cyclesSinceVisit>
                    </xsl:if>
                    <xsl:if test="ns2:ErrorCode and ns2:ErrorCode != '' ">
                      <top:errorCode>
                        <xsl:value-of select="ns2:ErrorCode"/>
                      </top:errorCode>
                    </xsl:if>
                    <xsl:if test="ns2:FmSerialNumber and ns2:FmSerialNumber != '' ">
                      <top:fmSerialNumber>
                        <xsl:value-of select="ns2:FmSerialNumber"/>
                      </top:fmSerialNumber>
                    </xsl:if>
                    <xsl:if test="ns2:NumberOfRepairs and ns2:NumberOfRepairs != '' ">
                      <top:numberOfRepairs>
                        <xsl:value-of select="ns2:NumberOfRepairs"/>
                      </top:numberOfRepairs>
                    </xsl:if>
                    <xsl:if test="ns2:OriginationDate and ns2:OriginationDate != '' ">
                      <top:originationDate>
                        <xsl:value-of select="ns2:OriginationDate"/>
                      </top:originationDate>
                    </xsl:if>
                    <xsl:if test="ns2:ParentItemId and ns2:ParentItemId != '' ">
                      <top:parentItemId>
                        <xsl:value-of select="ns2:ParentItemId"/>
                      </top:parentItemId>
                    </xsl:if>
                    <xsl:if test="ns2:ParentObjectId and ns2:ParentObjectId != '' ">
                      <top:parentObjectId>
                        <xsl:value-of select="ns2:ParentObjectId"/>
                      </top:parentObjectId>
                    </xsl:if>
                    <xsl:if test="ns2:ParentObjectId2 and ns2:ParentObjectId2 != '' ">
                      <top:parentObjectId2>
                        <xsl:value-of select="ns2:ParentObjectId2"/>
                      </top:parentObjectId2>
                    </xsl:if>
                    <xsl:if test="ns2:ParentObjectNumber and ns2:ParentObjectNumber != '' ">
                      <top:parentObjectNumber>
                        <xsl:value-of select="ns2:ParentObjectNumber"/>
                      </top:parentObjectNumber>
                    </xsl:if>
                    <xsl:if test="ns2:ParentObjectNumber2 and ns2:ParentObjectNumber2 != '' ">
                      <top:parentObjectNumber2>
                        <xsl:value-of select="ns2:ParentObjectNumber2"/>
                      </top:parentObjectNumber2>
                    </xsl:if>
                    <xsl:if test="ns2:ParentObjectType and ns2:ParentObjectType != '' ">
                      <top:parentObjectType>
                        <xsl:value-of select="ns2:ParentObjectType"/>
                      </top:parentObjectType>
                    </xsl:if>
                    <xsl:if test="ns2:ParentObjectType2 and ns2:ParentObjectType2 != '' ">
                      <top:parentObjectType2>
                        <xsl:value-of select="ns2:ParentObjectType2"/>
                      </top:parentObjectType2>
                    </xsl:if>
                    <xsl:if test="ns2:ParentSerialNumber and ns2:ParentSerialNumber != '' ">
                      <top:parentSerialNumber>
                        <xsl:value-of select="ns2:ParentSerialNumber"/>
                      </top:parentSerialNumber>
                    </xsl:if>
                    <xsl:if test="ns2:ProcessFlag and ns2:ProcessFlag != '' ">
                      <top:processFlag>
                        <xsl:value-of select="ns2:ProcessFlag"/>
                      </top:processFlag>
                    </xsl:if>
                    <xsl:if test="ns2:ProductCode and ns2:ProductCode != '' ">
                      <top:productCode>
                        <xsl:value-of select="ns2:ProductCode"/>
                      </top:productCode>
                    </xsl:if>
                    <xsl:if test="ns2:ProductTransactionId and ns2:ProductTransactionId != '' ">
                      <top:productTransactionId>
                        <xsl:value-of select="ns2:ProductTransactionId"/>
                      </top:productTransactionId>
                    </xsl:if>
                    <xsl:if test="ns2:ProgramApplicationId and ns2:ProgramApplicationId != '' ">
                      <top:programApplicationId>
                        <xsl:value-of select="ns2:ProgramApplicationId"/>
                      </top:programApplicationId>
                    </xsl:if>
                    <xsl:if test="ns2:ProgramId and ns2:ProgramId != '' ">
                      <top:programId>
                        <xsl:value-of select="ns2:ProgramId"/>
                      </top:programId>
                    </xsl:if>
                    <xsl:if test="ns2:ProgramUpdateDate and ns2:ProgramUpdateDate != '' ">
                      <top:programUpdateDate>
                        <xsl:value-of select="ns2:ProgramUpdateDate"/>
                      </top:programUpdateDate>
                    </xsl:if>
                    <xsl:if test="ns2:RequestId and ns2:RequestId != '' ">
                      <top:requestId>
                        <xsl:value-of select="ns2:RequestId"/>
                      </top:requestId>
                    </xsl:if>
                    <xsl:if test="ns2:SerialAttributeCategory and ns2:SerialAttributeCategory != '' ">
                      <top:serialAttributeCategory>
                        <xsl:value-of select="ns2:SerialAttributeCategory"/>
                      </top:serialAttributeCategory>
                    </xsl:if>
                    <xsl:if test="ns2:SourceCode and ns2:SourceCode != '' ">
                      <top:sourceCode>
                        <xsl:value-of select="ns2:SourceCode"/>
                      </top:sourceCode>
                    </xsl:if>
                    <xsl:if test="ns2:SourceLineId and ns2:SourceLineId != '' ">
                      <top:sourceLineId>
                        <xsl:value-of select="ns2:SourceLineId"/>
                      </top:sourceLineId>
                    </xsl:if>
                    <xsl:if test="ns2:StatusId and ns2:StatusId != '' ">
                      <top:statusId>
                        <xsl:value-of select="ns2:StatusId"/>
                      </top:statusId>
                    </xsl:if>
                    <xsl:if test="ns2:StatusName and ns2:StatusName != '' ">
                      <top:statusName>
                        <xsl:value-of select="ns2:StatusName"/>
                      </top:statusName>
                    </xsl:if>
                    <xsl:if test="ns2:TerritoryCode and ns2:TerritoryCode != '' ">
                      <top:territoryCode>
                        <xsl:value-of select="ns2:TerritoryCode"/>
                      </top:territoryCode>
                    </xsl:if>
                    <xsl:if test="ns2:TimeSinceMark and ns2:TimeSinceMark != '' ">
                      <top:timeSinceMark>
                        <xsl:value-of select="ns2:TimeSinceMark"/>
                      </top:timeSinceMark>
                    </xsl:if>
                    <xsl:if test="ns2:TimeSinceNew and ns2:TimeSinceNew != '' ">
                      <top:timeSinceNew>
                        <xsl:value-of select="ns2:TimeSinceNew"/>
                      </top:timeSinceNew>
                    </xsl:if>
                    <xsl:if test="ns2:TimeSinceOverhaul and ns2:TimeSinceOverhaul != '' ">
                      <top:timeSinceOverhaul>
                        <xsl:value-of select="ns2:TimeSinceOverhaul"/>
                      </top:timeSinceOverhaul>
                    </xsl:if>
                    <xsl:if test="ns2:TimeSinceRepair and ns2:TimeSinceRepair != '' ">
                      <top:timeSinceRepair>
                        <xsl:value-of select="ns2:TimeSinceRepair"/>
                      </top:timeSinceRepair>
                    </xsl:if>
                    <xsl:if test="ns2:TimeSinceVisit and ns2:TimeSinceVisit != '' ">
                      <top:timeSinceVisit>
                        <xsl:value-of select="ns2:TimeSinceVisit"/>
                      </top:timeSinceVisit>
                    </xsl:if>
                    <xsl:if test="ns2:ToSerialNumber and ns2:ToSerialNumber != '' ">
                      <top:toSerialNumber>
                        <xsl:value-of select="ns2:ToSerialNumber"/>
                      </top:toSerialNumber>
                    </xsl:if>
                    <xsl:choose>
                      <xsl:when test="ns2:TransactionInterfaceId and ns2:TransactionInterfaceId != ''">
                        <top:transactionInterfaceId>
                          <xsl:value-of select="ns2:TransactionInterfaceId"/>
                        </top:transactionInterfaceId>
                      </xsl:when>
                      <xsl:otherwise>
                        <top:transactionInterfaceId>
                          <xsl:value-of select='oraext:sequence-next-val("MTL_MATERIAL_TRANSACTIONS_S","jdbc/ebsapps")'/>
                        </top:transactionInterfaceId>
                      </xsl:otherwise>
                    </xsl:choose>
                    <!--xsl:if test="ns2:TransactionInterfaceId and ns2:TransactionInterfaceId != '' ">
                      <top:transactionInterfaceId>
                        <xsl:value-of select="ns2:TransactionInterfaceId"/>
                      </top:transactionInterfaceId>
                    </xsl:if-->
                    <xsl:if test="ns2:VendorLotNumber and ns2:VendorLotNumber != '' ">
                      <top:vendorLotNumber>
                        <xsl:value-of select="ns2:VendorLotNumber"/>
                      </top:vendorLotNumber>
                    </xsl:if>
                    <xsl:if test="ns2:VendorSerialNumber and ns2:VendorSerialNumber != '' ">
                      <top:vendorSerialNumber>
                        <xsl:value-of select="ns2:VendorSerialNumber"/>
                      </top:vendorSerialNumber>
                    </xsl:if>
                    <xsl:choose>
                      <xsl:when test="ns2:WhoColumns/ns3:CreatedBy and ns2:WhoColumns/ns3:CreatedBy != ''">
                        <top:createdBy>
                          <xsl:value-of select="ns2:WhoColumns/ns3:CreatedBy"/>
                        </top:createdBy>
                      </xsl:when>
                      <xsl:otherwise>
                        <top:createdBy>
                          <xsl:value-of select='dvm:lookupValue("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_USER_NAME_DIVISION_MAP.dvm","DIVISION","NSNE","EBS_USER_ID","")'/>
                        </top:createdBy>
                      </xsl:otherwise>
                    </xsl:choose>
                    <!--xsl:if test="ns2:WhoColumns/ns3:CreatedBy and ns2:WhoColumns/ns3:CreatedBy != '' ">
                      <top:createdBy>
                        <xsl:value-of select="ns2:WhoColumns/ns3:CreatedBy"/>
                      </top:createdBy>
                    </xsl:if-->
                    <xsl:choose>
                      <xsl:when test="ns2:WhoColumns/ns3:CreationDate and ns2:WhoColumns/ns3:CreationDate != ''">
                        <top:creationDate>
                          <xsl:value-of select="ns2:WhoColumns/ns3:CreationDate"/>
                        </top:creationDate>
                      </xsl:when>
                      <xsl:otherwise>
                        <top:creationDate>
                          <xsl:value-of select="xp20:current-dateTime()"/>
                        </top:creationDate>
                      </xsl:otherwise>
                    </xsl:choose>
                    <!--xsl:if test="ns2:WhoColumns/ns3:CreationDate and ns2:WhoColumns/ns3:CreationDate != '' ">
                      <top:creationDate>
                        <xsl:value-of select="ns2:WhoColumns/ns3:CreationDate"/>
                      </top:creationDate>
                    </xsl:if-->
                    <xsl:choose>
                      <xsl:when test="ns2:WhoColumns/ns3:LastUpdatedBy and ns2:WhoColumns/ns3:LastUpdatedBy != ''">
                        <top:lastUpdatedBy>
                          <xsl:value-of select="ns2:WhoColumns/ns3:LastUpdatedBy"/>
                        </top:lastUpdatedBy>
                      </xsl:when>
                      <xsl:otherwise>
                        <top:lastUpdatedBy>
                          <xsl:value-of select='dvm:lookupValue("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_USER_NAME_DIVISION_MAP.dvm","DIVISION","NSNE","EBS_USER_ID","")'/>
                        </top:lastUpdatedBy>
                      </xsl:otherwise>
                    </xsl:choose>
                    <!--xsl:if test="ns2:WhoColumns/ns3:LastUpdatedBy and ns2:WhoColumns/ns3:LastUpdatedBy != '' ">
                      <top:lastUpdatedBy>
                        <xsl:value-of select="ns2:WhoColumns/ns3:LastUpdatedBy"/>
                      </top:lastUpdatedBy>
                    </xsl:if-->
                    <xsl:choose>
                      <xsl:when test="ns2:WhoColumns/ns3:LastUpdateDate and ns2:WhoColumns/ns3:LastUpdateDate != ''">
                        <top:lastUpdateDate>
                          <xsl:value-of select="ns2:WhoColumns/ns3:LastUpdateDate"/>
                        </top:lastUpdateDate>
                      </xsl:when>
                      <xsl:otherwise>
                        <top:lastUpdateDate>
                          <xsl:value-of select="xp20:current-dateTime()"/>
                        </top:lastUpdateDate>
                      </xsl:otherwise>
                    </xsl:choose>
                    <!--xsl:if test="ns2:WhoColumns/ns3:LastUpdateDate and ns2:WhoColumns/ns3:LastUpdateDate != '' ">
                      <top:lastUpdateDate>
                        <xsl:value-of select="ns2:WhoColumns/ns3:LastUpdateDate"/>
                      </top:lastUpdateDate>
                    </xsl:if-->
                    <xsl:choose>
                      <xsl:when test="ns2:WhoColumns/ns3:LastUpdateLogin and ns2:WhoColumns/ns3:LastUpdateLogin != ''">
                        <top:lastUpdateLogin>
                          <xsl:value-of select="ns2:WhoColumns/ns3:LastUpdateLogin"/>
                        </top:lastUpdateLogin>
                      </xsl:when>
                      <xsl:otherwise>
                        <top:lastUpdateLogin>
                          <xsl:value-of select='dvm:lookupValue("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_USER_NAME_DIVISION_MAP.dvm","DIVISION","NSNE","EBS_USER_ID","")'/>
                        </top:lastUpdateLogin>
                      </xsl:otherwise>
                    </xsl:choose>
                    <!--xsl:if test="ns2:WhoColumns/ns3:LastUpdateLogin and ns2:WhoColumns/ns3:LastUpdateLogin != '' ">
                      <top:lastUpdateLogin>
                        <xsl:value-of select="ns2:WhoColumns/ns3:LastUpdateLogin"/>
                      </top:lastUpdateLogin>
                    </xsl:if-->
                    <xsl:if test="ns2:SerialsDFF/ns7:Attribute1 and ns2:SerialsDFF/ns7:Attribute1 != '' ">
                      <top:attribute1>
                        <xsl:value-of select="ns2:SerialsDFF/ns7:Attribute1"/>
                      </top:attribute1>
                    </xsl:if>
                    <xsl:if test="ns2:SerialsDFF/ns7:Attribute10 and ns2:SerialsDFF/ns7:Attribute10 != '' ">
                      <top:attribute10>
                        <xsl:value-of select="ns2:SerialsDFF/ns7:Attribute10"/>
                      </top:attribute10>
                    </xsl:if>
                    <xsl:if test="ns2:SerialsDFF/ns7:Attribute11 and ns2:SerialsDFF/ns7:Attribute11 != '' ">
                      <top:attribute11>
                        <xsl:value-of select="ns2:SerialsDFF/ns7:Attribute11"/>
                      </top:attribute11>
                    </xsl:if>
                    <xsl:if test="ns2:SerialsDFF/ns7:Attribute12 and ns2:SerialsDFF/ns7:Attribute12 != '' ">
                      <top:attribute12>
                        <xsl:value-of select="ns2:SerialsDFF/ns7:Attribute12"/>
                      </top:attribute12>
                    </xsl:if>
                    <xsl:if test="ns2:SerialsDFF/ns7:Attribute13 and ns2:SerialsDFF/ns7:Attribute13 != '' ">
                      <top:attribute13>
                        <xsl:value-of select="ns2:SerialsDFF/ns7:Attribute13"/>
                      </top:attribute13>
                    </xsl:if>
                    <xsl:if test="ns2:SerialsDFF/ns7:Attribute14 and ns2:SerialsDFF/ns7:Attribute14 != '' ">
                      <top:attribute14>
                        <xsl:value-of select="ns2:SerialsDFF/ns7:Attribute14"/>
                      </top:attribute14>
                    </xsl:if>
                    <xsl:if test="ns2:SerialsDFF/ns7:Attribute15 and ns2:SerialsDFF/ns7:Attribute15 != '' ">
                      <top:attribute15>
                        <xsl:value-of select="ns2:SerialsDFF/ns7:Attribute15"/>
                      </top:attribute15>
                    </xsl:if>
                    <xsl:if test="ns2:SerialsDFF/ns7:Attribute2 and ns2:SerialsDFF/ns7:Attribute2 != '' ">
                      <top:attribute2>
                        <xsl:value-of select="ns2:SerialsDFF/ns7:Attribute2"/>
                      </top:attribute2>
                    </xsl:if>
                    <xsl:if test="ns2:SerialsDFF/ns7:Attribute3 and ns2:SerialsDFF/ns7:Attribute3 != '' ">
                      <top:attribute3>
                        <xsl:value-of select="ns2:SerialsDFF/ns7:Attribute3"/>
                      </top:attribute3>
                    </xsl:if>
                    <xsl:if test="ns2:SerialsDFF/ns7:Attribute4 and ns2:SerialsDFF/ns7:Attribute4 != '' ">
                      <top:attribute4>
                        <xsl:value-of select="ns2:SerialsDFF/ns7:Attribute4"/>
                      </top:attribute4>
                    </xsl:if>
                    <xsl:if test="ns2:SerialsDFF/ns7:Attribute5 and ns2:SerialsDFF/ns7:Attribute5 != '' ">
                      <top:attribute5>
                        <xsl:value-of select="ns2:SerialsDFF/ns7:Attribute5"/>
                      </top:attribute5>
                    </xsl:if>
                    <xsl:if test="ns2:SerialsDFF/ns7:Attribute6 and ns2:SerialsDFF/ns7:Attribute6 != '' ">
                      <top:attribute6>
                        <xsl:value-of select="ns2:SerialsDFF/ns7:Attribute6"/>
                      </top:attribute6>
                    </xsl:if>
                    <xsl:if test="ns2:SerialsDFF/ns7:Attribute7 and ns2:SerialsDFF/ns7:Attribute7 != '' ">
                      <top:attribute7>
                        <xsl:value-of select="ns2:SerialsDFF/ns7:Attribute7"/>
                      </top:attribute7>
                    </xsl:if>
                    <xsl:if test="ns2:SerialsDFF/ns7:Attribute8 and ns2:SerialsDFF/ns7:Attribute8 != '' ">
                      <top:attribute8>
                        <xsl:value-of select="ns2:SerialsDFF/ns7:Attribute8"/>
                      </top:attribute8>
                    </xsl:if>
                    <xsl:if test="ns2:SerialsDFF/ns7:Attribute9 and ns2:SerialsDFF/ns7:Attribute9 != '' ">
                      <top:attribute9>
                        <xsl:value-of select="ns2:SerialsDFF/ns7:Attribute9"/>
                      </top:attribute9>
                    </xsl:if>
                    <xsl:if test="ns2:SerialsDFF/ns7:AttributeCategory and ns2:SerialsDFF/ns7:AttributeCategory != '' ">
                      <top:attributeCategory>
                        <xsl:value-of select="ns2:SerialsDFF/ns7:AttributeCategory"/>
                      </top:attributeCategory>
                    </xsl:if>
                    <!--xsl:if test="ns2:CAttrDFF/ns7:AttributeCategory and ns2:CAttr/ns7:AttributeCategory != '' ">
                      <top:CAttributeCategory>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:AttributeCategory"/>
                      </top:CAttributeCategory>
                    </xsl:if-->
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute1 and ns2:CAttrDFF/ns7:Attribute1 != '' ">
                      <top:cAttribute1>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute1"/>
                      </top:cAttribute1>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute10 and ns2:CAttrDFF/ns7:Attribute10 != '' ">
                      <top:cAttribute10>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute10"/>
                      </top:cAttribute10>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute11 and ns2:CAttrDFF/ns7:Attribute11 != '' ">
                      <top:cAttribute11>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute11"/>
                      </top:cAttribute11>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute12 and ns2:CAttrDFF/ns7:Attribute12 != '' ">
                      <top:cAttribute12>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute12"/>
                      </top:cAttribute12>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute13 and ns2:CAttrDFF/ns7:Attribute13 != '' ">
                      <top:cAttribute13>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute13"/>
                      </top:cAttribute13>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute14 and ns2:CAttrDFF/ns7:Attribute14 != '' ">
                      <top:cAttribute14>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute14"/>
                      </top:cAttribute14>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute15 and ns2:CAttrDFF/ns7:Attribute15 != '' ">
                      <top:cAttribute15>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute15"/>
                      </top:cAttribute15>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute16 and ns2:CAttrDFF/ns7:Attribute16 != '' ">
                      <top:cAttribute16>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute16"/>
                      </top:cAttribute16>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute17 and ns2:CAttrDFF/ns7:Attribute17 != '' ">
                      <top:cAttribute17>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute17"/>
                      </top:cAttribute17>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute18 and ns2:CAttrDFF/ns7:Attribute18 != '' ">
                      <top:cAttribute18>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute18"/>
                      </top:cAttribute18>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute19 and ns2:CAttrDFF/ns7:Attribute19 != '' ">
                      <top:cAttribute19>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute19"/>
                      </top:cAttribute19>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute2 and ns2:CAttrDFF/ns7:Attribute2 != '' ">
                      <top:cAttribute2>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute2"/>
                      </top:cAttribute2>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute20 and ns2:CAttrDFF/ns7:Attribute20 != '' ">
                      <top:cAttribute20>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute20"/>
                      </top:cAttribute20>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute21 and ns2:CAttrDFF/ns7:Attribute21 != '' ">
                      <top:cAttribute21>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute21"/>
                      </top:cAttribute21>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute22 and ns2:CAttrDFF/ns7:Attribute22 != '' ">
                      <top:cAttribute22>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute22"/>
                      </top:cAttribute22>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute23 and ns2:CAttrDFF/ns7:Attribute23 != '' ">
                      <top:cAttribute23>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute23"/>
                      </top:cAttribute23>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute24 and ns2:CAttrDFF/ns7:Attribute24 != '' ">
                      <top:cAttribute24>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute24"/>
                      </top:cAttribute24>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute25 and ns2:CAttrDFF/ns7:Attribute25 != '' ">
                      <top:cAttribute25>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute25"/>
                      </top:cAttribute25>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute26 and ns2:CAttrDFF/ns7:Attribute26 != '' ">
                      <top:cAttribute26>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute26"/>
                      </top:cAttribute26>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute27 and ns2:CAttrDFF/ns7:Attribute27 != '' ">
                      <top:cAttribute27>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute27"/>
                      </top:cAttribute27>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute28 and ns2:CAttrDFF/ns7:Attribute28 != '' ">
                      <top:cAttribute28>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute28"/>
                      </top:cAttribute28>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute29 and ns2:CAttrDFF/ns7:Attribute29 != '' ">
                      <top:cAttribute29>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute29"/>
                      </top:cAttribute29>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute3 and ns2:CAttrDFF/ns7:Attribute3 != '' ">
                      <top:cAttribute3>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute3"/>
                      </top:cAttribute3>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute30 and ns2:CAttrDFF/ns7:Attribute30 != '' ">
                      <top:cAttribute30>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute30"/>
                      </top:cAttribute30>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute4 and ns2:CAttrDFF/ns7:Attribute4 != '' ">
                      <top:cAttribute4>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute4"/>
                      </top:cAttribute4>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute5 and ns2:CAttrDFF/ns7:Attribute5 != '' ">
                      <top:cAttribute5>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute5"/>
                      </top:cAttribute5>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute6 and ns2:CAttrDFF/ns7:Attribute6 != '' ">
                      <top:cAttribute6>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute6"/>
                      </top:cAttribute6>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute7 and ns2:CAttrDFF/ns7:Attribute7 != '' ">
                      <top:cAttribute7>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute7"/>
                      </top:cAttribute7>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute8 and ns2:CAttrDFF/ns7:Attribute8 != '' ">
                      <top:cAttribute8>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute8"/>
                      </top:cAttribute8>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute9 and ns2:CAttrDFF/ns7:Attribute9 != '' ">
                      <top:cAttribute9>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute9"/>
                      </top:cAttribute9>
                    </xsl:if>
                    <!--xsl:if test="ns2:DAttrDFF/ns7:AttributeCategory and ns2:DAttr/ns7:AttributeCategory != '' ">
                      <top:DAttributeCategory>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:AttributeCategory"/>
                      </top:DAttributeCategory>
                    </xsl:if-->
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute1 and ns2:DAttrDFF/ns7:Attribute1 != '' ">
                      <top:dAttribute1>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute1"/>
                      </top:dAttribute1>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute10 and ns2:DAttrDFF/ns7:Attribute10 != '' ">
                      <top:dAttribute10>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute10"/>
                      </top:dAttribute10>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute11 and ns2:DAttrDFF/ns7:Attribute11 != '' ">
                      <top:dAttribute11>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute11"/>
                      </top:dAttribute11>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute12 and ns2:DAttrDFF/ns7:Attribute12 != '' ">
                      <top:dAttribute12>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute12"/>
                      </top:dAttribute12>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute13 and ns2:DAttrDFF/ns7:Attribute13 != '' ">
                      <top:dAttribute13>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute13"/>
                      </top:dAttribute13>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute14 and ns2:DAttrDFF/ns7:Attribute14 != '' ">
                      <top:dAttribute14>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute14"/>
                      </top:dAttribute14>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute15 and ns2:DAttrDFF/ns7:Attribute15 != '' ">
                      <top:dAttribute15>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute15"/>
                      </top:dAttribute15>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute16 and ns2:DAttrDFF/ns7:Attribute16 != '' ">
                      <top:dAttribute16>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute16"/>
                      </top:dAttribute16>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute17 and ns2:DAttrDFF/ns7:Attribute17 != '' ">
                      <top:dAttribute17>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute17"/>
                      </top:dAttribute17>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute18 and ns2:DAttrDFF/ns7:Attribute18 != '' ">
                      <top:dAttribute18>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute18"/>
                      </top:dAttribute18>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute19 and ns2:DAttrDFF/ns7:Attribute19 != '' ">
                      <top:dAttribute19>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute19"/>
                      </top:dAttribute19>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute2 and ns2:DAttrDFF/ns7:Attribute2 != '' ">
                      <top:dAttribute2>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute2"/>
                      </top:dAttribute2>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute20 and ns2:DAttrDFF/ns7:Attribute20 != '' ">
                      <top:dAttribute20>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute20"/>
                      </top:dAttribute20>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute3 and ns2:DAttrDFF/ns7:Attribute3 != '' ">
                      <top:dAttribute3>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute3"/>
                      </top:dAttribute3>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute4 and ns2:DAttrDFF/ns7:Attribute4 != '' ">
                      <top:dAttribute4>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute4"/>
                      </top:dAttribute4>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute5 and ns2:DAttrDFF/ns7:Attribute5 != '' ">
                      <top:dAttribute5>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute5"/>
                      </top:dAttribute5>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute6 and ns2:DAttrDFF/ns7:Attribute6 != '' ">
                      <top:dAttribute6>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute6"/>
                      </top:dAttribute6>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute7 and ns2:DAttrDFF/ns7:Attribute7 != '' ">
                      <top:dAttribute7>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute7"/>
                      </top:dAttribute7>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute8 and ns2:DAttrDFF/ns7:Attribute8 != '' ">
                      <top:dAttribute8>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute8"/>
                      </top:dAttribute8>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute9 and ns2:DAttrDFF/ns7:Attribute9 != '' ">
                      <top:dAttribute9>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute9"/>
                      </top:dAttribute9>
                    </xsl:if>
                    <!--xsl:if test="ns2:NAttrDFF/ns7:AttributeCategory and ns2:NAttr/ns7:AttributeCategory != '' ">
                      <top:NAttributeCategory>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:AttributeCategory"/>
                      </top:NAttributeCategory>
                    </xsl:if-->
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute1 and ns2:NAttrDFF/ns7:Attribute1 != '' ">
                      <top:nAttribute1>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute1"/>
                      </top:nAttribute1>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute10 and ns2:NAttrDFF/ns7:Attribute10 != '' ">
                      <top:nAttribute10>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute10"/>
                      </top:nAttribute10>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute11 and ns2:NAttrDFF/ns7:Attribute11 != '' ">
                      <top:nAttribute11>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute11"/>
                      </top:nAttribute11>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute12 and ns2:NAttrDFF/ns7:Attribute12 != '' ">
                      <top:nAttribute12>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute12"/>
                      </top:nAttribute12>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute13 and ns2:NAttrDFF/ns7:Attribute13 != '' ">
                      <top:nAttribute13>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute13"/>
                      </top:nAttribute13>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute14 and ns2:NAttrDFF/ns7:Attribute14 != '' ">
                      <top:nAttribute14>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute14"/>
                      </top:nAttribute14>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute15 and ns2:NAttrDFF/ns7:Attribute15 != '' ">
                      <top:nAttribute15>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute15"/>
                      </top:nAttribute15>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute16 and ns2:NAttrDFF/ns7:Attribute16 != '' ">
                      <top:nAttribute16>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute16"/>
                      </top:nAttribute16>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute17 and ns2:NAttrDFF/ns7:Attribute17 != '' ">
                      <top:nAttribute17>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute17"/>
                      </top:nAttribute17>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute18 and ns2:NAttrDFF/ns7:Attribute18 != '' ">
                      <top:nAttribute18>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute18"/>
                      </top:nAttribute18>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute19 and ns2:NAttrDFF/ns7:Attribute19 != '' ">
                      <top:nAttribute19>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute19"/>
                      </top:nAttribute19>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute2 and ns2:NAttrDFF/ns7:Attribute2 != '' ">
                      <top:nAttribute2>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute2"/>
                      </top:nAttribute2>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute20 and ns2:NAttrDFF/ns7:Attribute20 != '' ">
                      <top:nAttribute20>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute20"/>
                      </top:nAttribute20>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute21 and ns2:NAttrDFF/ns7:Attribute21 != '' ">
                      <top:nAttribute21>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute21"/>
                      </top:nAttribute21>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute22 and ns2:NAttrDFF/ns7:Attribute22 != '' ">
                      <top:nAttribute22>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute22"/>
                      </top:nAttribute22>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute23 and ns2:NAttrDFF/ns7:Attribute23 != '' ">
                      <top:nAttribute23>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute23"/>
                      </top:nAttribute23>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute24 and ns2:NAttrDFF/ns7:Attribute24 != '' ">
                      <top:nAttribute24>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute24"/>
                      </top:nAttribute24>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute25 and ns2:NAttrDFF/ns7:Attribute25 != '' ">
                      <top:nAttribute25>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute25"/>
                      </top:nAttribute25>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute26 and ns2:NAttrDFF/ns7:Attribute26 != '' ">
                      <top:nAttribute26>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute26"/>
                      </top:nAttribute26>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute27 and ns2:NAttrDFF/ns7:Attribute27 != '' ">
                      <top:nAttribute27>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute27"/>
                      </top:nAttribute27>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute28 and ns2:NAttrDFF/ns7:Attribute28 != '' ">
                      <top:nAttribute28>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute28"/>
                      </top:nAttribute28>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute29 and ns2:NAttrDFF/ns7:Attribute29 != '' ">
                      <top:nAttribute29>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute29"/>
                      </top:nAttribute29>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute3 and ns2:NAttrDFF/ns7:Attribute3 != '' ">
                      <top:nAttribute3>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute3"/>
                      </top:nAttribute3>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute30 and ns2:NAttrDFF/ns7:Attribute30 != '' ">
                      <top:nAttribute30>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute30"/>
                      </top:nAttribute30>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute4 and ns2:NAttrDFF/ns7:Attribute4 != '' ">
                      <top:nAttribute4>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute4"/>
                      </top:nAttribute4>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute5 and ns2:NAttrDFF/ns7:Attribute5 != '' ">
                      <top:nAttribute5>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute5"/>
                      </top:nAttribute5>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute6 and ns2:NAttrDFF/ns7:Attribute6 != '' ">
                      <top:nAttribute6>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute6"/>
                      </top:nAttribute6>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute7 and ns2:NAttrDFF/ns7:Attribute7 != '' ">
                      <top:nAttribute7>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute7"/>
                      </top:nAttribute7>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute8 and ns2:NAttrDFF/ns7:Attribute8 != '' ">
                      <top:nAttribute8>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute8"/>
                      </top:nAttribute8>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute9 and ns2:NAttrDFF/ns7:Attribute9 != '' ">
                      <top:nAttribute9>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute9"/>
                      </top:nAttribute9>
                    </xsl:if>
                  </top:MtlSerialNumbersInterface>
                </xsl:for-each>
              </top:mtlSerialNumbersInterfaceCollection>
              <top:wmsLpnContentsInterfaceCollection>
                <xsl:for-each select="ns2:ListOfLPNContents/ns2:LPNContents">
                  <top:WmsLpnContentsInterface>
                    <xsl:if test="ns2:Age and ns2:Age != '' ">
                      <top:age>
                        <xsl:value-of select="ns2:Age"/>
                      </top:age>
                    </xsl:if>
                    <xsl:if test="ns2:BestByDate and ns2:BestByDate != '' ">
                      <top:bestByDate>
                        <xsl:value-of select="ns2:BestByDate"/>
                      </top:bestByDate>
                    </xsl:if>
                    <xsl:if test="ns2:ChangeDate and ns2:ChangeDate != '' ">
                      <top:changeDate>
                        <xsl:value-of select="ns2:ChangeDate"/>
                      </top:changeDate>
                    </xsl:if>
                    <xsl:if test="ns2:Color and ns2:Color != '' ">
                      <top:color>
                        <xsl:value-of select="ns2:Color"/>
                      </top:color>
                    </xsl:if>
                    <xsl:if test="ns2:CurlWrinkleFold and ns2:CurlWrinkleFold != '' ">
                      <top:curlWrinkleFold>
                        <xsl:value-of select="ns2:CurlWrinkleFold"/>
                      </top:curlWrinkleFold>
                    </xsl:if>
                    <xsl:if test="ns2:DateCode and ns2:DateCode != '' ">
                      <top:dateCode>
                        <xsl:value-of select="ns2:DateCode"/>
                      </top:dateCode>
                    </xsl:if>
                    <xsl:if test="ns2:DocumentLineNum and ns2:DocumentLineNum != '' ">
                      <top:documentLineNum>
                        <xsl:value-of select="ns2:DocumentLineNum"/>
                      </top:documentLineNum>
                    </xsl:if>
                    <xsl:if test="ns2:DocumentNum and ns2:DocumentNum != '' ">
                      <top:documentNum>
                        <xsl:value-of select="ns2:DocumentNum"/>
                      </top:documentNum>
                    </xsl:if>
                    <xsl:if test="ns2:ExpirationDate and ns2:ExpirationDate != '' ">
                      <top:expirationDate>
                        <xsl:value-of select="ns2:ExpirationDate"/>
                      </top:expirationDate>
                    </xsl:if>
                    <xsl:if test="ns2:FromSerialNumber and ns2:FromSerialNumber != '' ">
                      <top:fromSerialNumber>
                        <xsl:value-of select="ns2:FromSerialNumber"/>
                      </top:fromSerialNumber>
                    </xsl:if>
                    <xsl:if test="ns2:GradeCode and ns2:GradeCode != '' ">
                      <top:gradeCode>
                        <xsl:value-of select="ns2:GradeCode"/>
                      </top:gradeCode>
                    </xsl:if>
                    <xsl:choose>
                      <xsl:when test="ns2:GroupId and ns2:GroupId != ''">
                        <top:groupId>
                          <xsl:value-of select="ns2:GroupId"/>
                        </top:groupId>
                      </xsl:when>
                      <xsl:otherwise>
                        <top:groupId>
                          <xsl:value-of select="$groupIdVar"/>
                        </top:groupId>
                      </xsl:otherwise>
                    </xsl:choose>
                    <!--xsl:if test="ns2:GroupId and ns2:GroupId != '' ">
                      <top:groupId>
                        <xsl:value-of select="ns2:GroupId"/>
                      </top:groupId>
                    </xsl:if-->
                    <!--xsl:choose>
                      <xsl:when test="ns2:InterfaceTransactionId and ns2:InterfaceTransactionId != ''">
                        <top:interfaceTransactionId>
                          <xsl:value-of select="ns2:InterfaceTransactionId"/>
                        </top:interfaceTransactionId>
                      </xsl:when>
                      <xsl:otherwise>
                        <top:interfaceTransactionId>
                          <xsl:value-of select="$interfaceTransactionIdVar"/>
                        </top:interfaceTransactionId>
                      </xsl:otherwise>
                    </xsl:choose-->
                    <!--xsl:if test="ns2:InterfaceTransactionId and ns2:InterfaceTransactionId != '' ">
                      <top:interfaceTransactionId>
                        <xsl:value-of select="ns2:InterfaceTransactionId"/>
                      </top:interfaceTransactionId>
                    </xsl:if-->
                    <xsl:if test="ns2:ItemDescription and ns2:ItemDescription != '' ">
                      <top:itemDescription>
                        <xsl:value-of select="ns2:ItemDescription"/>
                      </top:itemDescription>
                    </xsl:if>
                    <xsl:if test="ns2:ItemNum/ns6:Item and ns2:ItemNum/ns6:Item != '' ">
                      <top:itemNum>
                        <xsl:value-of select="ns2:ItemNum/ns6:Item"/>
                      </top:itemNum>
                    </xsl:if>
                    <xsl:if test="ns2:ItemRevision and ns2:ItemRevision != '' ">
                      <top:itemRevision>
                        <xsl:value-of select="ns2:ItemRevision"/>
                      </top:itemRevision>
                    </xsl:if>
                    <xsl:if test="ns2:ItemSize and ns2:ItemSize != '' ">
                      <top:itemSize>
                        <xsl:value-of select="ns2:ItemSize"/>
                      </top:itemSize>
                    </xsl:if>
                    <xsl:if test="ns2:KillDate and ns2:KillDate != '' ">
                      <top:killDate>
                        <xsl:value-of select="ns2:KillDate"/>
                      </top:killDate>
                    </xsl:if>
                    <xsl:if test="ns2:Length and ns2:Length != '' ">
                      <top:length>
                        <xsl:value-of select="ns2:Length"/>
                      </top:length>
                    </xsl:if>
                    <xsl:if test="ns2:LicensePlateNumber and ns2:LicensePlateNumber != '' ">
                      <top:licensePlateNumber>
                        <xsl:value-of select="ns2:LicensePlateNumber"/>
                      </top:licensePlateNumber>
                    </xsl:if>
                    <xsl:if test="ns2:LotAttributeCategory and ns2:LotAttributeCategory != '' ">
                      <top:lotAttributeCategory>
                        <xsl:value-of select="ns2:LotAttributeCategory"/>
                      </top:lotAttributeCategory>
                    </xsl:if>
                    <xsl:if test="ns2:LotNumber and ns2:LotNumber != '' ">
                      <top:lotNumber>
                        <xsl:value-of select="ns2:LotNumber"/>
                      </top:lotNumber>
                    </xsl:if>
                    <xsl:if test="ns2:MaturityDate and ns2:MaturityDate != '' ">
                      <top:maturityDate>
                        <xsl:value-of select="ns2:MaturityDate"/>
                      </top:maturityDate>
                    </xsl:if>
                    <xsl:if test="ns2:OriginationDate and ns2:OriginationDate != '' ">
                      <top:originationDate>
                        <xsl:value-of select="ns2:OriginationDate"/>
                      </top:originationDate>
                    </xsl:if>
                    <xsl:if test="ns2:PlaceOfOrigin and ns2:PlaceOfOrigin != '' ">
                      <top:placeOfOrigin>
                        <xsl:value-of select="ns2:PlaceOfOrigin"/>
                      </top:placeOfOrigin>
                    </xsl:if>
                    <xsl:if test="ns2:ProgramApplicationId and ns2:ProgramApplicationId != '' ">
                      <top:programApplicationId>
                        <xsl:value-of select="ns2:ProgramApplicationId"/>
                      </top:programApplicationId>
                    </xsl:if>
                    <xsl:if test="ns2:ProgramId and ns2:ProgramId != '' ">
                      <top:programId>
                        <xsl:value-of select="ns2:ProgramId"/>
                      </top:programId>
                    </xsl:if>
                    <xsl:if test="ns2:ProgramUpdateDate and ns2:ProgramUpdateDate != '' ">
                      <top:programUpdateDate>
                        <xsl:value-of select="ns2:ProgramUpdateDate"/>
                      </top:programUpdateDate>
                    </xsl:if>
                    <xsl:if test="ns2:Quantity and ns2:Quantity != '' ">
                      <top:quantity>
                        <xsl:value-of select="ns2:Quantity"/>
                      </top:quantity>
                    </xsl:if>
                    <xsl:if test="ns2:RecycledContent and ns2:RecycledContent != '' ">
                      <top:recycledContent>
                        <xsl:value-of select="ns2:RecycledContent"/>
                      </top:recycledContent>
                    </xsl:if>
                    <xsl:if test="ns2:RequestId and ns2:RequestId != '' ">
                      <top:requestId>
                        <xsl:value-of select="ns2:RequestId"/>
                      </top:requestId>
                    </xsl:if>
                    <xsl:if test="ns2:RetestDate and ns2:RetestDate != '' ">
                      <top:retestDate>
                        <xsl:value-of select="ns2:RetestDate"/>
                      </top:retestDate>
                    </xsl:if>
                    <xsl:if test="ns2:SerialTransactionIntfId and ns2:SerialTransactionIntfId != '' ">
                      <top:serialTransactionIntfId>
                        <xsl:value-of select="ns2:SerialTransactionIntfId"/>
                      </top:serialTransactionIntfId>
                    </xsl:if>
                    <xsl:if test="ns2:ShipmentNum and ns2:ShipmentNum != '' ">
                      <top:shipmentNum>
                        <xsl:value-of select="ns2:ShipmentNum"/>
                      </top:shipmentNum>
                    </xsl:if>
                    <xsl:if test="ns2:ShipToOrganizationCode and ns2:ShipToOrganizationCode != '' ">
                      <top:shipToOrganizationCode>
                        <xsl:value-of select="ns2:ShipToOrganizationCode"/>
                      </top:shipToOrganizationCode>
                    </xsl:if>
                    <xsl:if test="ns2:StatusId and ns2:StatusId != '' ">
                      <top:statusId>
                        <xsl:value-of select="ns2:StatusId"/>
                      </top:statusId>
                    </xsl:if>
                    <xsl:if test="ns2:StatusName and ns2:StatusName != '' ">
                      <top:statusName>
                        <xsl:value-of select="ns2:StatusName"/>
                      </top:statusName>
                    </xsl:if>
                    <xsl:if test="ns2:SupplierLotNumber and ns2:SupplierLotNumber != '' ">
                      <top:supplierLotNumber>
                        <xsl:value-of select="ns2:SupplierLotNumber"/>
                      </top:supplierLotNumber>
                    </xsl:if>
                    <xsl:if test="ns2:TerritoryCode and ns2:TerritoryCode != '' ">
                      <top:territoryCode>
                        <xsl:value-of select="ns2:TerritoryCode"/>
                      </top:territoryCode>
                    </xsl:if>
                    <xsl:if test="ns2:Thickness and ns2:Thickness != '' ">
                      <top:thickness>
                        <xsl:value-of select="ns2:Thickness"/>
                      </top:thickness>
                    </xsl:if>
                    <xsl:if test="ns2:ToSerialNumber and ns2:ToSerialNumber != '' ">
                      <top:toSerialNumber>
                        <xsl:value-of select="ns2:ToSerialNumber"/>
                      </top:toSerialNumber>
                    </xsl:if>
                    <xsl:if test="ns2:VendorItemNum and ns2:VendorItemNum != '' ">
                      <top:vendorItemNum>
                        <xsl:value-of select="ns2:VendorItemNum"/>
                      </top:vendorItemNum>
                    </xsl:if>
                    <xsl:if test="ns2:Volume and ns2:Volume != '' ">
                      <top:volume>
                        <xsl:value-of select="ns2:Volume"/>
                      </top:volume>
                    </xsl:if>
                    <xsl:if test="ns2:Width and ns2:Width != '' ">
                      <top:width>
                        <xsl:value-of select="ns2:Width"/>
                      </top:width>
                    </xsl:if>
                    <xsl:if test="ns2:UomCode/ns1:Code and ns2:UomCode/ns1:Code != '' ">
                      <top:uomCode>
                        <xsl:value-of select="ns2:UomCode/ns1:Code"/>
                      </top:uomCode>
                    </xsl:if>
                    <xsl:if test="ns2:LengthUom/ns1:Code and ns2:LengthUom/ns1:Code != '' ">
                      <top:lengthUom>
                        <xsl:value-of select="ns2:LengthUom/ns1:Code"/>
                      </top:lengthUom>
                    </xsl:if>
                    <xsl:if test="ns2:ThicknessUom/ns1:Code and ns2:ThicknessUom/ns1:Code != '' ">
                      <top:thicknessUom>
                        <xsl:value-of select="ns2:ThicknessUom/ns1:Code"/>
                      </top:thicknessUom>
                    </xsl:if>
                    <xsl:if test="ns2:VolumeUom/ns1:Code and ns2:VolumeUom/ns1:Code != '' ">
                      <top:volumeUom>
                        <xsl:value-of select="ns2:VolumeUom/ns1:Code"/>
                      </top:volumeUom>
                    </xsl:if>
                    <xsl:if test="ns2:WidthUom/ns1:Code and ns2:WidthUom/ns1:Code != '' ">
                      <top:widthUom>
                        <xsl:value-of select="ns2:WidthUom/ns1:Code"/>
                      </top:widthUom>
                    </xsl:if>
                    <xsl:choose>
                      <xsl:when test="ns2:WhoColumns/ns3:CreatedBy and ns2:WhoColumns/ns3:CreatedBy != ''">
                        <top:createdBy>
                          <xsl:value-of select="ns2:WhoColumns/ns3:CreatedBy"/>
                        </top:createdBy>
                      </xsl:when>
                      <xsl:otherwise>
                        <top:createdBy>
                          <xsl:value-of select='dvm:lookupValue("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_USER_NAME_DIVISION_MAP.dvm","DIVISION","NSNE","EBS_USER_ID","")'/>
                        </top:createdBy>
                      </xsl:otherwise>
                    </xsl:choose>
                    <!--xsl:if test="ns2:WhoColumns/ns3:CreatedBy and ns2:WhoColumns/ns3:CreatedBy != '' ">
                      <top:createdBy>
                        <xsl:value-of select="ns2:WhoColumns/ns3:CreatedBy"/>
                      </top:createdBy>
                    </xsl:if-->
                    <xsl:choose>
                      <xsl:when test="ns2:WhoColumns/ns3:CreationDate and ns2:WhoColumns/ns3:CreationDate != ''">
                        <top:creationDate>
                          <xsl:value-of select="ns2:WhoColumns/ns3:CreationDate"/>
                        </top:creationDate>
                      </xsl:when>
                      <xsl:otherwise>
                        <top:creationDate>
                          <xsl:value-of select="xp20:current-dateTime()"/>
                        </top:creationDate>
                      </xsl:otherwise>
                    </xsl:choose>
                    <!--xsl:if test="ns2:WhoColumns/ns3:CreationDate and ns2:WhoColumns/ns3:CreationDate != '' ">
                      <top:creationDate>
                        <xsl:value-of select="ns2:WhoColumns/ns3:CreationDate"/>
                      </top:creationDate>
                    </xsl:if-->
                    <xsl:choose>
                      <xsl:when test="ns2:WhoColumns/ns3:LastUpdatedBy and ns2:WhoColumns/ns3:LastUpdatedBy != ''">
                        <top:lastUpdatedBy>
                          <xsl:value-of select="ns2:WhoColumns/ns3:LastUpdatedBy"/>
                        </top:lastUpdatedBy>
                      </xsl:when>
                      <xsl:otherwise>
                        <top:lastUpdatedBy>
                          <xsl:value-of select='dvm:lookupValue("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_USER_NAME_DIVISION_MAP.dvm","DIVISION","NSNE","EBS_USER_ID","")'/>
                        </top:lastUpdatedBy>
                      </xsl:otherwise>
                    </xsl:choose>
                    <!--xsl:if test="ns2:WhoColumns/ns3:LastUpdatedBy and ns2:WhoColumns/ns3:LastUpdatedBy != '' ">
                      <top:lastUpdatedBy>
                        <xsl:value-of select="ns2:WhoColumns/ns3:LastUpdatedBy"/>
                      </top:lastUpdatedBy>
                    </xsl:if-->
                    <xsl:choose>
                      <xsl:when test="ns2:WhoColumns/ns3:LastUpdateDate and ns2:WhoColumns/ns3:LastUpdateDate != ''">
                        <top:lastUpdateDate>
                          <xsl:value-of select="ns2:WhoColumns/ns3:LastUpdateDate"/>
                        </top:lastUpdateDate>
                      </xsl:when>
                      <xsl:otherwise>
                        <top:lastUpdateDate>
                          <xsl:value-of select="xp20:current-dateTime()"/>
                        </top:lastUpdateDate>
                      </xsl:otherwise>
                    </xsl:choose>
                    <!--xsl:if test="ns2:WhoColumns/ns3:LastUpdateDate and ns2:WhoColumns/ns3:LastUpdateDate != '' ">
                      <top:lastUpdateDate>
                        <xsl:value-of select="ns2:WhoColumns/ns3:LastUpdateDate"/>
                      </top:lastUpdateDate>
                    </xsl:if-->
                    <xsl:choose>
                      <xsl:when test="ns2:WhoColumns/ns3:LastUpdateLogin and ns2:WhoColumns/ns3:LastUpdateLogin != ''">
                        <top:lastUpdateLogin>
                          <xsl:value-of select="ns2:WhoColumns/ns3:LastUpdateLogin"/>
                        </top:lastUpdateLogin>
                      </xsl:when>
                      <xsl:otherwise>
                        <top:lastUpdateLogin>
                          <xsl:value-of select='dvm:lookupValue("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_USER_NAME_DIVISION_MAP.dvm","DIVISION","NSNE","EBS_USER_ID","")'/>
                        </top:lastUpdateLogin>
                      </xsl:otherwise>
                    </xsl:choose>
                    <!--xsl:if test="ns2:WhoColumns/ns3:LastUpdateLogin and ns2:WhoColumns/ns3:LastUpdateLogin != '' ">
                      <top:lastUpdateLogin>
                        <xsl:value-of select="ns2:WhoColumns/ns3:LastUpdateLogin"/>
                      </top:lastUpdateLogin>
                    </xsl:if-->
                    <xsl:if test="ns2:LPNContentsDFF/ns7:Attribute1 and ns2:LPNContentsDFF/ns7:Attribute1 != '' ">
                      <top:attribute1>
                        <xsl:value-of select="ns2:LPNContentsDFF/ns7:Attribute1"/>
                      </top:attribute1>
                    </xsl:if>
                    <xsl:if test="ns2:LPNContentsDFF/ns7:Attribute10 and ns2:LPNContentsDFF/ns7:Attribute10 != '' ">
                      <top:attribute10>
                        <xsl:value-of select="ns2:LPNContentsDFF/ns7:Attribute10"/>
                      </top:attribute10>
                    </xsl:if>
                    <xsl:if test="ns2:LPNContentsDFF/ns7:Attribute11 and ns2:LPNContentsDFF/ns7:Attribute11 != '' ">
                      <top:attribute11>
                        <xsl:value-of select="ns2:LPNContentsDFF/ns7:Attribute11"/>
                      </top:attribute11>
                    </xsl:if>
                    <xsl:if test="ns2:LPNContentsDFF/ns7:Attribute12 and ns2:LPNContentsDFF/ns7:Attribute12 != '' ">
                      <top:attribute12>
                        <xsl:value-of select="ns2:LPNContentsDFF/ns7:Attribute12"/>
                      </top:attribute12>
                    </xsl:if>
                    <xsl:if test="ns2:LPNContentsDFF/ns7:Attribute13 and ns2:LPNContentsDFF/ns7:Attribute13 != '' ">
                      <top:attribute13>
                        <xsl:value-of select="ns2:LPNContentsDFF/ns7:Attribute13"/>
                      </top:attribute13>
                    </xsl:if>
                    <xsl:if test="ns2:LPNContentsDFF/ns7:Attribute14 and ns2:LPNContentsDFF/ns7:Attribute14 != '' ">
                      <top:attribute14>
                        <xsl:value-of select="ns2:LPNContentsDFF/ns7:Attribute14"/>
                      </top:attribute14>
                    </xsl:if>
                    <xsl:if test="ns2:LPNContentsDFF/ns7:Attribute15 and ns2:LPNContentsDFF/ns7:Attribute15 != '' ">
                      <top:attribute15>
                        <xsl:value-of select="ns2:LPNContentsDFF/ns7:Attribute15"/>
                      </top:attribute15>
                    </xsl:if>
                    <xsl:if test="ns2:LPNContentsDFF/ns7:Attribute2 and ns2:LPNContentsDFF/ns7:Attribute2 != '' ">
                      <top:attribute2>
                        <xsl:value-of select="ns2:LPNContentsDFF/ns7:Attribute2"/>
                      </top:attribute2>
                    </xsl:if>
                    <xsl:if test="ns2:LPNContentsDFF/ns7:Attribute3 and ns2:LPNContentsDFF/ns7:Attribute3 != '' ">
                      <top:attribute3>
                        <xsl:value-of select="ns2:LPNContentsDFF/ns7:Attribute3"/>
                      </top:attribute3>
                    </xsl:if>
                    <xsl:if test="ns2:LPNContentsDFF/ns7:Attribute4 and ns2:LPNContentsDFF/ns7:Attribute4 != '' ">
                      <top:attribute4>
                        <xsl:value-of select="ns2:LPNContentsDFF/ns7:Attribute4"/>
                      </top:attribute4>
                    </xsl:if>
                    <xsl:if test="ns2:LPNContentsDFF/ns7:Attribute5 and ns2:LPNContentsDFF/ns7:Attribute5 != '' ">
                      <top:attribute5>
                        <xsl:value-of select="ns2:LPNContentsDFF/ns7:Attribute5"/>
                      </top:attribute5>
                    </xsl:if>
                    <xsl:if test="ns2:LPNContentsDFF/ns7:Attribute6 and ns2:LPNContentsDFF/ns7:Attribute6 != '' ">
                      <top:attribute6>
                        <xsl:value-of select="ns2:LPNContentsDFF/ns7:Attribute6"/>
                      </top:attribute6>
                    </xsl:if>
                    <xsl:if test="ns2:LPNContentsDFF/ns7:Attribute7 and ns2:LPNContentsDFF/ns7:Attribute7 != '' ">
                      <top:attribute7>
                        <xsl:value-of select="ns2:LPNContentsDFF/ns7:Attribute7"/>
                      </top:attribute7>
                    </xsl:if>
                    <xsl:if test="ns2:LPNContentsDFF/ns7:Attribute8 and ns2:LPNContentsDFF/ns7:Attribute8 != '' ">
                      <top:attribute8>
                        <xsl:value-of select="ns2:LPNContentsDFF/ns7:Attribute8"/>
                      </top:attribute8>
                    </xsl:if>
                    <xsl:if test="ns2:LPNContentsDFF/ns7:Attribute9 and ns2:LPNContentsDFF/ns7:Attribute9 != '' ">
                      <top:attribute9>
                        <xsl:value-of select="ns2:LPNContentsDFF/ns7:Attribute9"/>
                      </top:attribute9>
                    </xsl:if>
                    <xsl:if test="ns2:LPNContentsDFF/ns7:AttributeCategory and ns2:LPNContentsDFF/ns7:AttributeCategory != '' ">
                      <top:attributeCategory>
                        <xsl:value-of select="ns2:LPNContentsDFF/ns7:AttributeCategory"/>
                      </top:attributeCategory>
                    </xsl:if>
                    <!--xsl:if test="ns2:CAttrDFF/ns7:AttributeCategory and ns2:CAttr/ns7:AttributeCategory != '' ">
                      <top:CAttributeCategory>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:AttributeCategory"/>
                      </top:CAttributeCategory>
                    </xsl:if-->
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute1 and ns2:CAttrDFF/ns7:Attribute1 != '' ">
                      <top:cAttribute1>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute1"/>
                      </top:cAttribute1>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute10 and ns2:CAttrDFF/ns7:Attribute10 != '' ">
                      <top:cAttribute10>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute10"/>
                      </top:cAttribute10>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute11 and ns2:CAttrDFF/ns7:Attribute11 != '' ">
                      <top:cAttribute11>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute11"/>
                      </top:cAttribute11>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute12 and ns2:CAttrDFF/ns7:Attribute12 != '' ">
                      <top:cAttribute12>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute12"/>
                      </top:cAttribute12>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute13 and ns2:CAttrDFF/ns7:Attribute13 != '' ">
                      <top:cAttribute13>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute13"/>
                      </top:cAttribute13>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute14 and ns2:CAttrDFF/ns7:Attribute14 != '' ">
                      <top:cAttribute14>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute14"/>
                      </top:cAttribute14>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute15 and ns2:CAttrDFF/ns7:Attribute15 != '' ">
                      <top:cAttribute15>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute15"/>
                      </top:cAttribute15>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute16 and ns2:CAttrDFF/ns7:Attribute16 != '' ">
                      <top:cAttribute16>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute16"/>
                      </top:cAttribute16>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute17 and ns2:CAttrDFF/ns7:Attribute17 != '' ">
                      <top:cAttribute17>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute17"/>
                      </top:cAttribute17>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute18 and ns2:CAttrDFF/ns7:Attribute18 != '' ">
                      <top:cAttribute18>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute18"/>
                      </top:cAttribute18>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute19 and ns2:CAttrDFF/ns7:Attribute19 != '' ">
                      <top:cAttribute19>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute19"/>
                      </top:cAttribute19>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute2 and ns2:CAttrDFF/ns7:Attribute2 != '' ">
                      <top:cAttribute2>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute2"/>
                      </top:cAttribute2>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute20 and ns2:CAttrDFF/ns7:Attribute20 != '' ">
                      <top:cAttribute20>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute20"/>
                      </top:cAttribute20>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute21 and ns2:CAttrDFF/ns7:Attribute21 != '' ">
                      <top:cAttribute21>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute21"/>
                      </top:cAttribute21>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute22 and ns2:CAttrDFF/ns7:Attribute22 != '' ">
                      <top:cAttribute22>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute22"/>
                      </top:cAttribute22>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute23 and ns2:CAttrDFF/ns7:Attribute23 != '' ">
                      <top:cAttribute23>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute23"/>
                      </top:cAttribute23>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute24 and ns2:CAttrDFF/ns7:Attribute24 != '' ">
                      <top:cAttribute24>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute24"/>
                      </top:cAttribute24>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute25 and ns2:CAttrDFF/ns7:Attribute25 != '' ">
                      <top:cAttribute25>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute25"/>
                      </top:cAttribute25>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute26 and ns2:CAttrDFF/ns7:Attribute26 != '' ">
                      <top:cAttribute26>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute26"/>
                      </top:cAttribute26>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute27 and ns2:CAttrDFF/ns7:Attribute27 != '' ">
                      <top:cAttribute27>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute27"/>
                      </top:cAttribute27>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute28 and ns2:CAttrDFF/ns7:Attribute28 != '' ">
                      <top:cAttribute28>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute28"/>
                      </top:cAttribute28>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute29 and ns2:CAttrDFF/ns7:Attribute29 != '' ">
                      <top:cAttribute29>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute29"/>
                      </top:cAttribute29>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute3 and ns2:CAttrDFF/ns7:Attribute3 != '' ">
                      <top:cAttribute3>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute3"/>
                      </top:cAttribute3>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute30 and ns2:CAttrDFF/ns7:Attribute30 != '' ">
                      <top:cAttribute30>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute30"/>
                      </top:cAttribute30>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute4 and ns2:CAttrDFF/ns7:Attribute4 != '' ">
                      <top:cAttribute4>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute4"/>
                      </top:cAttribute4>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute5 and ns2:CAttrDFF/ns7:Attribute5 != '' ">
                      <top:cAttribute5>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute5"/>
                      </top:cAttribute5>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute6 and ns2:CAttrDFF/ns7:Attribute6 != '' ">
                      <top:cAttribute6>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute6"/>
                      </top:cAttribute6>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute7 and ns2:CAttrDFF/ns7:Attribute7 != '' ">
                      <top:cAttribute7>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute7"/>
                      </top:cAttribute7>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute8 and ns2:CAttrDFF/ns7:Attribute8 != '' ">
                      <top:cAttribute8>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute8"/>
                      </top:cAttribute8>
                    </xsl:if>
                    <xsl:if test="ns2:CAttrDFF/ns7:Attribute9 and ns2:CAttrDFF/ns7:Attribute9 != '' ">
                      <top:cAttribute9>
                        <xsl:value-of select="ns2:CAttrDFF/ns7:Attribute9"/>
                      </top:cAttribute9>
                    </xsl:if>
                    <!--xsl:if test="ns2:DAttrDFF/ns7:AttributeCategory and ns2:DAttr/ns7:AttributeCategory != '' ">
                      <top:DAttributeCategory>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:AttributeCategory"/>
                      </top:DAttributeCategory>
                    </xsl:if-->
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute1 and ns2:DAttrDFF/ns7:Attribute1 != '' ">
                      <top:dAttribute1>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute1"/>
                      </top:dAttribute1>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute10 and ns2:DAttrDFF/ns7:Attribute10 != '' ">
                      <top:dAttribute10>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute10"/>
                      </top:dAttribute10>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute11 and ns2:DAttrDFF/ns7:Attribute11 != '' ">
                      <top:dAttribute11>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute11"/>
                      </top:dAttribute11>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute12 and ns2:DAttrDFF/ns7:Attribute12 != '' ">
                      <top:dAttribute12>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute12"/>
                      </top:dAttribute12>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute13 and ns2:DAttrDFF/ns7:Attribute13 != '' ">
                      <top:dAttribute13>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute13"/>
                      </top:dAttribute13>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute14 and ns2:DAttrDFF/ns7:Attribute14 != '' ">
                      <top:dAttribute14>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute14"/>
                      </top:dAttribute14>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute15 and ns2:DAttrDFF/ns7:Attribute15 != '' ">
                      <top:dAttribute15>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute15"/>
                      </top:dAttribute15>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute16 and ns2:DAttrDFF/ns7:Attribute16 != '' ">
                      <top:dAttribute16>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute16"/>
                      </top:dAttribute16>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute17 and ns2:DAttrDFF/ns7:Attribute17 != '' ">
                      <top:dAttribute17>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute17"/>
                      </top:dAttribute17>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute18 and ns2:DAttrDFF/ns7:Attribute18 != '' ">
                      <top:dAttribute18>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute18"/>
                      </top:dAttribute18>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute19 and ns2:DAttrDFF/ns7:Attribute19 != '' ">
                      <top:dAttribute19>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute19"/>
                      </top:dAttribute19>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute2 and ns2:DAttrDFF/ns7:Attribute2 != '' ">
                      <top:dAttribute2>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute2"/>
                      </top:dAttribute2>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute20 and ns2:DAttrDFF/ns7:Attribute20 != '' ">
                      <top:dAttribute20>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute20"/>
                      </top:dAttribute20>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute3 and ns2:DAttrDFF/ns7:Attribute3 != '' ">
                      <top:dAttribute3>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute3"/>
                      </top:dAttribute3>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute4 and ns2:DAttrDFF/ns7:Attribute4 != '' ">
                      <top:dAttribute4>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute4"/>
                      </top:dAttribute4>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute5 and ns2:DAttrDFF/ns7:Attribute5 != '' ">
                      <top:dAttribute5>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute5"/>
                      </top:dAttribute5>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute6 and ns2:DAttrDFF/ns7:Attribute6 != '' ">
                      <top:dAttribute6>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute6"/>
                      </top:dAttribute6>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute7 and ns2:DAttrDFF/ns7:Attribute7 != '' ">
                      <top:dAttribute7>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute7"/>
                      </top:dAttribute7>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute8 and ns2:DAttrDFF/ns7:Attribute8 != '' ">
                      <top:dAttribute8>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute8"/>
                      </top:dAttribute8>
                    </xsl:if>
                    <xsl:if test="ns2:DAttrDFF/ns7:Attribute9 and ns2:DAttrDFF/ns7:Attribute9 != '' ">
                      <top:dAttribute9>
                        <xsl:value-of select="ns2:DAttrDFF/ns7:Attribute9"/>
                      </top:dAttribute9>
                    </xsl:if>
                    <!--xsl:if test="ns2:NAttrDFF/ns7:AttributeCategory and ns2:NAttr/ns7:AttributeCategory != '' ">
                      <top:NAttributeCategory>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:AttributeCategory"/>
                      </top:NAttributeCategory>
                    </xsl:if-->
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute1 and ns2:NAttrDFF/ns7:Attribute1 != '' ">
                      <top:nAttribute1>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute1"/>
                      </top:nAttribute1>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute10 and ns2:NAttrDFF/ns7:Attribute10 != '' ">
                      <top:nAttribute10>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute10"/>
                      </top:nAttribute10>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute11 and ns2:NAttrDFF/ns7:Attribute11 != '' ">
                      <top:nAttribute11>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute11"/>
                      </top:nAttribute11>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute12 and ns2:NAttrDFF/ns7:Attribute12 != '' ">
                      <top:nAttribute12>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute12"/>
                      </top:nAttribute12>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute13 and ns2:NAttrDFF/ns7:Attribute13 != '' ">
                      <top:nAttribute13>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute13"/>
                      </top:nAttribute13>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute14 and ns2:NAttrDFF/ns7:Attribute14 != '' ">
                      <top:nAttribute14>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute14"/>
                      </top:nAttribute14>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute15 and ns2:NAttrDFF/ns7:Attribute15 != '' ">
                      <top:nAttribute15>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute15"/>
                      </top:nAttribute15>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute16 and ns2:NAttrDFF/ns7:Attribute16 != '' ">
                      <top:nAttribute16>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute16"/>
                      </top:nAttribute16>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute17 and ns2:NAttrDFF/ns7:Attribute17 != '' ">
                      <top:nAttribute17>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute17"/>
                      </top:nAttribute17>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute18 and ns2:NAttrDFF/ns7:Attribute18 != '' ">
                      <top:nAttribute18>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute18"/>
                      </top:nAttribute18>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute19 and ns2:NAttrDFF/ns7:Attribute19 != '' ">
                      <top:nAttribute19>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute19"/>
                      </top:nAttribute19>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute2 and ns2:NAttrDFF/ns7:Attribute2 != '' ">
                      <top:nAttribute2>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute2"/>
                      </top:nAttribute2>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute20 and ns2:NAttrDFF/ns7:Attribute20 != '' ">
                      <top:nAttribute20>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute20"/>
                      </top:nAttribute20>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute21 and ns2:NAttrDFF/ns7:Attribute21 != '' ">
                      <top:nAttribute21>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute21"/>
                      </top:nAttribute21>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute22 and ns2:NAttrDFF/ns7:Attribute22 != '' ">
                      <top:nAttribute22>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute22"/>
                      </top:nAttribute22>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute23 and ns2:NAttrDFF/ns7:Attribute23 != '' ">
                      <top:nAttribute23>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute23"/>
                      </top:nAttribute23>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute24 and ns2:NAttrDFF/ns7:Attribute24 != '' ">
                      <top:nAttribute24>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute24"/>
                      </top:nAttribute24>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute25 and ns2:NAttrDFF/ns7:Attribute25 != '' ">
                      <top:nAttribute25>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute25"/>
                      </top:nAttribute25>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute26 and ns2:NAttrDFF/ns7:Attribute26 != '' ">
                      <top:nAttribute26>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute26"/>
                      </top:nAttribute26>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute27 and ns2:NAttrDFF/ns7:Attribute27 != '' ">
                      <top:nAttribute27>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute27"/>
                      </top:nAttribute27>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute28 and ns2:NAttrDFF/ns7:Attribute28 != '' ">
                      <top:nAttribute28>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute28"/>
                      </top:nAttribute28>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute29 and ns2:NAttrDFF/ns7:Attribute29 != '' ">
                      <top:nAttribute29>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute29"/>
                      </top:nAttribute29>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute3 and ns2:NAttrDFF/ns7:Attribute3 != '' ">
                      <top:nAttribute3>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute3"/>
                      </top:nAttribute3>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute30 and ns2:NAttrDFF/ns7:Attribute30 != '' ">
                      <top:nAttribute30>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute30"/>
                      </top:nAttribute30>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute4 and ns2:NAttrDFF/ns7:Attribute4 != '' ">
                      <top:nAttribute4>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute4"/>
                      </top:nAttribute4>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute5 and ns2:NAttrDFF/ns7:Attribute5 != '' ">
                      <top:nAttribute5>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute5"/>
                      </top:nAttribute5>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute6 and ns2:NAttrDFF/ns7:Attribute6 != '' ">
                      <top:nAttribute6>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute6"/>
                      </top:nAttribute6>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute7 and ns2:NAttrDFF/ns7:Attribute7 != '' ">
                      <top:nAttribute7>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute7"/>
                      </top:nAttribute7>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute8 and ns2:NAttrDFF/ns7:Attribute8 != '' ">
                      <top:nAttribute8>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute8"/>
                      </top:nAttribute8>
                    </xsl:if>
                    <xsl:if test="ns2:NAttrDFF/ns7:Attribute9 and ns2:NAttrDFF/ns7:Attribute9 != '' ">
                      <top:nAttribute9>
                        <xsl:value-of select="ns2:NAttrDFF/ns7:Attribute9"/>
                      </top:nAttribute9>
                    </xsl:if>
                  </top:WmsLpnContentsInterface>
                </xsl:for-each>
              </top:wmsLpnContentsInterfaceCollection>
            </top:RcvTransactionsInterface>
          </xsl:for-each>
        </top:rcvTransactionsInterfaceCollection>
      </top:RcvHeadersInterface>
    </top:RcvHeadersInterfaceCollection>
  </xsl:template>
</xsl:stylesheet>
