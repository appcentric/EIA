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
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Insert_OP_100_Op_Ship"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:ns0="http://xmlns.eia.com/AO/EBiz/O2C/TripsAM/1.0" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns1 ns0 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:ns3="http://xmlns.eia.com/AO/EBiz/O2C/TripsAO/1.0"
                xmlns:ns4="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns6="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:ns7="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/jms/I028NewDesign/NUC_SubscribeTrips_CP_ABS/JMS_SubscribeTrips"
                xmlns:ns5="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns8="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:ns9="http://xmlns.oracle.com/pcbpel/adapter/db/I028NewDesign/NUC_SubscribeTrips_CP_ABS/DB_Insert_OP_100_Op_Ship">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="WSDLs/JMS_SubscribeTrips.wsdl"/>
        <oracle-xsl-mapper:rootElement name="TripsAddRq" namespace="http://xmlns.eia.com/AO/EBiz/O2C/TripsAM/1.0"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="WSDLs/JMS_SubscribeTrips.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="GetSeqNextVal"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="WSDLs/DB_Insert_OP_100_Op_Ship.wsdl"/>
        <oracle-xsl-mapper:rootElement name="OperationCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Insert_OP_100_Op_Ship"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [FRI JUN 24 01:24:37 CDT 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="GetSeqNextVal"/>
  <xsl:template match="/">
    <tns:OperationCollection>
      <xsl:for-each select="/ns0:TripsAddRq/ns3:Trips/ns3:Trips">
        <tns:Operation>
          <tns:operationId>
            <xsl:value-of select="$GetSeqNextVal/ns1:parameters/ns1:item/ns1:value"/>
          </tns:operationId>
          <tns:operation>
            <xsl:value-of select="ns3:attribute2"/>
          </tns:operation>
          <tns:isReady>1</tns:isReady>
          <tns:isRead>0</tns:isRead>
          <tns:resultCode>0</tns:resultCode>
          <tns:creationTimestamp>
            <xsl:value-of select="xp20:current-dateTime ( )"/>
          </tns:creationTimestamp>
          <tns:shipmentCollection>
            <tns:Shipment>
              <tns:clientKey1>
                <xsl:value-of select="ns3:clientKey1"/>
              </tns:clientKey1>
              <tns:clientKey2>
                <xsl:value-of select="ns3:tripId"/>
              </tns:clientKey2>
              <tns:clientKey3>
                <xsl:value-of select="ns3:name"/>
              </tns:clientKey3>
              <tns:clientKey4>EBS</tns:clientKey4>
              <tns:equipmentType>
                <xsl:value-of select="ns3:vehicleItemId"/>
              </tns:equipmentType>
              <tns:specialEquipmentInstructions>
                <xsl:value-of select="ns3:specialEquipmentInstructions"/>
              </tns:specialEquipmentInstructions>
              <tns:freightTerms>
                <xsl:value-of select="ns3:freightTermsCode"/>
              </tns:freightTerms>
              <tns:shipperRefNumber>
                <xsl:value-of select="ns3:name"/>
              </tns:shipperRefNumber>
              <tns:priority>
                <xsl:value-of select="ns3:attribute6"/>
              </tns:priority>
              <!-- <xsl:choose>
                                <xsl:when test="/ns0:TripsAddRq/ns2:Trips/ns2:Trips/ns2:attribute6 = &quot;HIGH&quot;">
                                    <tns:priority>1</tns:priority>
                                </xsl:when>
                                <xsl:when test='/ns0:TripsAddRq/ns2:Trips/ns2:Trips/ns2:attribute6 = "STANDARD"'>
                                    <tns:priority>2</tns:priority>
                                </xsl:when>
                                <xsl:when test='/ns0:TripsAddRq/ns2:Trips/ns2:Trips/ns2:attribute6 = "LOW"'>
                                    <tns:priority>3</tns:priority>
                                </xsl:when>
                            </xsl:choose>-->
              <tns:postingLocationCode>
                <xsl:value-of select="ns3:postingLocationCode"/>
              </tns:postingLocationCode>
              <xsl:choose>
                <xsl:when test="ns3:carrierId = 1">
                  <tns:awardedCarrierScacCode>HOLD</tns:awardedCarrierScacCode>
                </xsl:when>
                <xsl:when test="ns3:attribute4 = 'New Adhoc Shipment'">
                  <tns:awardedCarrierScacCode>
                    <xsl:value-of select="ns3:attribute15"/>
                  </tns:awardedCarrierScacCode>
                </xsl:when>
                <xsl:otherwise>
                  <tns:awardedCarrierScacCode></tns:awardedCarrierScacCode>
                </xsl:otherwise>
              </xsl:choose>
              <tns:shipmentGroup>
                <!-- <xsl:value-of select="concat(ns2:freightTermsCode,ns2:modeOfTransport)"/>-->
              </tns:shipmentGroup>
              <tns:orderType>
                <xsl:value-of select="ns3:orderType"/>
              </tns:orderType>
              <tns:maxCommodityLength>
                <xsl:value-of select="ns3:maxCommodityLength"/>
              </tns:maxCommodityLength>
            </tns:Shipment>
          </tns:shipmentCollection>
        </tns:Operation>
      </xsl:for-each>
    </tns:OperationCollection>
  </xsl:template>
</xsl:stylesheet>