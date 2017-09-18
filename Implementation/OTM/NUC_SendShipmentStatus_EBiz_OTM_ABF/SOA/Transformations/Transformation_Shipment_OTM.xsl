<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:tns="http://xmlns.oracle.com/apps/otm"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns0="http://nucor.eia.com"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/aq/Manish/SendShipmentStatusToOtm/AQ_Consume_ShipmentStatus"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:obj1="http://xmlns.oracle.com/xdb/APPS_NE" xmlns:ns2="http://eia.nucor.com"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:client="http://xmlns.oracle.com/WshSendOtmDocument"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/AQ_Consume_ShipmentStatus.wsdl"/>
        <oracle-xsl-mapper:rootElement name="shipstatuses" namespace="http://nucor.eia.com"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/OTM/V1.0/delivery/WshSendOtmDocument.wsdl"/>
        <oracle-xsl-mapper:rootElement name="Transmission" namespace="http://xmlns.oracle.com/apps/otm"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [TUE JUN 06 03:59:47 CDT 2017].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:Transmission>
      <tns:TransmissionHeader>
        <tns:Version>6.4</tns:Version>
        <tns:UserName>SMG.INTEGRATION</tns:UserName>
        <tns:Password>*</tns:Password>
      </tns:TransmissionHeader>
      <tns:TransmissionBody>
        <tns:GLogXMLElement>
          <tns:ShipmentStatus>
            <tns:ShipmentRefnum>
              <tns:ShipmentRefnumQualifierGid>
                <tns:Gid>
                  <tns:Xid>GLOG</tns:Xid>
                </tns:Gid>
              </tns:ShipmentRefnumQualifierGid>
              <tns:ShipmentRefnumValue>
                <xsl:value-of select='/ns0:shipstatuses/ns0:shipstatus/ns0:variable[@name="ShipmentRefnumValue"]'/>
              </tns:ShipmentRefnumValue>
            </tns:ShipmentRefnum>
            <tns:StatusLevel>SHIPMENT</tns:StatusLevel>
            <tns:StatusCodeGid>
              <tns:Gid>
                <tns:Xid>D1</tns:Xid>
              </tns:Gid>
            </tns:StatusCodeGid>
            <tns:TimeZoneGid>
              <tns:Gid>
                <tns:Xid>ET</tns:Xid>
              </tns:Gid>
            </tns:TimeZoneGid>
            <tns:EventDt>
              <tns:GLogDate>
                <xsl:value-of select='/ns0:shipstatuses/ns0:shipstatus/ns0:variable[(@name="GLogDate")]'/>
              </tns:GLogDate>
            </tns:EventDt>
            <tns:StatusReasonCodeGid>
              <tns:Gid>
                <tns:Xid>NS</tns:Xid>
              </tns:Gid>
            </tns:StatusReasonCodeGid>
            <tns:SSStop>
              <tns:SSStopSequenceNum>
                <xsl:value-of select='/ns0:shipstatuses/ns0:shipstatus/ns0:variable[(@name="SSStopSequenceNum")]'/>
              </tns:SSStopSequenceNum>
            </tns:SSStop>
          </tns:ShipmentStatus>
        </tns:GLogXMLElement>
      </tns:TransmissionBody>
    </tns:Transmission>
  </xsl:template>
</xsl:stylesheet>