<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:ns0="http://xmlns.oracle.com/apps/otm"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_InsertARFreightEBS"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:client="http://xmlns.eia.com/NUC_ReceiveARFreight_OTM_EBiz_ABF/NUC_ReceiveARFreight_OTM_EBiz_ABF/NUC_ReceiveARFreight_OTM_Ebiz_ABF"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/NUC_ReceiveARFreight_OTM_EBiz_ABF/NUC_ReceiveARFreight_OTM_EBiz_ABF/DB_InsertARFreightEBS"
                xmlns:ns3="http://schemas.oracle.com/service/bpel/common"
                xmlns:ns2="http://xmlns.eia.com/Implementation/ABF/NUC_ReceiveARFreight_OTM_EBiz_ABF/NUC_ReceiveARFreight_OTM_EBiz_ABF/NUC_ReceiveARFreight_OTM_Ebiz_ABF"
                xmlns:ns5="http://xmlns.eia.com/Implementation/ABF/pcbpel/wsdl/jca/"
                xmlns:ns4="http://xmlns.eia.com/Implementation/ABF/pcbpel/adapter/db/NUC_ReceiveARFreight_OTM_EBiz_ABF/NUC_ReceiveARFreight_OTM_EBiz_ABF/DB_InsertARFreightEBS">
  <oracle-xsl-mapper:schema>
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/NUC_ReceiveARFreight_OTM_Ebiz_ABF.wsdl"/>
        <oracle-xsl-mapper:rootElement name="Transmission" namespace="http://xmlns.oracle.com/apps/otm"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/EO/common/V1.0/XSLParameters.xsd"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="TransactionId"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DB_InsertARFreightEBS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="XxnucOtmArFreightRatesStgCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_InsertARFreightEBS"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
  </oracle-xsl-mapper:schema>
  <xsl:param name="TransactionId"/>
  <xsl:template match="/">
    <tns:XxnucOtmArFreightRatesStgCollection>
      <xsl:for-each select="/ns0:Transmission/ns0:TransmissionBody/ns0:GLogXMLElement/ns0:AllocationBase/ns0:AllocReleaseLineDetail">
        <tns:XxnucOtmArFreightRatesStg>
          <xsl:variable name="deliveryDetailId">
            <xsl:value-of select="ns0:ReleaseLineGid/ns0:Gid/ns0:Xid"/>
          </xsl:variable>
          <tns:deliveryId>
            <xsl:value-of select="/ns0:Transmission/ns0:TransmissionBody/ns0:GLogXMLElement/ns0:AllocationBase/ns0:Shipment/ns0:Release[ns0:ReleaseLine/ns0:ReleaseLineGid/ns0:Gid/ns0:Xid = $deliveryDetailId]/ns0:ReleaseGid/ns0:Gid/ns0:Xid"/>
          </tns:deliveryId>
          <tns:deliveryDetailId>
            <xsl:value-of select="ns0:ReleaseLineGid/ns0:Gid/ns0:Xid"/>
          </tns:deliveryDetailId>
          <tns:costType>
            <xsl:value-of select="ns0:CostTypeGid/ns0:Gid/ns0:Xid"/>
          </tns:costType>
          <tns:accessorialCode>
            <xsl:value-of select="ns0:AccessorialCodeGid/ns0:Gid/ns0:Xid"/>
          </tns:accessorialCode>
          <tns:chargeAmount>
            <xsl:value-of select="ns0:Cost/ns0:FinancialAmount/ns0:MonetaryAmount"/>
          </tns:chargeAmount>
          <tns:currencyCode>
            <xsl:value-of select="ns0:Cost/ns0:FinancialAmount/ns0:GlobalCurrencyCode"/>
          </tns:currencyCode>
          <tns:freightTerms>
            <xsl:value-of select="/ns0:Transmission/ns0:TransmissionBody/ns0:GLogXMLElement/ns0:AllocationBase/ns0:Shipment/ns0:Release/ns0:ReleaseHeader/ns0:CommercialTerms/ns0:PaymentMethodCodeGid/ns0:Gid/ns0:Xid"/>
          </tns:freightTerms>
          <tns:createdBy>-1</tns:createdBy>
          <tns:creationDate>
            <xsl:value-of select="xp20:current-dateTime ( )"/>
          </tns:creationDate>
          <tns:lastUpdatedBy>-1</tns:lastUpdatedBy>
          <tns:lastUpdateDate>
            <xsl:value-of select="xp20:current-dateTime ( )"/>
          </tns:lastUpdateDate>
          <tns:lastUpdateLogin>-1</tns:lastUpdateLogin>
          <tns:transactionId>
            <xsl:value-of select="$TransactionId/ns3:parameters/ns3:item[ns3:name='TransactionId']/ns3:value"/>
          </tns:transactionId>
          <xsl:if test="ns0:Description = 'B'">
            <tns:chargeBasis>
              <xsl:value-of select="/ns0:Transmission/ns0:TransmissionBody/ns0:GLogXMLElement/ns0:AllocationBase/ns0:Shipment/ns0:ShipmentHeader/ns0:FlexFieldStrings/ns0:Attribute1"/>
            </tns:chargeBasis>
            <tns:chargeFactor>
              <xsl:value-of select="/ns0:Transmission/ns0:TransmissionBody/ns0:GLogXMLElement/ns0:AllocationBase/ns0:Shipment/ns0:ShipmentHeader/ns0:FlexFieldStrings/ns0:Attribute2"/>
            </tns:chargeFactor>
          </xsl:if>
          <xsl:if test="ns0:Description = 'A'">
            <tns:chargeBasis>
              <xsl:value-of select="/ns0:Transmission/ns0:TransmissionBody/ns0:GLogXMLElement/ns0:AllocationBase/ns0:Shipment/ns0:ShipmentHeader/ns0:FlexFieldStrings/ns0:Attribute3"/>
            </tns:chargeBasis>
            <tns:chargeFactor>
              <xsl:value-of select="/ns0:Transmission/ns0:TransmissionBody/ns0:GLogXMLElement/ns0:AllocationBase/ns0:Shipment/ns0:ShipmentHeader/ns0:FlexFieldStrings/ns0:Attribute4"/>
            </tns:chargeFactor>
          </xsl:if>
        </tns:XxnucOtmArFreightRatesStg>
      </xsl:for-each>
    </tns:XxnucOtmArFreightRatesStgCollection>
  </xsl:template>
</xsl:stylesheet>
