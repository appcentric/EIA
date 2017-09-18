<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:ns1="http://schemas.oracle.com/service/bpel/common"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:tns="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns1 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:client="http://xmlns.eia.com/ABF/NUC_POReceipt_DJJ_EBiz_ABF/DJJGetPOReceiptV1Impl"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ns="http://xmlns.eia.com/ABS/EBiz/ReceiptABS/1.0"
                xmlns:vprop="http://docs.oasis-open.org/wsbpel/2.0/varprop"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns2="http://xmlns.eia.com/EDN/1.0/Event"
                xmlns:cor="http://xmlns.eia.com/ABF/NUC_POReceipt_DJJ_EBiz_ABF/DJJGetPOReceiptV1Impl/correlationset"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns0="http://xmlns.oracle.com/DV1Application/NUC_POReceipt_DJJ_EBiz_ABF/DJJGetPOReceiptV1"
                xmlns:ns6="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptAO/1.0"
                xmlns:ns9="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0"
                xmlns:ns13="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:ns20="http://xmlns.eia.com/AO/EBiz/common/CategoryAO/1.0"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns4="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:ns3="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns5="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns8="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns10="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:ns12="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:ns11="http://xmlns.eia.com/EO/common/Header/1.0"
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
        <oracle-xsl-mapper:schema location="../WSDLs/DJJGetPOReceiptV1Impl.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="tmpGroupIdNV"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/ReceiptABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryReceiptRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [FRI MAR 04 09:06:01 CST 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="tmpGroupIdNV"/>
  <xsl:template match="/">
    <tns:QueryReceiptRequestMessage>
      <ns11:HeaderRq>
        <ns11:Language>ENG</ns11:Language>
        <ns11:ComponentID>I094</ns11:ComponentID>
        <ns11:ServiceName/>
        <xsl:if test="$tmpGroupIdNV/ns1:parameters/ns1:item/ns1:value">
          <ns11:TransactionIDREF>
            <xsl:value-of select="$tmpGroupIdNV/ns1:parameters/ns1:item/ns1:value"/>
          </ns11:TransactionIDREF>
        </xsl:if>
        <ns11:TransactionName>POReceipts</ns11:TransactionName>
        <ns11:Source>15</ns11:Source>
        <ns11:Target>2</ns11:Target>
        <ns11:TimeStamp>
          <xsl:value-of select="xp20:current-dateTime ( )"/>
        </ns11:TimeStamp>
      </ns11:HeaderRq>
      <tns:Receipt>
        <ns7:BasicReceipt>
          <!--xsl:if test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentID"-->
          <xsl:choose>
            <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/BizType = 'Scale' and /ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerShipmentRefID != ''">
              <xsl:choose>
                <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentVersionID > 0">
                  <ns7:ShipmentNumber>
                    <xsl:value-of select="concat(/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerShipmentRefID,'_',/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentVersionID)"/>
                  </ns7:ShipmentNumber>
                </xsl:when>
                <xsl:otherwise>
                  <ns7:ShipmentNumber>
                    <xsl:value-of select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerShipmentRefID"/>
                  </ns7:ShipmentNumber>
                </xsl:otherwise>
              </xsl:choose>              
            </xsl:when>
            <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/BizType = 'Scale' and /ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerShipmentRefID = ''">
              <xsl:choose>
                <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentVersionID > 0">
                  <ns7:ShipmentNumber>
                    <xsl:value-of select="concat('Scale-',/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerRefID,'-',/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentID,'_',/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentVersionID)"/>
                  </ns7:ShipmentNumber>
                </xsl:when>
                <xsl:otherwise>
                  <ns7:ShipmentNumber>
                    <xsl:value-of select="concat('Scale-',/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerRefID,'-',/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentID)"/>
                  </ns7:ShipmentNumber>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
              <xsl:choose>
                <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentVersionID > 0">
                  <ns7:ShipmentNumber>
                    <xsl:value-of select="concat(/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentID,'_',/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentVersionID)"/>
                  </ns7:ShipmentNumber>
                </xsl:when>
                <xsl:otherwise>
                  <ns7:ShipmentNumber>
                    <xsl:value-of select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentID"/>
                  </ns7:ShipmentNumber>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:otherwise>
          </xsl:choose>
          <!--/xsl:if-->
        </ns7:BasicReceipt>
        <ns7:OperatingUnit>
          <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", /ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerRefID, "EBS_OPERATING_UNIT_NAME", "" )'/>
        </ns7:OperatingUnit>
        <!--xsl:if test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentID"-->
        <xsl:choose>
          <xsl:when test="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/BizType != 'Scale'">
              <ns7:Shipmentnum>
              <xsl:value-of select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ShipmentID"/>
            </ns7:Shipmentnum>
            </xsl:when>
          <xsl:otherwise>
              <ns7:Shipmentnum>
              <xsl:value-of select="/ApiResponseShipment/PurchaseShipmentHeaders/PurchaseShipmentHeaderModel/ConsumerShipmentRefID"/>
            </ns7:Shipmentnum>
            </xsl:otherwise>
        </xsl:choose>
        <!--/xsl:if-->
      </tns:Receipt>
    </tns:QueryReceiptRequestMessage>
  </xsl:template>
</xsl:stylesheet>
