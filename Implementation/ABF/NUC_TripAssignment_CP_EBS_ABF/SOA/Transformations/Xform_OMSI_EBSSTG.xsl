<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:ns1="http://schemas.oracle.com/service/bpel/common"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/PollOMSI_DBAdapter"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/InsertWSH_OTRIPS_STG_DBInsertAdapter"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns1 ns0 tns oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:ns3="http://xmlns.oracle.com/pcbpel/adapter/db/I027/NUC_TripAssignment_CP_EBS_ABF/InsertWSH_OTRIPS_STG_DBInsertAdapter"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/I027/NUC_TripAssignment_CP_EBS_ABF/PollOMSI_DBAdapter"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/PollOMSI_DBAdapter.wsdl"/>
        <oracle-xsl-mapper:rootElement name="LogEntryCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/PollOMSI_DBAdapter"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/InsertWSH_OTRIPS_STG_DBInsertAdapter.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="params"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/InsertWSH_OTRIPS_STG_DBInsertAdapter.wsdl"/>
        <oracle-xsl-mapper:rootElement name="XxnucWshOtripsStgCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/InsertWSH_OTRIPS_STG_DBInsertAdapter"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED OCT 21 09:01:44 CDT 2015].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="params"/>
  <xsl:template match="/">
    <tns:XxnucWshOtripsStgCollection>
      <tns:XxnucWshOtripsStg>
        <xsl:for-each select="/ns0:LogEntryCollection/ns0:LogEntry">
          <xsl:choose>
            <xsl:when test="(ns0:operation = 100 or ns0:operation = 200 or ns0:operation = 300 or ns0:operation = 1400) and (ns0:resultCode = 1)">
              <tns:XxnucWshOtripsStg>
                <tns:transactionId>
                  <xsl:value-of select="$params/ns1:parameters/ns1:item/ns1:value"/>
                </tns:transactionId>
                 <tns:recordId>
                  <xsl:value-of select="oraext:sequence-next-val('xxnuc_out_intf_rec_s','jdbc/nxg/ebs')"/>
                </tns:recordId>
                <tns:processFlag>PROCESSED</tns:processFlag>
                <tns:tripId>
                  <xsl:value-of select="ns0:shipmentLogEntry/ns0:clientKey2"/>
                </tns:tripId>
                 <tns:resultCode>
                  <xsl:value-of select="ns0:resultCode"/>
                </tns:resultCode>
                <tns:operation>
                  <xsl:value-of select="ns0:operation"/>
                </tns:operation>
                <tns:resultMessage>
                  <xsl:value-of select="ns0:resultMessage"/>
                </tns:resultMessage>
                <tns:creationDate>
                  <xsl:value-of select="xp20:current-date ( )"/>
                </tns:creationDate>
               
            
               
              </tns:XxnucWshOtripsStg>
            </xsl:when>
            <xsl:when test="ns0:operation = 600 or ns0:operation = 700 or ns0:operation = 800">
              <xsl:choose>
                <xsl:when test=".[ns0:appointmentLogEntry/ns0:clientKey4 ='EBS' ]">
                  <tns:XxnucWshOtripsStg>
                    <tns:transactionId>
                      <xsl:value-of select="$params/ns1:parameters/ns1:item/ns1:value"/>
                    </tns:transactionId>
                     <tns:recordId>
                  <xsl:value-of select="oraext:sequence-next-val('xxnuc_out_intf_rec_s','jdbc/nxg/ebs')"/>
                </tns:recordId>
                    <tns:processFlag>PROCESSED</tns:processFlag>
                    <tns:tripId>
                      <xsl:value-of select="ns0:appointmentLogEntry/ns0:clientKey2"/>
                    </tns:tripId>
                     <tns:resultCode>
                      <xsl:value-of select="ns0:resultCode"/>
                    </tns:resultCode>
                    <tns:operation>
                      <xsl:value-of select="ns0:operation"/>
                    </tns:operation>
                    <tns:resultMessage>
                      <xsl:value-of select="ns0:resultMessage"/>
                    </tns:resultMessage>
                    <tns:creationDate>
                      <xsl:value-of select="xp20:current-date ( )"/>
                    </tns:creationDate>
                   <!-- <tns:transactionId>
                      <xsl:value-of select="$params/ns1:parameters/ns1:item/ns1:value"/>
                    </tns:transactionId>
                    <tns:recordId>
					
                      <xsl:value-of select="oraext:sequence-next-val('xxnuc_out_intf_rec_s','jdbc/nxg/ebs')"/>
                    </tns:recordId>-->
                   
                    <tns:xxnucWshOtripStopsStgCollection>
                      <tns:XxnucWshOtripStopsStg>
                        <tns:startTime>
                          <xsl:value-of select="ns0:appointmentLogEntry/ns0:startTime"/>
                        </tns:startTime>
                        <tns:endTime>
                          <xsl:value-of select="ns0:appointmentLogEntry/ns0:endTime"/>
                        </tns:endTime>
                        <tns:doorName>
                          <xsl:value-of select="ns0:appointmentLogEntry/ns0:doorName"/>
                        </tns:doorName>
                        <tns:stopSeqNumber>
                          <xsl:value-of select="ns0:appointmentLogEntry/ns0:stopSequenceNumber"/>
                        </tns:stopSeqNumber>
                      </tns:XxnucWshOtripStopsStg>
                    </tns:xxnucWshOtripStopsStgCollection>
                  </tns:XxnucWshOtripsStg>
                </xsl:when>
              </xsl:choose>
            </xsl:when>
            <xsl:when test="ns0:operation = 500">
              <xsl:choose>
                <xsl:when test=".[ns0:shipmentLogEntry/ns0:clientKey4 ='EBS' ]">
                  <tns:XxnucWshOtripsStg>
                    <tns:transactionId>
                      <xsl:value-of select="$params/ns1:parameters/ns1:item/ns1:value"/>
                    </tns:transactionId>
                     <tns:recordId>
                  <xsl:value-of select="oraext:sequence-next-val('xxnuc_out_intf_rec_s','jdbc/nxg/ebs')"/>
                </tns:recordId>
                    <tns:processFlag>PROCESSED</tns:processFlag>
                    <tns:tripId>
                      <xsl:value-of select="ns0shipmentLogEntry/ns0:clientKey2"/>
                    </tns:tripId>
                     <tns:resultCode>
                      <xsl:value-of select="ns0:resultCode"/>
                    </tns:resultCode>
                     <tns:operation>
                      <xsl:value-of select="ns0:operation"/>
                    </tns:operation>
                    <tns:trailerNumber>
                    </tns:trailerNumber>
                    <tns:resultMessage>
                      <xsl:value-of select="ns0:resultMessage"/>
                    </tns:resultMessage>
                    <tns:carrierName>
                      <xsl:value-of select="ns0:shipmentLogEntry/ns0:carrierName"/>
                    </tns:carrierName>
                    <tns:carrierComment>
                      <xsl:value-of select="ns0:shipmentLogEntry/ns0:carrierComments"/>
                    </tns:carrierComment>
                    <tns:timeAwarded>
                      <xsl:value-of select="ns0:shipmentLogEntry/ns0:timeAwarded"/>
                    </tns:timeAwarded>
                   <!-- <tns:delCarrierName>
                    </tns:delCarrierName>-->
                    <tns:creationDate>
                      <xsl:value-of select="xp20:current-date ( )"/>
                    </tns:creationDate>
                    <!--<tns:transactionId>
                      <xsl:value-of select="$params/ns1:parameters/ns1:item/ns1:value"/>
                    </tns:transactionId>
                    <tns:recordId>
                      <xsl:value-of select="oraext:sequence-next-val('xxnuc_out_intf_rec_s','jdbc/nxg/ebs')"/>
                    </tns:recordId>-->
                   
                   
                    <!--<tns:xxnucWshOtripStopsStgCollection>
                  
                        <tns:XxnucWshOtripStopsStg>
                          <tns:startTime>
                            <xsl:value-of select="ns0:appointmentLogEntryCollection/ns0:AppointmentLogEntry/ns0:startTime"/>
                          </tns:startTime>
                          <tns:endTime>
                            <xsl:value-of select="ns0:appointmentLogEntryCollection/ns0:AppointmentLogEntry/ns0:endTime"/>
                          </tns:endTime>
                          <tns:doorName>
                            <xsl:value-of select="ns0:appointmentLogEntryCollection/ns0:AppointmentLogEntry/ns0:doorName"/>
                          </tns:doorName>
                          <tns:stopSeqNumber>
                            <xsl:value-of select="ns0:appointmentLogEntryCollection/ns0:AppointmentLogEntry/ns0:stopSequenceNumber"/>
                          </tns:stopSeqNumber>
                        </tns:XxnucWshOtripStopsStg>
                     
                  </tns:xxnucWshOtripStopsStgCollection>-->
                  </tns:XxnucWshOtripsStg>
                </xsl:when>
              </xsl:choose>
            </xsl:when>
          </xsl:choose>
        </xsl:for-each>
      </tns:XxnucWshOtripsStg>
    </tns:XxnucWshOtripsStgCollection>
  </xsl:template>
</xsl:stylesheet>