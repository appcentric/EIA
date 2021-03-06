<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_GetShippingDocument_db"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns1="http://xmlns.eia.com/AO/EBiz/O2C/ShipDocumentAM/1.0"
                exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns0 ns1 mhdr oraext xp20 xref socket dvm oraxsl"
                xml:id="id_1" oraxsl:ignorexmlids="true"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/Application2/NUC_EBizShipDocument_ABS/DB_GetShippingDocument_db"
                xmlns:ns5="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns2="http://xmlns.eia.com/ABS/EBiz/O2C/ShipDocumentABS/1.0"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:ns10="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns3="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns6="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns8="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns9="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns4="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/O2C/ShipDocumentAO/1.0">
  <oracle-xsl-mapper:schema xml:id="id_2">
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources xml:id="id_3">
      <oracle-xsl-mapper:source type="WSDL" xml:id="id_4">
        <oracle-xsl-mapper:schema location="../WSDLs/DB_GetShippingDocument_db.wsdl" xml:id="id_5"/>
        <oracle-xsl-mapper:rootElement name="WshDocumentInstancesCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_GetShippingDocument_db"
                                       xml:id="id_6"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL" xml:id="id_7">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/O2C/ShipDocumentABS.wsdl"
                                  xml:id="id_8"/>
        <oracle-xsl-mapper:rootElement name="QueryShipDocumentRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/O2C/ShipDocumentAM/1.0" xml:id="id_9"/>
        <oracle-xsl-mapper:param name="QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage" xml:id="id_10"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets xml:id="id_11">
      <oracle-xsl-mapper:target type="WSDL" xml:id="id_12">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/O2C/ShipDocumentABS.wsdl"
                                  xml:id="id_13"/>
        <oracle-xsl-mapper:rootElement name="QueryShipDocumentResponseMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/O2C/ShipDocumentAM/1.0" xml:id="id_14"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [THU AUG 31 14:32:41 CDT 2017].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage" xml:id="id_15"/>
  <xsl:template match="/" xml:id="id_16">
    <ns1:QueryShipDocumentResponseMessage xml:id="id_17">
      <xsl:choose xml:id="id_18">
        <xsl:when xml:id="id_19"
                  test="count($QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:TransactionRequestID) >0">
          <ns5:HeaderRs xml:id="id_20">
            <ns5:TransactionID xml:id="id_21">
              <xsl:value-of select="$QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:TransactionRequestID"
                            xml:id="id_22"/>
            </ns5:TransactionID>
            <ns5:RequestDetails xml:id="id_23">
              <ns5:TransactionRequestID xml:id="id_24">
                <xsl:value-of select="$QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:TransactionRequestID"
                              xml:id="id_25"/>
              </ns5:TransactionRequestID>
              <ns5:Language xml:id="id_26">
                <xsl:value-of select="$QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:Language"
                              xml:id="id_27"/>
              </ns5:Language>
              <ns5:ComponentID xml:id="id_28">
                <xsl:value-of select="$QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:ComponentID"
                              xml:id="id_29"/>
              </ns5:ComponentID>
              <ns5:ServiceName xml:id="id_30">
                <xsl:value-of select="$QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:ServiceName"
                              xml:id="id_31"/>
              </ns5:ServiceName>
              <ns5:TransactionIDREF xml:id="id_32">
                <xsl:value-of select="$QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:TransactionIDREF"
                              xml:id="id_34"/>
              </ns5:TransactionIDREF>
              <ns5:TransactionName xml:id="id_35">
                <xsl:value-of select="$QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:TransactionName"
                              xml:id="id_36"/>
              </ns5:TransactionName>
              <ns5:FileName xml:id="id_37">
                <xsl:value-of select="$QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:FileName"
                              xml:id="id_38"/>
              </ns5:FileName>
              <ns5:FileInstanceID xml:id="id_39">
                <xsl:value-of select="$QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:FileInstanceID"
                              xml:id="id_40"/>
              </ns5:FileInstanceID>
              <ns5:Source xml:id="id_41">
                <xsl:value-of select="$QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:Source"
                              xml:id="id_42"/>
              </ns5:Source>
              <ns5:Target xml:id="id_43">
                <xsl:value-of select="$QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:Target"
                              xml:id="id_44"/>
              </ns5:Target>
              <ns5:HostName xml:id="id_45">
                <xsl:value-of select="$QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:HostName"
                              xml:id="id_46"/>
              </ns5:HostName>
              <ns5:UserName xml:id="id_47">
                <xsl:value-of select="$QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:UserName"
                              xml:id="id_48"/>
              </ns5:UserName>
              <ns5:UserRole xml:id="id_51">
                <xsl:value-of select="$QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:UserRole"
                              xml:id="id_52"/>
              </ns5:UserRole>
              <ns5:AdminEmail xml:id="id_49">
                <xsl:value-of select="$QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:AdminEmail"
                              xml:id="id_53"/>
              </ns5:AdminEmail>
              <ns5:ApplicationResponsibility xml:id="id_54">
                <xsl:value-of select="$QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:ApplicationResponsibility"
                              xml:id="id_55"/>
              </ns5:ApplicationResponsibility>
              <ns5:EOFFlag xml:id="id_56">
                <xsl:value-of select="$QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:EOFFlag"
                              xml:id="id_57"/>
              </ns5:EOFFlag>
              <ns5:SOFFlag xml:id="id_58">
                <xsl:value-of select="$QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:SOFFlag"
                              xml:id="id_59"/>
              </ns5:SOFFlag>
              <ns5:FileRecordCount xml:id="id_60">
                <xsl:value-of select="$QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:FileRecordCount"
                              xml:id="id_61"/>
              </ns5:FileRecordCount>
              <ns5:TimeStamp xml:id="id_62">
                <xsl:value-of select="$QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:TimeStamp"
                              xml:id="id_63"/>
              </ns5:TimeStamp>
              <ns5:MillName xml:id="id_64">
                <xsl:value-of select="$QueryShipDocumentSync_ReqMsg.QueryShipDocumentRequestMessage/ns1:QueryShipDocumentRequestMessage/ns5:HeaderRq/ns5:MillName"
                              xml:id="id_65"/>
              </ns5:MillName>
            </ns5:RequestDetails>
            <ns5:Status xml:id="id_68">
              <ns5:Status xml:id="id_69">S</ns5:Status>
            </ns5:Status>
          </ns5:HeaderRs>
        </xsl:when>
      </xsl:choose>
      <ns1:OperationResult xml:id="id_66">
        <ns9:Stats xml:id="id_67">S</ns9:Stats>
      </ns1:OperationResult>
      <ns1:ListOfShipDocuments xml:id="id_70">
        <xsl:for-each xml:id="id_71" select="/ns0:WshDocumentInstancesCollection/ns0:WshDocumentInstances">
          <ns1:ShipDocument xml:id="id_72">
            <ns7:OrganizationId xml:id="id_81">
              <xsl:value-of select="ns0:wshDeliveryLegs/ns0:wshNewDeliveries/ns0:hrOperatingUnits/ns0:organizationId"
                            xml:id="id_82"/>
            </ns7:OrganizationId>
            <ns7:OrganizationCode xml:id="id_79">
              <xsl:value-of select="ns0:wshDeliveryLegs/ns0:wshNewDeliveries/ns0:hrOperatingUnits/ns0:shortCode"
                            xml:id="id_83"/>
            </ns7:OrganizationCode>
            <ns7:DocumentNumber xml:id="id_75">
              <xsl:value-of select="ns0:sequenceNumber" xml:id="id_76"/>
            </ns7:DocumentNumber>
            <ns7:DocumentType xml:id="id_73">
              <xsl:value-of select="ns0:documentType" xml:id="id_74"/>
            </ns7:DocumentType>
            <ns7:Status xml:id="id_77">
              <xsl:value-of select="ns0:status" xml:id="id_78"/>
            </ns7:Status>
            <ns1:DeliveryInformation xml:id="id_84">
              <xsl:for-each xml:id="id_85" select="ns0:wshDeliveryLegs/ns0:wshNewDeliveries">
                <ns7:DeliveryInfo xml:id="id_86">
                  <ns7:DeliveryName xml:id="id_89">
                    <xsl:value-of select="ns0:name" xml:id="id_90"/>
                  </ns7:DeliveryName>
                  <ns7:DeliveryId xml:id="id_87">
                    <xsl:value-of select="ns0:deliveryId" xml:id="id_88"/>
                  </ns7:DeliveryId>
                  <ns7:Status xml:id="id_91">
                    <xsl:value-of select="ns0:statusCode" xml:id="id_92"/>
                  </ns7:Status>
                  <ns7:ShipConfirmDate xml:id="id_93">
                    <xsl:value-of select="ns0:confirmDate" xml:id="id_94"/>
                  </ns7:ShipConfirmDate>
                  <ns7:ShipmentDirection xml:id="id_95">
                    <xsl:value-of select="ns0:shipmentDirection" xml:id="id_96"/>
                  </ns7:ShipmentDirection>
                </ns7:DeliveryInfo>
              </xsl:for-each>
            </ns1:DeliveryInformation>
            <ns1:TripInformation xml:id="id_97">
              <xsl:for-each xml:id="id_98"
                            select="ns0:wshDeliveryLegs/ns0:wshNewDeliveries/ns0:wshDeliveryTripsVCollection/ns0:WshDeliveryTripsV">
                <ns7:TripInfo xml:id="id_99">
                  <ns7:TripName xml:id="id_102">
                    <xsl:value-of select="ns0:name" xml:id="id_103"/>
                  </ns7:TripName>
                  <ns7:TripId xml:id="id_100">
                    <xsl:value-of select="ns0:tripId" xml:id="id_101"/>
                  </ns7:TripId>
                  <ns7:Status xml:id="id_104">
                    <xsl:value-of select="ns0:statusName" xml:id="id_105"/>
                  </ns7:Status>
                  <ns7:PlannedFlag xml:id="id_106">
                    <xsl:value-of select="ns0:plannedFlag" xml:id="id_107"/>
                  </ns7:PlannedFlag>
                  <ns7:VehicleNumber xml:id="id_108">
                    <xsl:value-of select="ns0:vehicleNumber" xml:id="id_109"/>
                  </ns7:VehicleNumber>
                  <ns7:ShipmentMethodCode xml:id="id_110">
                    <xsl:value-of select="ns0:shipMethodCode" xml:id="id_111"/>
                  </ns7:ShipmentMethodCode>
                </ns7:TripInfo>
              </xsl:for-each>
            </ns1:TripInformation>
          </ns1:ShipDocument>
        </xsl:for-each>
      </ns1:ListOfShipDocuments>
    </ns1:QueryShipDocumentResponseMessage>
  </xsl:template>
</xsl:stylesheet>
