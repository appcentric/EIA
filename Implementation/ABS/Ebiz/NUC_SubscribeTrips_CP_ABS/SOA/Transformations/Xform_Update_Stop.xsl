<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:ns0="http://xmlns.eia.com/AO/EBiz/O2C/TripsAM/1.0" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Update_Stop"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:ns2="http://xmlns.eia.com/AO/EBiz/O2C/TripsAO/1.0"
                xmlns:ns3="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns5="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:ns6="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/jms/I028NewDesign/NUC_SubscribeTrips_CP_ABS/JMS_SubscribeTrips"
                xmlns:ns4="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns7="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:ns8="http://xmlns.oracle.com/pcbpel/adapter/db/I028NewDesign/NUC_SubscribeTrips_CP_ABS/DB_Update_Stop"
                xmlns:ns9="http://schemas.oracle.com/service/bpel/common">
    <oracle-xsl-mapper:schema>
        <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
        <oracle-xsl-mapper:mapSources>
            <oracle-xsl-mapper:source type="WSDL">
                <oracle-xsl-mapper:schema location="../WSDLs/JMS_SubscribeTrips.wsdl"/>
                <oracle-xsl-mapper:rootElement name="TripsAddRq"
                                               namespace="http://xmlns.eia.com/AO/EBiz/O2C/TripsAM/1.0"/>
            </oracle-xsl-mapper:source>
        </oracle-xsl-mapper:mapSources>
        <oracle-xsl-mapper:mapTargets>
            <oracle-xsl-mapper:target type="WSDL">
                <oracle-xsl-mapper:schema location="../WSDLs/DB_Update_Stop.wsdl"/>
                <oracle-xsl-mapper:rootElement name="StopCollection"
                                               namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Update_Stop"/>
            </oracle-xsl-mapper:target>
        </oracle-xsl-mapper:mapTargets>
        <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED DEC 09 06:35:07 CST 2015].-->
    </oracle-xsl-mapper:schema>
    <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
    <xsl:template match="/">
        <tns:StopCollection>
            <xsl:for-each select="/ns0:TripsAddRq/ns2:Trips/ns2:Trips/ns2:WshTripStps/ns2:Wsh_TripStps">
                <tns:Stop>
                    <tns:operationId></tns:operationId>
                    <tns:sequenceNumber>
                        <xsl:value-of select="ns2:stopSequenceNumber"/>
                    </tns:sequenceNumber>
                    <xsl:choose>
                        <xsl:when test='ns2:stopType = "Drop-off"'>
                            <tns:isPickup>0</tns:isPickup>
                        </xsl:when>
                        <xsl:when test='ns2:stopType = "Pick-up"'>
                            <tns:isPickup>1</tns:isPickup>
                        </xsl:when>
                    </xsl:choose>
                    <tns:earlyStopDate>
                        <xsl:value-of select="substring-before(ns2:earlyStopDate,'T')"/>
                    </tns:earlyStopDate>
                    <tns:earlyStopTime>
                        <xsl:value-of select="concat('0000-00-00T',ns2:earlyStopTime)"/>
                    </tns:earlyStopTime>
                    <tns:lateStopDate>
                        <xsl:value-of select="ns2:lateStopDate"/>
                    </tns:lateStopDate>
                    <tns:lateStopTime>
                        <xsl:value-of select="ns2:lateStopTime"/>
                    </tns:lateStopTime>
                    <tns:shipperPoNumber>
                        <xsl:value-of select="ns2:custPoNumber"/>
                    </tns:shipperPoNumber>
                    <tns:addrCompanyName>
                        <xsl:value-of select="ns2:companyName"/>
                    </tns:addrCompanyName>
                    <tns:addrLine1>
                        <xsl:value-of select="ns2:addrLine1"/>
                    </tns:addrLine1>
                    <tns:addrLine2>
                        <xsl:value-of select="ns2:addrLine2"/>
                    </tns:addrLine2>
                    <tns:addrLine3>
                        <xsl:value-of select="ns2:addrLine3"/>
                    </tns:addrLine3>
                    <tns:addrCity>
                        <xsl:value-of select="ns2:city"/>
                    </tns:addrCity>
                    <tns:addrStateProvince>
                        <xsl:value-of select="ns2:stateProvince"/>
                    </tns:addrStateProvince>
                    <tns:addrPostalCode>
                        <xsl:value-of select="ns2:postalCode"/>
                    </tns:addrPostalCode>
                    <tns:addrCountryCode>
                        <xsl:value-of select="ns2:countryCode"/>
                    </tns:addrCountryCode>
                    <tns:rateBaseName>
                        <xsl:value-of select="ns2:rateBaseName"/>
                    </tns:rateBaseName>
                    <tns:ratingDate>
                        <xsl:value-of select="ns2:plannedArrivalDate"/>
                    </tns:ratingDate>
                    <tns:pointName>
                        <xsl:value-of select="ns2:attribute11"/>
                    </tns:pointName>
                    <tns:pointType>70</tns:pointType>
                    <tns:distance>
                        <xsl:value-of select="ns2:attribute12"/>
                    </tns:distance>
                </tns:Stop>
            </xsl:for-each>
        </tns:StopCollection>
    </xsl:template>
</xsl:stylesheet>
