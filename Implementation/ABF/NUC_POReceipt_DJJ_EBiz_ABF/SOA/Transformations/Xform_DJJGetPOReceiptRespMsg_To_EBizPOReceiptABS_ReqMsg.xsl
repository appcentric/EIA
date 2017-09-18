<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:ns2="http://schemas.oracle.com/service/bpel/common"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns1="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns2 ns1 xp20 oraxsl mhdr oraext dvm xref utl socket"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ns6="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptAO/1.0"
                xmlns:ns9="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0"
                xmlns:ns13="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:cor="http://xmlns.eia.com/ABF/NUC_POReceipt_DJJ_EBiz_ABF/DJJGetPOReceiptV1Impl/correlationset"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:tns="http://xmlns.oracle.com/DV1Application/NUC_POReceipt_DJJ_EBiz_ABF/DJJGetPOReceiptV1"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:ns20="http://xmlns.eia.com/AO/EBiz/common/CategoryAO/1.0"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns3="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns4="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:client="http://xmlns.eia.com/ABF/NUC_POReceipt_DJJ_EBiz_ABF/DJJGetPOReceiptV1Impl"
                xmlns:ns5="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns0="http://xmlns.eia.com/ABS/EBiz/ReceiptABS/1.0"
                xmlns:ns8="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns10="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:vprop="http://docs.oasis-open.org/wsbpel/2.0/varprop"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns12="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:ns11="http://xmlns.eia.com/EO/common/Header/1.0" xmlns:ns21="http://xmlns.eia.com/EDN/1.0/Event"
                xmlns:ns16="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns15="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:ns14="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns18="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderAO/1.0"
                xmlns:ns17="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns19="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DJJGetPOReceiptV1.wsdl"/>
        <oracle-xsl-mapper:rootElement name="ApiResponseShipment" namespace=""/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/ReceiptABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryReceiptResponseMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"/>
        <oracle-xsl-mapper:param name="QueryReceiptByShipment_OutputVariable.QueryReceiptResponseMessage"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DJJGetPOReceiptV1Impl.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="tmpGroupIdNV"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/ReceiptABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateReceiptRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [TUE MAR 22 14:21:40 CST 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="QueryReceiptByShipment_OutputVariable.QueryReceiptResponseMessage"/>
  <xsl:param name="tmpGroupIdNV"/>
  <xsl:variable name="varShipToOrgcode"
                select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", /ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerRefID, "EBS_SHIP_TO_ORGANIZATION", "" )'/>
  <xsl:variable name="varCreateoOrUpdateReceipt">
    <xsl:choose>
      <xsl:when test="(count($QueryReceiptByShipment_OutputVariable.QueryReceiptResponseMessage/ns1:QueryReceiptResponseMessage/ns1:ListOfReceipts/ns7:Receipt/ns7:ListOfTransactions/ns7:Transaction/ns7:SourceTransactionNum) = 0)">
        <xsl:value-of select="'C'"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="'U'"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <xsl:variable name="varASNExists">
    <xsl:choose>
      <xsl:when test="(count($QueryReceiptByShipment_OutputVariable.QueryReceiptResponseMessage/ns1:QueryReceiptResponseMessage/ns1:ListOfReceipts/ns7:Receipt/ns7:BasicReceipt/ns7:ShipmentNumber) != 0)">
        <xsl:value-of select="'Y'"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="'N'"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <xsl:variable name="varDFFAttribute10"
                select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/VehicleNum"/>
  <xsl:variable name="varDFFAttribute11"
                select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/MainFrtVendorName"/>
  <xsl:template match="/">
  <xsl:variable name="varOrgName"
                select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", /ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerRefID, "EBS_OPERATING_UNIT_NAME", "" )'/>
   <xsl:variable name="varOrgId"
                 select="oraext:query-database(concat(&quot;Select organization_id as retvalue from APPS.hr_operating_units where name='&quot;,$varOrgName,&quot;'&quot;),false(),false(),&quot;jdbc/ebsapps&quot;)"/>
  <xsl:variable name="vendorSitId">
    <xsl:choose>
        <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/BizType = 'Scale'">
        <xsl:value-of select="oraext:query-database(concat(&quot;select vendor_site_id from po_headers_all where segment1 = '&quot;,/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/PurchaseShipLine/PurchaseShipmentLineModel[1]/ConsumerPORefID,&quot;'&quot;),false(),false(),&quot;jdbc/ebsapps&quot;)"/>
      </xsl:when>
        <xsl:otherwise>
        <xsl:value-of select="oraext:query-database(concat(&quot;select vendor_site_id from po_headers_all where segment1 = '&quot;,/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/PurchaseShipLine/PurchaseShipmentLineModel[1]/POID,&quot;'&quot;),false(),false(),&quot;jdbc/ebsapps&quot;)"/>
      </xsl:otherwise>
      </xsl:choose>
  </xsl:variable>
  
  <xsl:variable name="vendorName"
                select="oraext:query-database(concat(&quot;SELECT vendor_name FROM po_vendors WHERE vendor_id = (SELECT vendor_id FROM po_vendor_sites_all wheRE vendor_site_id = '&quot;,$vendorSitId,&quot;')&quot;),false(),false(),&quot;jdbc/ebsapps&quot;)"/>
  <xsl:variable name="varShipmentId">
    <xsl:choose>
        <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/BizType = 'Scale' and /ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerShipmentRefID != ''">
        <xsl:choose>
            <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentVersionID > 0">
            <xsl:value-of select="concat(/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerShipmentRefID,'_',/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentVersionID)"/>
          </xsl:when>
            <xsl:otherwise>
            <xsl:value-of select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerShipmentRefID"/>
          </xsl:otherwise>
          </xsl:choose>
      </xsl:when>
        <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/BizType = 'Scale' and /ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerShipmentRefID = ''">
        <xsl:choose>
            <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentVersionID > 0">
            <xsl:value-of select="concat('Scale-',/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerRefID,'-',/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentID,'_',/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentVersionID)"/>
          </xsl:when>
            <xsl:otherwise>
            <xsl:value-of select="concat('Scale-',/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerRefID,'-',/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentID)"/>
          </xsl:otherwise>
          </xsl:choose>
      </xsl:when>
        <xsl:otherwise>
        <xsl:choose>
            <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentVersionID > 0">
            <xsl:value-of select="concat(/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentID,'_',/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentVersionID)"/>
          </xsl:when>
            <xsl:otherwise>
            <xsl:value-of select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentID"/>
          </xsl:otherwise>
          </xsl:choose>
      </xsl:otherwise>
      </xsl:choose>
  </xsl:variable>
  
    <xsl:choose>
      <!-- ASN Creation -->
      <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentType = 'ASN'">
        <ns1:CreateReceiptRequestMessage>
          <ns11:HeaderRq>
            <ns11:Language>ENG</ns11:Language>
            <ns11:ComponentID>I094</ns11:ComponentID>
            <ns11:ServiceName>TEMP</ns11:ServiceName>
            <xsl:if test="$tmpGroupIdNV/ns2:parameters/ns2:item[ns2:name='GroupId']/ns2:value">
              <ns11:TransactionIDREF>
                <xsl:value-of select="$tmpGroupIdNV/ns2:parameters/ns2:item[ns2:name='GroupId']/ns2:value"/>
              </ns11:TransactionIDREF>
            </xsl:if>
            <ns11:TransactionName>POReceipts</ns11:TransactionName>
            <ns11:Source>15</ns11:Source>
            <ns11:Target>2</ns11:Target>
            <ns11:TimeStamp>
              <xsl:value-of select="xp20:current-dateTime ( )"/>
            </ns11:TimeStamp>
          </ns11:HeaderRq>
          <ns1:Receipt>
            <ns7:BasicReceipt>
              <ns7:ShipmentNumber>
                <xsl:value-of select="$varShipmentId"/>
              </ns7:ShipmentNumber>
              <ns7:BillOfLAdding>
                <xsl:value-of select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/BOLNum"/>
              </ns7:BillOfLAdding>
            </ns7:BasicReceipt>
            <ns7:Asntype>
              <xsl:value-of select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentType"/>
            </ns7:Asntype>
            <ns7:Autotransactcode>SHIP</ns7:Autotransactcode>
            <ns7:Currencycode>USD</ns7:Currencycode>
            <xsl:choose>
              <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/EstArrivalDate !=''">
               <ns7:Expectedreceiptdate>
                  <xsl:value-of select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/EstArrivalDate"/>
                </ns7:Expectedreceiptdate>
              </xsl:when>
              <xsl:otherwise>
                <ns7:Expectedreceiptdate>
                  <xsl:value-of select="xp20:add-dayTimeDuration-to-dateTime (/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/DateShipped, 'P1D' )"/>
                </ns7:Expectedreceiptdate>
               </xsl:otherwise>
              </xsl:choose>
            <xsl:if test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/FrtVendorConsumerRefID">
              <ns7:Freightcarriercode>
                <xsl:value-of select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/FrtVendorConsumerRefID"/>
              </ns7:Freightcarriercode>
            </xsl:if>
            <ns7:Groupid>
              <xsl:value-of select="$tmpGroupIdNV/ns2:parameters/ns2:item[ns2:name='GroupId']/ns2:value"/>
            </ns7:Groupid>
            <ns7:Lastupdatedby>-1</ns7:Lastupdatedby>
            <ns7:Operatingunit>
              <!--xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", /ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerRefID, "EBS_OPERATING_UNIT_NAME", "" )'/-->
              <xsl:value-of select="$varOrgName"/>
            </ns7:Operatingunit>
            <xsl:if test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/PackingList">
              <ns7:Packingslip>
                <xsl:value-of select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/PackingList"/>
              </ns7:Packingslip>
            </xsl:if>
            <ns7:Processingstatuscode>PENDING</ns7:Processingstatuscode>
            <ns7:Receiptsourcecode>VENDOR</ns7:Receiptsourcecode>
            <xsl:if test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/DateShipped">
              <ns7:Shippeddate>
                <xsl:value-of select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/DateShipped"/>
              </ns7:Shippeddate>
            </xsl:if>
            <ns7:Shiptoorganizationcode>
              <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", /ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerRefID, "EBS_SHIP_TO_ORGANIZATION", "" )'/>
            </ns7:Shiptoorganizationcode>
            <ns7:Transactiontype>NEW</ns7:Transactiontype>
            <ns7:Validationflag>Y</ns7:Validationflag>
            <ns7:Vendorname>
              <!--xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", /ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerRefID, "EBS_VENDOR_NAME", "" )'/-->
              <xsl:value-of select="$vendorName"/>
            </ns7:Vendorname>
            <!--ns7:Vendorsitecode>
              <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", /ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerRefID, "EBS_VENDOR_SITE_CODE", "" )'/>
            </ns7:Vendorsitecode-->
            <ns7:Vendorsiteid>
              <xsl:value-of select="$vendorSitId"/>
            </ns7:Vendorsiteid>
            <xsl:if test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/WayBillNum">
              <ns7:Waybillairbillnum>
                <xsl:value-of select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/WayBillNum"/>
              </ns7:Waybillairbillnum>
            </xsl:if>
            <ns7:ListOfTransactions>
              <xsl:if test="($varASNExists='N') and (/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentType = 'ASN')">            
              <xsl:for-each select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/PurchaseShipLine/PurchaseShipmentLineModel">

               <xsl:variable name="varBestWgtVersionID">
                 <xsl:for-each select="PurchaseShipLineWeight/PurchaseShipmentLineWeightModel[WgtTypeCode = 'OW']">
                   <xsl:sort select="WgtVersionID" order="descending"/> 
                   <xsl:if test="position()=1">
                      <xsl:value-of select="WgtVersionID"/>
                   </xsl:if>
                 </xsl:for-each>
               </xsl:variable>

                <xsl:variable name="varPurShipLineWgtModel"
                              select="PurchaseShipLineWeight/PurchaseShipmentLineWeightModel[(WgtTypeCode = 'OW') and ($varBestWgtVersionID = WgtVersionID)]"/>

                <xsl:variable name="varSourceTransactionNum" select="concat($varShipmentId,'-',ShipmentLineID)"/>
                <ns7:Transaction>
                    <ns7:DFF>
                      <ns15:AttributeCategory>Scale Connect Weight</ns15:AttributeCategory>
                      <xsl:if test="$varPurShipLineWgtModel/GrossWgtLB">
                      <ns15:Attribute2>
                          <xsl:value-of select="$varPurShipLineWgtModel/GrossWgtLB"/>
                        </ns15:Attribute2>
                    </xsl:if>
                      <xsl:if test="$varPurShipLineWgtModel/TareWgtLB">
                      <ns15:Attribute3>
                          <xsl:value-of select="$varPurShipLineWgtModel/TareWgtLB"/>
                        </ns15:Attribute3>
                    </xsl:if>
                      <xsl:if test="$varPurShipLineWgtModel/CleanTareWeight">
                      <ns15:Attribute4>
                          <xsl:value-of select="$varPurShipLineWgtModel/CleanTareWeight"/>
                        </ns15:Attribute4>
                    </xsl:if>
                      <xsl:if test="$varPurShipLineWgtModel/NetWgtLB">
                      <ns15:Attribute5>
                          <xsl:value-of select="$varPurShipLineWgtModel/NetWgtLB"/>
                        </ns15:Attribute5>
                    </xsl:if>
                      <xsl:if test="$varPurShipLineWgtModel/IsCleaningFeeApplied">
                      <xsl:choose>
                          <xsl:when test="IsCleaningFeeApplied = 'true'">
                          <ns15:Attribute6>Y</ns15:Attribute6>
                        </xsl:when>
                          <xsl:otherwise>
                          <ns15:Attribute6>N</ns15:Attribute6>
                        </xsl:otherwise>
                        </xsl:choose>
                    </xsl:if>
                    </ns7:DFF>
                    <ns7:AutoTransactCode>SHIP</ns7:AutoTransactCode>
                    <ns7:Comments>
                      <xsl:value-of select="concat($varPurShipLineWgtModel/AccountWgtRefID,' ',$varPurShipLineWgtModel/Comment)"/>
                    </ns7:Comments>
                    <ns7:DestinationTypeCode>RECEIVING</ns7:DestinationTypeCode>
                    <!--ns7:DocumentLineNum>
                    <xsl:value-of select="POLineID"/-->
                    <xsl:choose>
                      <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/BizType != 'Scale'">
                        <ns7:DocumentLineNum>
                          <xsl:value-of select="POLineID"/>
                        </ns7:DocumentLineNum>
                      </xsl:when>
                      <xsl:otherwise>
                        <ns7:DocumentLineNum>
                          <xsl:value-of select="ConsumerPOLineRefID"/>
                        </ns7:DocumentLineNum>
                      </xsl:otherwise>
                    </xsl:choose>
                    <!--/ns7:DocumentLineNum-->
                    <!--ns7:DocumentNum>
                    <xsl:value-of select="POID"/>
                  </ns7:DocumentNum-->
                    <xsl:choose>
                      <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/BizType != 'Scale'">
                        <ns7:DocumentNum>
                          <xsl:value-of select="POID"/>
                        </ns7:DocumentNum>
                      </xsl:when>
                      <xsl:otherwise>
                        <ns7:DocumentNum>
                          <xsl:value-of select="ConsumerPORefID"/>
                        </ns7:DocumentNum>
                      </xsl:otherwise>
                    </xsl:choose>
                    <!--ns7:DocumentShipmentLineNum>1</ns7:DocumentShipmentLineNum-->
                    <ns7:GroupId>
                      <xsl:value-of select="$tmpGroupIdNV/ns2:parameters/ns2:item[ns2:name='GroupId']/ns2:value"/>
                    </ns7:GroupId>
                    <ns7:InterfaceSourceCode>RCV</ns7:InterfaceSourceCode>
                    <ns7:Item>
                      <xsl:choose>
                        <xsl:when test="ConsumerItemRefID != ''">
                        <ns13:Item>
                            <xsl:value-of select="ConsumerItemRefID"/>
                          </ns13:Item>
                      </xsl:when>
                        <xsl:otherwise>
                        <ns13:Item>
                            <xsl:value-of select="dvm:lookupValue ('oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm', 'CONSUMER_REF_ID', ../../ConsumerRefID, 'EBS_DEFAULT_ITEM', '' )"/>
                          </ns13:Item>
                      </xsl:otherwise>
                      </xsl:choose>
                    </ns7:Item>
                    <ns7:OperatingUnit>
                      <!--xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", ../../ConsumerRefID, "EBS_OPERATING_UNIT_NAME", "" )'/-->
                      <xsl:value-of select="$varOrgName"/>
                    </ns7:OperatingUnit>
                    <!--ns7:PackingSlip>
                    <xsl:value-of select="$varPurShipLineWgtModel/PackingSlip"/>
                  </ns7:PackingSlip-->
                    <!-- SyncAPI Changes ns7:ProcessingModeCode>BATCH</ns7:ProcessingModeCode-->
                    <ns7:ProcessingModeCode>ONLINE</ns7:ProcessingModeCode>
                    <ns7:ProcessingStatusCode>PENDING</ns7:ProcessingStatusCode>
                    <ns7:Quantity>
                      <xsl:value-of select="$varPurShipLineWgtModel/NetWgtLB"/>
                    </ns7:Quantity>
                    <ns7:ReceiptSourceCode>VENDOR</ns7:ReceiptSourceCode>
                    <!--xsl:if test="ShipmentID"-->
                    <ns7:ShipmentNum>
                      <xsl:value-of select="$varShipmentId"/>
                    </ns7:ShipmentNum>
                    <!--/xsl:if-->
                    <ns7:ShipToLocationCode>
                      <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", ../../ConsumerRefID, "EBS_SHIP_TO_LOCATION_CODE", "" )'/>
                    </ns7:ShipToLocationCode>
                    <ns7:SourceDocumentCode>PO</ns7:SourceDocumentCode>
                    <ns7:SourceTransactionNum>
                      <xsl:value-of select="$varSourceTransactionNum"/>
                    </ns7:SourceTransactionNum>
                    <!--ns7:Subinventory>SCRAP</ns7:Subinventory-->
                    <ns7:ToOrganizationId>
                      <xsl:value-of select="oraext:query-database (concat (&quot;SELECT organization_id FROM org_organization_definitions WHERE organization_code = '&quot;, $varShipToOrgcode, &quot;'&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; )"/>
                    </ns7:ToOrganizationId>
                    <ns7:TransactionDate>
                      <xsl:value-of select="$varPurShipLineWgtModel/LastUpdatedDate"/>
                    </ns7:TransactionDate>
                    <!--ns7:TransactionDate>
                    <xsl:value-of select="../../LastUpdatedDate/*:DateTime"/>
                  </ns7:TransactionDate-->
                    <ns7:TransactionStatusCode>PENDING</ns7:TransactionStatusCode>
                    <ns7:TransactionType>SHIP</ns7:TransactionType>
                    <ns7:TruckNum>
                      <xsl:value-of select="../../VehicleNum"/>
                    </ns7:TruckNum>
                    <ns7:UomCode>LBS</ns7:UomCode>
                    <ns7:ValidationFlag>Y</ns7:ValidationFlag>
                    <ns7:VendorName>
                      <!--xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", ../../ConsumerRefID, "EBS_VENDOR_NAME", "" )'/-->
                      <xsl:value-of select="$vendorName"/>
                    </ns7:VendorName>
                    <!--ns7:VendorSiteCode>
                    <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", ../../ConsumerRefID, "EBS_VENDOR_SITE_CODE", "" )'/>
                  </ns7:VendorSiteCode-->
                    <ns7:Vendorsiteid>
                      <xsl:value-of select="$vendorSitId"/>
                    </ns7:Vendorsiteid>
                    <!--ns7:WaybillAirbillNum>
                    <xsl:value-of select="$varPurShipLineWgtModel/WayBill"/>
                  </ns7:WaybillAirbillNum>
                  <ns7:BillOfLading>
                    <xsl:value-of select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/BOLNum"/>
                  </ns7:BillOfLading-->
                  </ns7:Transaction>
              </xsl:for-each>
              </xsl:if>
            </ns7:ListOfTransactions>
          </ns1:Receipt>
        </ns1:CreateReceiptRequestMessage>
      </xsl:when>
      <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentType = 'Receipt'">
        <ns1:CreateReceiptRequestMessage>
          <ns11:HeaderRq>
            <ns11:Language>ENG</ns11:Language>
            <ns11:ComponentID>I094</ns11:ComponentID>
            <ns11:ServiceName>TEMP</ns11:ServiceName>
            <xsl:if test="$tmpGroupIdNV/ns2:parameters/ns2:item[ns2:name='GroupId']/ns2:value">
              <ns11:TransactionIDREF>
                <xsl:value-of select="$tmpGroupIdNV/ns2:parameters/ns2:item[ns2:name='GroupId']/ns2:value"/>
              </ns11:TransactionIDREF>
            </xsl:if>
            <ns11:TransactionName>POReceipts</ns11:TransactionName>
            <ns11:Source>15</ns11:Source>
            <ns11:Target>2</ns11:Target>
            <ns11:TimeStamp>
              <xsl:value-of select="xp20:current-dateTime ( )"/>
            </ns11:TimeStamp>
          </ns11:HeaderRq>
          <ns1:Receipt>
            <ns7:BasicReceipt>
              <ns7:ShipmentNumber>
                <xsl:value-of select="$varShipmentId"/>
              </ns7:ShipmentNumber>
              <ns7:BillOfLAdding>
                <xsl:value-of select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/BOLNum"/>
              </ns7:BillOfLAdding>
            </ns7:BasicReceipt>
            <!--xsl:for-each select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/PurchaseShipLine/PurchaseShipmentLineModel">
				<xsl:variable name="tmp" select="concat($varShipmentId,'-',ShipmentLineID)"/ -->
            <!--xsl:if test="not(count($QueryReceiptByShipment_OutputVariable.QueryReceiptResponseMessage/ns1:QueryReceiptResponseMessage/ns1:ListOfReceipts/ns7:Receipt/ns7:ListOfTransactions/ns7:Transaction[$tmp=ns7:SourceTransactionNum]/ns7:BasicTransaction/ns7:ShipmentLineId)> 0)">
                                  <b>InIF</b>
                                  <xsl:variable name="varAutoTransactCodetmp" select="PRESENT"/>
                                </xsl:if-->
            <!--xsl:choose>
                <xsl:when test="varAutoTransactCodetmp = 'PRESENT'">
                    <xsl:variable name="varAutoTransactCode" select="CORRECT"/>
                  </xsl:when>
                <xsl:otherwise>
                    <xsl:variable name="varAutoTransactCode" select="RECEIVE"/>
                  </xsl:otherwise>
              </xsl:choose>
                
			</xsl:for-each-->
            <xsl:variable name="varAutotransactcode">
            <xsl:for-each select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/PurchaseShipLine/PurchaseShipmentLineModel">
              <xsl:variable name="tmp1" select="concat($varShipmentId,'-',ShipmentLineID)"/>
              <xsl:choose>
                  <xsl:when test="count($QueryReceiptByShipment_OutputVariable.QueryReceiptResponseMessage/ns1:QueryReceiptResponseMessage/ns1:ListOfReceipts/ns7:Receipt/ns7:ListOfTransactions/ns7:Transaction[$tmp1=ns7:SourceTransactionNum]/ns7:BasicTransaction/ns7:ShipmentLineId)> 0">
                  <xsl:value-of select="'CORRECT'"/>
                </xsl:when>
                  <xsl:otherwise>
                  <xsl:value-of select="'RECEIVE'"/>
                </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
            </xsl:variable>
            <xsl:choose>
              <xsl:when test="contains($varAutotransactcode,'RECEIVE')">
              <ns7:Autotransactcode>RECEIVE</ns7:Autotransactcode>
            </xsl:when>
              <xsl:otherwise>
              <ns7:Autotransactcode>CORRECT</ns7:Autotransactcode>
            </xsl:otherwise>
            </xsl:choose>
            <ns7:Currencycode>USD</ns7:Currencycode>
            <!--ns7:Expectedreceiptdate>
              <xsl:value-of select="xp20:add-dayTimeDuration-to-dateTime (/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/DateShipped, 'P1D' )"/>
            </ns7:Expectedreceiptdate-->
            <ns7:Expectedreceiptdate>
              <xsl:value-of select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/LastUpdatedDate"/>
            </ns7:Expectedreceiptdate>
            <xsl:if test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/FrtVendorConsumerRefID">
              <ns7:Freightcarriercode>
                <xsl:value-of select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/FrtVendorConsumerRefID"/>
              </ns7:Freightcarriercode>
            </xsl:if>
            <ns7:Groupid>
              <xsl:value-of select="$tmpGroupIdNV/ns2:parameters/ns2:item[ns2:name='GroupId']/ns2:value"/>
            </ns7:Groupid>
            <ns7:Lastupdatedby>-1</ns7:Lastupdatedby>
            <ns7:Operatingunit>
              <!--xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", /ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerRefID, "EBS_OPERATING_UNIT_NAME", "" )'/-->
              <xsl:value-of select="$varOrgName"/>
            </ns7:Operatingunit>
            <xsl:if test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/PackingList">
              <ns7:Packingslip>
                <xsl:value-of select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/PackingList"/>
              </ns7:Packingslip>
            </xsl:if>
            <!--ns7:ProcessingModeCode>BATCH</ns7:ProcessingModeCode-->
            <ns7:Processingstatuscode>PENDING</ns7:Processingstatuscode>
            <ns7:Receiptsourcecode>VENDOR</ns7:Receiptsourcecode>
            <xsl:if test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/DateShipped">
              <ns7:Shippeddate>
                <xsl:value-of select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/DateShipped"/>
              </ns7:Shippeddate>
            </xsl:if>
            <ns7:Shiptoorganizationcode>
              <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", /ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerRefID, "EBS_SHIP_TO_ORGANIZATION", "" )'/>
            </ns7:Shiptoorganizationcode>
            <ns7:Transactiontype>NEW</ns7:Transactiontype>
            <!--xsl:if test="ShipmentID"-->
            <ns7:ShipmentNum>
              <xsl:value-of select="$varShipmentId"/>
            </ns7:ShipmentNum>
            <!--/xsl:if-->
            <ns7:Validationflag>Y</ns7:Validationflag>
            <ns7:Vendorname>
              <!--xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", /ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerRefID, "EBS_VENDOR_NAME", "" )'/-->
              <xsl:value-of select="$vendorName"/>
            </ns7:Vendorname>
            <!--ns7:Vendorsitecode>
              <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", /ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerRefID, "EBS_VENDOR_SITE_CODE", "" )'/>
            </ns7:Vendorsitecode-->
            <ns7:Vendorsiteid>
              <xsl:value-of select="$vendorSitId"/>
            </ns7:Vendorsiteid>
            <xsl:if test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/WayBillNum">
              <ns7:Waybillairbillnum>
                <xsl:value-of select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/WayBillNum"/>
              </ns7:Waybillairbillnum>
            </xsl:if>
            <ns7:ListOfTransactions>
              <xsl:for-each select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/PurchaseShipLine/PurchaseShipmentLineModel">
                <xsl:variable name="tmp" select="concat($varShipmentId,'-',ShipmentLineID)"/>
                <xsl:variable name="varCreateoOrUpdateTransaction">
                  <xsl:choose>
                    <xsl:when test="(count($QueryReceiptByShipment_OutputVariable.QueryReceiptResponseMessage/ns1:QueryReceiptResponseMessage/ns1:ListOfReceipts/ns7:Receipt/ns7:ListOfTransactions/ns7:Transaction[$tmp=ns7:SourceTransactionNum]/ns7:BasicTransaction/ns7:ShipmentLineId) = 0)">
                      <xsl:value-of select="'C'"/>
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:value-of select="'U'"/>
                    </xsl:otherwise>
                  </xsl:choose>
                </xsl:variable>
                <xsl:choose>
                  <xsl:when test="$varCreateoOrUpdateTransaction = 'C'">
                    <xsl:variable name="varBestKnownWeightVersionID" select="BestKnownWeightVersionID"/>
                <xsl:variable name="varShipToSettleWeightCode" select="ShipToSettleWeightCode"/>
                <xsl:variable name="varPurShipLineWgtModel"
                              select="PurchaseShipLineWeight/PurchaseShipmentLineWeightModel[WgtVersionID = $varBestKnownWeightVersionID and WgtTypeCode = $varShipToSettleWeightCode]"/>
                <xsl:variable name="varSourceTransactionNum" select="concat($varShipmentId,'-',ShipmentLineID)"/>
                <xsl:variable name="varDJJPOID">
                  <xsl:choose>
                        <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/BizType != 'Scale'">
                      <xsl:value-of select="POID"/>
                    </xsl:when>
                        <xsl:otherwise>
                      <xsl:value-of select="ConsumerPORefID"/>
                    </xsl:otherwise>
                      </xsl:choose>
                </xsl:variable>
                
                <xsl:variable name="varDJJPOLineID">
                  <xsl:choose>
                        <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/BizType != 'Scale'">
                      <xsl:value-of select="POLineID"/>
                    </xsl:when>
                        <xsl:otherwise>
                      <xsl:value-of select="ConsumerPOLineRefID"/>
                    </xsl:otherwise>
                      </xsl:choose>
                </xsl:variable>
                
                <xsl:variable name="varEBSShipmentLineID"
                              select="$QueryReceiptByShipment_OutputVariable.QueryReceiptResponseMessage/ns1:QueryReceiptResponseMessage/ns1:ListOfReceipts/ns7:Receipt/ns7:ListOfBasicReceiptLines/ns7:ReceiptLine[(ns7:BasicPurchaseOrder/ns18:PurchaseOrderNumber = $varDJJPOID) and (ns7:BasicPurchaseOrderLine/ns18:PurchaseOrderNumber = $varDJJPOLineID)][1.0]/ns7:BasicReceiptLine/ns7:Identfier"/>
                
                <ns7:Transaction>
                      <ns7:DFF>
                        <ns15:AttributeCategory>Scale Connect Weight</ns15:AttributeCategory>
                        <xsl:if test="$varPurShipLineWgtModel/GrossWgtLB">
                      <ns15:Attribute2>
                            <xsl:value-of select="$varPurShipLineWgtModel/GrossWgtLB"/>
                          </ns15:Attribute2>
                    </xsl:if>
                        <xsl:if test="$varPurShipLineWgtModel/TareWgtLB">
                      <ns15:Attribute3>
                            <xsl:value-of select="$varPurShipLineWgtModel/TareWgtLB"/>
                          </ns15:Attribute3>
                    </xsl:if>
                        <xsl:if test="$varPurShipLineWgtModel/CleanTareWeight">
                      <ns15:Attribute4>
                            <xsl:value-of select="$varPurShipLineWgtModel/CleanTareWeight"/>
                          </ns15:Attribute4>
                    </xsl:if>
                        <xsl:if test="$varPurShipLineWgtModel/NetWgtLB">
                      <ns15:Attribute5>
                            <xsl:value-of select="$varPurShipLineWgtModel/NetWgtLB"/>
                          </ns15:Attribute5>
                    </xsl:if>
                        <xsl:if test="$varPurShipLineWgtModel/IsCleaningFeeApplied">
                      <xsl:choose>
                            <xsl:when test="IsCleaningFeeApplied = 'true'">
                          <ns15:Attribute6>Y</ns15:Attribute6>
                        </xsl:when>
                            <xsl:otherwise>
                          <ns15:Attribute6>N</ns15:Attribute6>
                        </xsl:otherwise>
                          </xsl:choose>
                    </xsl:if>
                        <xsl:if test="$varPurShipLineWgtModel/AccountWgtRefID">
                      <ns15:Attribute7>
                            <xsl:value-of select="$varPurShipLineWgtModel/AccountWgtRefID"/>
                          </ns15:Attribute7>
                    </xsl:if>
                        <xsl:if test="$varPurShipLineWgtModel/ContainmentPercentage">
                      <ns15:Attribute8>
                            <xsl:value-of select="$varPurShipLineWgtModel/ContainmentPercentage"/>
                          </ns15:Attribute8>
                    </xsl:if>
                        <xsl:choose>
                          <xsl:when test="$varPurShipLineWgtModel/ContainmentNetWgt and ($varPurShipLineWgtModel/ContainmentNetWgt != '') and ($varPurShipLineWgtModel/ContainmentNetWgt > 0)">
                        <ns15:Attribute9>
                              <xsl:value-of select="number($varPurShipLineWgtModel/NetWgtLB) - number($varPurShipLineWgtModel/ContainmentNetWgt)"/>
                            </ns15:Attribute9>
                      </xsl:when>
                          <xsl:otherwise>
                        <xsl:if test="$varPurShipLineWgtModel/ContainmentPercentage and ($varPurShipLineWgtModel/ContainmentPercentage != '')">
                          <ns15:Attribute9>
                                <xsl:value-of select="round(number($varPurShipLineWgtModel/NetWgtLB) * (1 - (number($varPurShipLineWgtModel/ContainmentPercentage) div 100)))"/>
                                <!--xsl:value-of select="number($varPurShipLineWgtModel/NetWgtLB)"/-->
                              </ns15:Attribute9>
                        </xsl:if>
                      </xsl:otherwise>
                        </xsl:choose>
                        <!--xsl:if test="$varPurShipLineWgtModel/ContainmentPercentage"-->
                        <ns15:Attribute10>
                          <xsl:value-of select="$varDFFAttribute10"/>
                        </ns15:Attribute10>
                        <ns15:Attribute11>
                          <xsl:value-of select="$varDFFAttribute11"/>
                        </ns15:Attribute11>
                        <!--/xsl:if-->
                      </ns7:DFF>
                      <ns7:AutoTransactCode>DELIVER</ns7:AutoTransactCode>
                      <ns7:Comments>
                        <xsl:value-of select="concat($varPurShipLineWgtModel/AccountWgtRefID,' ',$varPurShipLineWgtModel/Comment)"/>
                      </ns7:Comments>
                      <ns7:DestinationTypeCode>INVENTORY</ns7:DestinationTypeCode>
                      <ns7:DocumentLineNum>
                        <xsl:value-of select="$varDJJPOLineID"/>
                      </ns7:DocumentLineNum>
                      <!--xsl:choose>
                        <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/BizType != 'Scale'">
                        <ns7:DocumentLineNum>
                            <xsl:value-of select="POLineID"/>
                          </ns7:DocumentLineNum>
                      </xsl:when>
                        <xsl:otherwise>
                        <ns7:DocumentLineNum>
                            <xsl:value-of select="ConsumerPOLineRefID"/>
                          </ns7:DocumentLineNum>
                      </xsl:otherwise>
                      </xsl:choose-->
                      <ns7:DocumentNum>
                        <xsl:value-of select="$varDJJPOID"/>
                      </ns7:DocumentNum>
                      <!--xsl:choose>
                        <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/BizType != 'Scale'">
                        <ns7:DocumentNum>
                            <xsl:value-of select="POID"/>
                          </ns7:DocumentNum>
                      </xsl:when>
                        <xsl:otherwise>
                        <ns7:DocumentNum>
                            <xsl:value-of select="ConsumerPORefID"/>
                          </ns7:DocumentNum>
                      </xsl:otherwise>
                      </xsl:choose-->
                      <!--ns7:DocumentShipmentLineNum>1</ns7:DocumentShipmentLineNum -->
                      <ns7:GroupId>
                        <xsl:value-of select="$tmpGroupIdNV/ns2:parameters/ns2:item[ns2:name='GroupId']/ns2:value"/>
                      </ns7:GroupId>
                      <ns7:InterfaceSourceCode>RCV</ns7:InterfaceSourceCode>
                      <ns7:Item>
                        <xsl:choose>
                          <xsl:when test="ConsumerItemRefID != ''">
                        <ns13:Item>
                              <xsl:value-of select="ConsumerItemRefID"/>
                            </ns13:Item>
                      </xsl:when>
                          <xsl:otherwise>
                        <ns13:Item>
                              <xsl:value-of select="dvm:lookupValue ('oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm', 'CONSUMER_REF_ID', ../../ConsumerRefID, 'EBS_DEFAULT_ITEM', '' )"/>
                            </ns13:Item>
                      </xsl:otherwise>
                        </xsl:choose>
                      </ns7:Item>
                      <xsl:if test="$varPurShipLineWgtModel/YardDestinationName and $varPurShipLineWgtModel/YardDestinationName != ''">
                    <ns7:Locator>
                          <xsl:value-of select="concat($varPurShipLineWgtModel/YardDestinationName,'....')"/>
                        </ns7:Locator>
                  </xsl:if>
                      <ns7:OperatingUnit>
                        <!--xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", ../../ConsumerRefID, "EBS_OPERATING_UNIT_NAME", "" )'/-->
                        <xsl:value-of select="$varOrgName"/>
                      </ns7:OperatingUnit>
                      <!--ns7:PackingSlip>
                    <xsl:value-of select="$varPurShipLineWgtModel/PackingSlip"/>
                  </ns7:PackingSlip-->
                      <!-- SyncAPI Changes ns7:ProcessingModeCode>BATCH</ns7:ProcessingModeCode-->
                      <ns7:ProcessingModeCode>ONLINE</ns7:ProcessingModeCode>
                      <ns7:ProcessingStatusCode>PENDING</ns7:ProcessingStatusCode>
                      <xsl:choose>
                        <xsl:when test="(xp20:upper-case ($varPurShipLineWgtModel/YardDestinationName ) = 'DIRECT CHARGE') and $varPurShipLineWgtModel/TareWgtLB = ''">
                          <xsl:variable name="varESQty"
                                        select="oraext:query-database (concat (&quot;select est_tare_wt from (SELECT qr.character1 car_type, qltdate.any_to_number(qr.CHARACTER2) est_tare_wt, 1 ord FROM qa_results qr,qa_plans qp WHERE qp.name = 'NUC RAIL CAR TARE WEIGHT EST' and qp.plan_id = qr.plan_id AND (qr.status IS NULL OR qr.status = 2) UNION ALL select 'default_value' car_type, 0 est_tare_wt, 999 ord from dual order by 3 asc) where (car_type = '&quot;,../../VehicleNum, &quot;' or car_type = 'default_value' ) and rownum &lt; 2&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; )"/>
                          <ns7:Quantity>
                            <xsl:value-of select="number ($varPurShipLineWgtModel/GrossWgtLB ) - number ($varESQty )"/>
                          </ns7:Quantity>
                        </xsl:when>
                        <xsl:when test="$varPurShipLineWgtModel/ContainmentNetWgt and ($varPurShipLineWgtModel/ContainmentNetWgt != '') and ($varPurShipLineWgtModel/ContainmentNetWgt > 0)">
                          <ns7:Quantity>
                            <xsl:value-of select="$varPurShipLineWgtModel/ContainmentNetWgt"/>
                          </ns7:Quantity>
                        </xsl:when>
                        <xsl:when test="($varPurShipLineWgtModel/ContainmentNetWgt) and ($varPurShipLineWgtModel/ContainmentNetWgt = '' or $varPurShipLineWgtModel/ContainmentNetWgt = '0') and ($varPurShipLineWgtModel/ContainmentPercentage) and ($varPurShipLineWgtModel/ContainmentPercentage != '')">
                          <ns7:Quantity>
                            <xsl:value-of select="(number ($varPurShipLineWgtModel/ContainmentPercentage) * number($varPurShipLineWgtModel/NetWgtLB)) div 100"/>
                            <!--xsl:value-of select="(number ($varPurShipLineWgtModel/ContainmentPercentage))"/-->
                          </ns7:Quantity>
                        </xsl:when>
                        <xsl:otherwise>
                          <ns7:Quantity>
                            <xsl:value-of select="$varPurShipLineWgtModel/NetWgtLB"/>
                          </ns7:Quantity>
                         </xsl:otherwise>
                      </xsl:choose>
                      <ns7:ReceiptSourceCode>VENDOR</ns7:ReceiptSourceCode>
                      <ns7:ShipmentLineId>
                        <xsl:value-of select="$varEBSShipmentLineID"/>
                      </ns7:ShipmentLineId>
                      <!--xsl:if test="ShipmentID"-->
                      <ns7:ShipmentNum>
                        <xsl:value-of select="$varShipmentId"/>
                      </ns7:ShipmentNum>
                      <!--/xsl:if-->
                      <ns7:ShipToLocationCode>
                        <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", ../../ConsumerRefID, "EBS_SHIP_TO_LOCATION_CODE", "" )'/>
                      </ns7:ShipToLocationCode>
                      <ns7:SourceDocumentCode>PO</ns7:SourceDocumentCode>
                      <ns7:SourceTransactionNum>
                        <xsl:value-of select="$varSourceTransactionNum"/>
                      </ns7:SourceTransactionNum>
                      <!--ns7:Subinventory>SCRAP</ns7:Subinventory-->
                      <ns7:ToOrganizationId>
                        <xsl:value-of select="oraext:query-database (concat (&quot;SELECT organization_id FROM org_organization_definitions WHERE organization_code = '&quot;, $varShipToOrgcode, &quot;'&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; )"/>
                      </ns7:ToOrganizationId>
                      <xsl:choose>
                        <xsl:when test="$varPurShipLineWgtModel/WgtDate != ''">
                      <ns7:TransactionDate>
                            <xsl:value-of select="$varPurShipLineWgtModel/WgtDate"/>
                          </ns7:TransactionDate>
                    </xsl:when>
                        <xsl:otherwise>
                      <ns7:TransactionDate>
                            <xsl:value-of select="$varPurShipLineWgtModel/LastUpdatedDate"/>
                          </ns7:TransactionDate>
                    </xsl:otherwise>
                      </xsl:choose>
                      <!--ns7:TransactionDate>
                    <xsl:value-of select="../../LastUpdatedDate/*:DateTime"/>
                  </ns7:TransactionDate-->
                      <ns7:TransactionStatusCode>PENDING</ns7:TransactionStatusCode>
                      <ns7:TransactionType>RECEIVE</ns7:TransactionType>
                      <ns7:TruckNum>
                        <xsl:value-of select="../../VehicleNum"/>
                      </ns7:TruckNum>
                      <ns7:UomCode>LBS</ns7:UomCode>
                      <ns7:ValidationFlag>Y</ns7:ValidationFlag>
                      <ns7:VendorName>
                        <!--xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", ../../ConsumerRefID, "EBS_VENDOR_NAME", "" )'/-->
                        <xsl:value-of select="$vendorName"/>
                      </ns7:VendorName>
                      <!--ns7:VendorSiteCode>
                    <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", ../../ConsumerRefID, "EBS_VENDOR_SITE_CODE", "" )'/>
                  </ns7:VendorSiteCode-->
                      <ns7:Vendorsiteid>
                        <xsl:value-of select="$vendorSitId"/>
                      </ns7:Vendorsiteid>
                      <!--ns7:WaybillAirbillNum>
                    <xsl:value-of select="$varPurShipLineWgtModel/WayBill"/>
                  </ns7:WaybillAirbillNum-->
                    </ns7:Transaction>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:variable name="varPurchaseShipmentLineModel" select="."/>
                <xsl:variable name="varBestKnownWeightVersionID" select="BestKnownWeightVersionID"/>
                <xsl:variable name="varShipToSettleWeightCode" select="ShipToSettleWeightCode"/>
                <xsl:variable name="varPurShipLineWgtModel"
                              select="$varPurchaseShipmentLineModel/PurchaseShipLineWeight/PurchaseShipmentLineWeightModel[WgtVersionID = $varBestKnownWeightVersionID and WgtTypeCode = $varShipToSettleWeightCode]"/>
                <xsl:variable name="varSourceTransactionNum"
                              select="concat($varShipmentId,'-',$varPurchaseShipmentLineModel/ShipmentLineID)"/>
                <!--xsl:variable name="varESQty" select="number(0)"/-->
                
<!--                 <xsl:variable name="varShipQty" select ="number(120)"/>
                <xsl:variable name="varCorrectionQty" select="number(-100)"/>
 -->
               <xsl:variable name="varESQty">
                <xsl:choose>
                        <xsl:when test="(xp20:upper-case ($varPurShipLineWgtModel/YardDestinationName ) = 'DIRECT CHARGE') and $varPurShipLineWgtModel/TareWgtLB = ''">
                     <xsl:value-of select="oraext:query-database (concat (&quot;select est_tare_wt from (SELECT qr.character1 car_type, qltdate.any_to_number(qr.CHARACTER2) est_tare_wt, 1 ord FROM qa_results qr,qa_plans qp WHERE qp.name = 'NUC RAIL CAR TARE WEIGHT EST' and qp.plan_id = qr.plan_id AND (qr.status IS NULL OR qr.status = 2) UNION ALL select 'default_value' car_type, 0 est_tare_wt, 999 ord from dual order by 3 asc) where (car_type = '&quot;,$varPurchaseShipmentLineModel/../../VehicleNum, &quot;' or car_type = 'default_value' ) and rownum &lt; 2&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; )"/>
                   </xsl:when>
                        <xsl:otherwise>
                      <xsl:value-of select="number(0)"/>
                   </xsl:otherwise>
                      </xsl:choose>
               </xsl:variable>

  
                <!--xsl:variable name="varShipQty" select ="number(0)"-->
                <xsl:variable name="varShipQty">
                 <xsl:choose>
                        <xsl:when test="(xp20:upper-case ($varPurShipLineWgtModel/YardDestinationName ) = 'DIRECT CHARGE') and $varPurShipLineWgtModel/TareWgtLB = ''">
                     <xsl:value-of select="number ($varPurShipLineWgtModel/GrossWgtLB ) - number ($varESQty )"/>
                   </xsl:when>
                        <xsl:when test="$varPurShipLineWgtModel/ContainmentNetWgt and ($varPurShipLineWgtModel/ContainmentNetWgt != '') and ($varPurShipLineWgtModel/ContainmentNetWgt > 0)">
                      <xsl:value-of select="$varPurShipLineWgtModel/ContainmentNetWgt"/>
                   </xsl:when>
                        <xsl:when test="($varPurShipLineWgtModel/ContainmentNetWgt) and ($varPurShipLineWgtModel/ContainmentNetWgt = '' or $varPurShipLineWgtModel/ContainmentNetWgt = '0') and ($varPurShipLineWgtModel/ContainmentPercentage) and ($varPurShipLineWgtModel/ContainmentPercentage != '')">
                        <!--xsl:value-of select="(number ($varPurShipLineWgtModel/ContainmentPercentage) )"/-->
                        <xsl:value-of select="(number ($varPurShipLineWgtModel/ContainmentPercentage) * number($varPurShipLineWgtModel/NetWgtLB)) div 100"/>
                   </xsl:when>
                        <xsl:otherwise>
                      <xsl:value-of select="$varPurShipLineWgtModel/NetWgtLB"/>
                    </xsl:otherwise>
                      </xsl:choose>
                </xsl:variable>
    
                <xsl:variable name="varDeliverTransactionId"
                              select="$QueryReceiptByShipment_OutputVariable.QueryReceiptResponseMessage/ns1:QueryReceiptResponseMessage/ns1:ListOfReceipts/ns7:Receipt/ns7:ListOfTransactions/ns7:Transaction[(ns7:BasicTransaction/ns7:TransactionType = 'DELIVER' and ns7:DestinationTypeCode='INVENTORY' and ns7:SourceTransactionNum = $varSourceTransactionNum)]/ns7:BasicTransaction/ns7:Identifier"/>
                <xsl:variable name="varReceiptLineQty"
                              select="sum($QueryReceiptByShipment_OutputVariable.QueryReceiptResponseMessage/ns1:QueryReceiptResponseMessage/ns1:ListOfReceipts/ns7:Receipt/ns7:ListOfTransactions/ns7:Transaction[((ns7:BasicTransaction/ns7:Identifier = $varDeliverTransactionId) or (ns7:BasicTransaction/ns7:TransactionType = 'CORRECT' and ns7:DestinationTypeCode='INVENTORY' and ns7:ParentTransactionId = $varDeliverTransactionId))]/ns7:BasicTransaction/ns7:Quantity)"/>
                
                <xsl:variable name="varCorrectionQty" select="number($varShipQty) - number($varReceiptLineQty)"/>
                
                <xsl:variable name="varCorrectionType">
                <xsl:choose>
                        <xsl:when test="$varCorrectionQty > 0">
                      <xsl:value-of select="'RECEIVE'"/>
                    </xsl:when>
                        <xsl:otherwise>
                      <xsl:value-of select="'DELIVER'"/>
                    </xsl:otherwise>
                      </xsl:choose>
              </xsl:variable>
              
              <xsl:variable name="varDocumentNum">
                <xsl:choose>
                        <xsl:when test="BizType != 'Scale'">
                    <xsl:value-of select="POID"/>
                  </xsl:when>
                        <xsl:otherwise>
                    <xsl:value-of select="ConsumerPORefID"/>
                  </xsl:otherwise>
                      </xsl:choose>
              </xsl:variable>
              <xsl:variable name="varDocumentLineNum">
                <xsl:choose>
                        <xsl:when test="BizType != 'Scale'">
                    <xsl:value-of select="POLineID"/>
                  </xsl:when>
                        <xsl:otherwise>
                    <xsl:value-of select="ConsumerPOLineRefID"/>
                  </xsl:otherwise>
                      </xsl:choose>
              </xsl:variable>
              <xsl:variable name="varEBSShipmentLineID"
                            select="$QueryReceiptByShipment_OutputVariable.QueryReceiptResponseMessage/ns1:QueryReceiptResponseMessage/ns1:ListOfReceipts/ns7:Receipt/ns7:ListOfBasicReceiptLines/ns7:ReceiptLine[(ns7:BasicPurchaseOrder/ns18:PurchaseOrderNumber = $varDocumentNum) and (ns7:BasicPurchaseOrderLine/ns18:PurchaseOrderNumber = $varDocumentLineNum)][1.0]/ns7:BasicReceiptLine/ns7:Identfier"/>
                <!-- dummy loop to create two transactions per line one for receive and another for delivery or viceversa -->
                <xsl:if test='$varCorrectionQty != 0'>
                  <xsl:for-each select="(//node())[2 >= position()]">
                    <ns7:Transaction>
                          <ns7:DFF>
                            <ns15:AttributeCategory>Scale Connect Weight</ns15:AttributeCategory>
                            <xsl:if test="$varPurShipLineWgtModel/GrossWgtLB">
                          <ns15:Attribute2>
                                <xsl:value-of select="$varPurShipLineWgtModel/GrossWgtLB"/>
                              </ns15:Attribute2>
                        </xsl:if>
                            <xsl:if test="$varPurShipLineWgtModel/TareWgtLB">
                          <ns15:Attribute3>
                                <xsl:value-of select="$varPurShipLineWgtModel/TareWgtLB"/>
                              </ns15:Attribute3>
                        </xsl:if>
                            <xsl:if test="$varPurShipLineWgtModel/CleanTareWeight">
                          <ns15:Attribute4>
                                <xsl:value-of select="$varPurShipLineWgtModel/CleanTareWeight"/>
                              </ns15:Attribute4>
                        </xsl:if>
                            <xsl:if test="$varPurShipLineWgtModel/NetWgtLB">
                          <ns15:Attribute5>
                                <xsl:value-of select="$varPurShipLineWgtModel/NetWgtLB"/>
                              </ns15:Attribute5>
                        </xsl:if>
                            <xsl:if test="$varPurShipLineWgtModel/IsCleaningFeeApplied">
                          <xsl:choose>
                                <xsl:when test="IsCleaningFeeApplied = 'true'">
                              <ns15:Attribute6>Y</ns15:Attribute6>
                            </xsl:when>
                                <xsl:otherwise>
                              <ns15:Attribute6>N</ns15:Attribute6>
                            </xsl:otherwise>
                              </xsl:choose>
                        </xsl:if>
                            <xsl:if test="$varPurShipLineWgtModel/AccountWgtRefID">
                      <ns15:Attribute7>
                                <xsl:value-of select="$varPurShipLineWgtModel/AccountWgtRefID"/>
                              </ns15:Attribute7>
                    </xsl:if>
                            <xsl:if test="$varPurShipLineWgtModel/ContainmentPercentage">
                      <ns15:Attribute8>
                                <xsl:value-of select="$varPurShipLineWgtModel/ContainmentPercentage"/>
                              </ns15:Attribute8>
                    </xsl:if>
                            <xsl:choose>
                              <xsl:when test="$varPurShipLineWgtModel/ContainmentNetWgt and ($varPurShipLineWgtModel/ContainmentNetWgt != '') and ($varPurShipLineWgtModel/ContainmentNetWgt > 0)">
                        <ns15:Attribute9>
                                  <xsl:value-of select="number($varPurShipLineWgtModel/NetWgtLB) - number($varPurShipLineWgtModel/ContainmentNetWgt)"/>
                                </ns15:Attribute9>
                      </xsl:when>
                              <xsl:otherwise>
                        <xsl:if test="$varPurShipLineWgtModel/ContainmentPercentage and ($varPurShipLineWgtModel/ContainmentPercentage != '')">
                            <ns15:Attribute9>
                                    <xsl:value-of select="round(number($varPurShipLineWgtModel/NetWgtLB) * (1 - (number($varPurShipLineWgtModel/ContainmentPercentage) div 100)))"/>
                                    <!--xsl:value-of select="number($varPurShipLineWgtModel/NetWgtLB)"/-->
                                  </ns15:Attribute9>
                          </xsl:if>
                      </xsl:otherwise>
                            </xsl:choose>
                            <!--xsl:if test="$varPurShipLineWgtModel/ContainmentPercentage"-->
                            <ns15:Attribute10>
                              <xsl:value-of select="$varDFFAttribute10"/>
                            </ns15:Attribute10>
                            <ns15:Attribute11>
                              <xsl:value-of select="$varDFFAttribute11"/>
                            </ns15:Attribute11>
                            <!--/xsl:if-->
                          </ns7:DFF>
                          <!--ns7:AutoTransactCode>RECEIVE</ns7:AutoTransactCode-->
                          <ns7:Comments>
                            <xsl:value-of select='concat ($varPurShipLineWgtModel/AccountWgtRefID, " ", $varPurShipLineWgtModel/Comment )'/>
                          </ns7:Comments>
                          <xsl:choose>
                            <xsl:when test="position() = 1 and $varCorrectionType = 'RECEIVE'">
                          <ns7:DestinationTypeCode>RECEIVING</ns7:DestinationTypeCode>
                        </xsl:when>
                            <xsl:when test="position() = 2 and $varCorrectionType = 'RECEIVE'">
                          <ns7:DestinationTypeCode>INVENTORY</ns7:DestinationTypeCode>
                        </xsl:when>
                            <xsl:when test="position() = 1 and $varCorrectionType = 'DELIVER'">
                          <ns7:DestinationTypeCode>INVENTORY</ns7:DestinationTypeCode>
                        </xsl:when>
                            <xsl:when test="position() = 2 and $varCorrectionType = 'DELIVER'">
                          <ns7:DestinationTypeCode>RECEIVING</ns7:DestinationTypeCode>
                        </xsl:when>
                          </xsl:choose>
                          <!--ns7:DocumentLineNum>
                        <xsl:value-of select="$varPurchaseShipmentLineModel/POLineID"/>
                      </ns7:DocumentLineNum-->
                          <!--xsl:choose>
                      <xsl:when test="BizType != 'Scale'"-->
                          <ns7:DocumentNum>
                            <xsl:value-of select="$varDocumentNum"/>
                          </ns7:DocumentNum>
                          <!--/xsl:when>
                      <xsl:otherwise-->
                          <ns7:DocumentLineNum>
                            <xsl:value-of select="$varDocumentLineNum"/>
                          </ns7:DocumentLineNum>
                          <!--/xsl:otherwise>
                    </xsl:choose-->
                          <!--ns7:DocumentNum>
                        <xsl:value-of select="$varPurchaseShipmentLineModel/POID"/>
                      </ns7:DocumentNum-->
                          <!--xsl:choose>
                      <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/BizType != 'Scale'">
                        <ns7:DocumentNum>
                          <xsl:value-of select="POID"/>
                        </ns7:DocumentNum>
                      </xsl:when>
                      <xsl:otherwise>
                        <ns7:DocumentNum>
                          <xsl:value-of select="ConsumerPORefID"/>
                        </ns7:DocumentNum>
                      </xsl:otherwise>
                    </xsl:choose-->
                          <!--ns7:DocumentShipmentLineNum>1</ns7:DocumentShipmentLineNum-->
                          <ns7:GroupId>
                            <xsl:value-of select="$tmpGroupIdNV/ns2:parameters/ns2:item[ns2:name='GroupId']/ns2:value"/>
                          </ns7:GroupId>
                          <ns7:InterfaceSourceCode>RCV</ns7:InterfaceSourceCode>
                          <ns7:Item>
                            <xsl:choose>
                              <xsl:when test="$varPurchaseShipmentLineModel/ConsumerItemRefID != ''">
                            <ns13:Item>
                                  <xsl:value-of select="$varPurchaseShipmentLineModel/ConsumerItemRefID"/>
                                </ns13:Item>
                          </xsl:when>
                              <xsl:otherwise>
                            <ns13:Item>
                                  <xsl:value-of select="dvm:lookupValue ('oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm', 'CONSUMER_REF_ID', $varPurchaseShipmentLineModel/../../ConsumerRefID, 'EBS_DEFAULT_ITEM', '' )"/>
                                </ns13:Item>
                          </xsl:otherwise>
                            </xsl:choose>
                          </ns7:Item>
                          <xsl:if test="$varPurShipLineWgtModel/YardDestinationName and $varPurShipLineWgtModel/YardDestinationName != ''">
                        <ns7:Locator>
                              <xsl:value-of select="concat($varPurShipLineWgtModel/YardDestinationName,'....')"/>
                            </ns7:Locator>
                      </xsl:if>
                          <ns7:OperatingUnit>
                            <!--xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", $varPurchaseShipmentLineModel/../../ConsumerRefID, "EBS_OPERATING_UNIT_NAME", "" )'/-->
                            <xsl:value-of select="$varOrgName"/>
                          </ns7:OperatingUnit>
                          <!--ns7:PackingSlip>
                        <xsl:value-of select="$varPurShipLineWgtModel/PackingSlip"/>
                      </ns7:PackingSlip-->
                          <xsl:choose>
                            <xsl:when test="position() = 1 and $varCorrectionType = 'RECEIVE'">
                          <ns7:ParentTransactionId>
                                <xsl:value-of select="$QueryReceiptByShipment_OutputVariable.QueryReceiptResponseMessage/ns1:QueryReceiptResponseMessage/ns1:ListOfReceipts/ns7:Receipt/ns7:ListOfTransactions/ns7:Transaction[ns7:BasicTransaction/ns7:TransactionType = 'RECEIVE' and ns7:SourceTransactionNum = $varSourceTransactionNum]/ns7:BasicTransaction/ns7:Identifier"/>
                              </ns7:ParentTransactionId>
                        </xsl:when>
                            <xsl:when test="position() = 2 and $varCorrectionType = 'RECEIVE'">
                          <ns7:ParentTransactionId>
                                <xsl:value-of select="$QueryReceiptByShipment_OutputVariable.QueryReceiptResponseMessage/ns1:QueryReceiptResponseMessage/ns1:ListOfReceipts/ns7:Receipt/ns7:ListOfTransactions/ns7:Transaction[ns7:BasicTransaction/ns7:TransactionType = 'DELIVER' and ns7:SourceTransactionNum = $varSourceTransactionNum]/ns7:BasicTransaction/ns7:Identifier"/>
                              </ns7:ParentTransactionId>
                        </xsl:when>
                            <xsl:when test="position() = 1 and $varCorrectionType = 'DELIVER'">
                          <ns7:ParentTransactionId>
                                <xsl:value-of select="$QueryReceiptByShipment_OutputVariable.QueryReceiptResponseMessage/ns1:QueryReceiptResponseMessage/ns1:ListOfReceipts/ns7:Receipt/ns7:ListOfTransactions/ns7:Transaction[ns7:BasicTransaction/ns7:TransactionType = 'DELIVER' and ns7:SourceTransactionNum = $varSourceTransactionNum]/ns7:BasicTransaction/ns7:Identifier"/>
                              </ns7:ParentTransactionId>
                        </xsl:when>
                            <xsl:when test="position() = 2 and $varCorrectionType = 'DELIVER'">
                          <ns7:ParentTransactionId>
                                <xsl:value-of select="$QueryReceiptByShipment_OutputVariable.QueryReceiptResponseMessage/ns1:QueryReceiptResponseMessage/ns1:ListOfReceipts/ns7:Receipt/ns7:ListOfTransactions/ns7:Transaction[ns7:BasicTransaction/ns7:TransactionType = 'RECEIVE' and ns7:SourceTransactionNum = $varSourceTransactionNum]/ns7:BasicTransaction/ns7:Identifier"/>
                              </ns7:ParentTransactionId>
                        </xsl:when>
                          </xsl:choose>
                          <!-- SyncAPI Changes ns7:ProcessingModeCode>BATCH</ns7:ProcessingModeCode-->
                          <ns7:ProcessingModeCode>ONLINE</ns7:ProcessingModeCode>
                          <ns7:ProcessingStatusCode>PENDING</ns7:ProcessingStatusCode>
                          <ns7:Quantity>
                            <xsl:value-of select="$varCorrectionQty"/>
                          </ns7:Quantity>
                          <ns7:ReceiptSourceCode>VENDOR</ns7:ReceiptSourceCode>
                          <ns7:ShipmentLineId>
                            <xsl:value-of select="$varEBSShipmentLineID"/>
                          </ns7:ShipmentLineId>
                          <!--xsl:if test="$varPurchaseShipmentLineModel/ShipmentID"-->
                          <ns7:ShipmentNum>
                            <xsl:value-of select="$varShipmentId"/>
                          </ns7:ShipmentNum>
                          <!--/xsl:if-->
                          <ns7:ShipToLocationCode>
                            <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", $varPurchaseShipmentLineModel/../../ConsumerRefID, "EBS_SHIP_TO_LOCATION_CODE", "" )'/>
                          </ns7:ShipToLocationCode>
                          <ns7:SourceDocumentCode>PO</ns7:SourceDocumentCode>
                          <!--ns7:Subinventory>SCRAP</ns7:Subinventory-->
                          <!--ns7:SourceTransactionNum>
                        <xsl:value-of select="$varSourceTransactionNum"/>
                      </ns7:SourceTransactionNum-->
                          <ns7:ToOrganizationId>
                            <xsl:value-of select="oraext:query-database (concat (&quot;SELECT organization_id FROM org_organization_definitions WHERE organization_code = '&quot;, $varShipToOrgcode, &quot;'&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; )"/>
                          </ns7:ToOrganizationId>
                          <xsl:choose>
                            <xsl:when test="$varPurShipLineWgtModel/WgtDate != ''">
                          <ns7:TransactionDate>
                                <xsl:value-of select="$varPurShipLineWgtModel/WgtDate"/>
                              </ns7:TransactionDate>
                        </xsl:when>
                            <xsl:otherwise>
                          <ns7:TransactionDate>
                                <xsl:value-of select="$varPurShipLineWgtModel/LastUpdatedDate"/>
                              </ns7:TransactionDate>
                        </xsl:otherwise>
                          </xsl:choose>
                          <!--ns7:TransactionDate>
                        <xsl:value-of select="$varPurchaseShipmentLineModel/../../LastUpdatedDate/*:DateTime"/>
                      </ns7:TransactionDate-->
                          <ns7:TransactionStatusCode>PENDING</ns7:TransactionStatusCode>
                          <ns7:TransactionType>CORRECT</ns7:TransactionType>
                          <ns7:TruckNum>
                            <xsl:value-of select="$varPurchaseShipmentLineModel/../../VehicleNum"/>
                          </ns7:TruckNum>
                          <ns7:UomCode>LBS</ns7:UomCode>
                          <ns7:ValidationFlag>Y</ns7:ValidationFlag>
                          <ns7:VendorName>
                            <!--xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", $varPurchaseShipmentLineModel/../../ConsumerRefID, "EBS_VENDOR_NAME", "" )'/-->
                            <xsl:value-of select="$vendorName"/>
                          </ns7:VendorName>
                          <!--ns7:VendorSiteCode>
                        <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", $varPurchaseShipmentLineModel/../../ConsumerRefID, "EBS_VENDOR_SITE_CODE", "" )'/>
                      </ns7:VendorSiteCode-->
                          <ns7:Vendorsiteid>
                            <xsl:value-of select="$vendorSitId"/>
                          </ns7:Vendorsiteid>
                          <!--ns7:WaybillAirbillNum>
                        <xsl:value-of select="$varPurShipLineWgtModel/WayBill"/>
                      </ns7:WaybillAirbillNum-->
                        </ns7:Transaction>
                  </xsl:for-each>
                </xsl:if>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:for-each>
            </ns7:ListOfTransactions>
          </ns1:Receipt>
        </ns1:CreateReceiptRequestMessage>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
