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
                xmlns:ns0="http://nucor.eia.com/AO/Ebiz/D2S/ItemAttributeAM/1.0"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Insert_EBS_GRADE_CODES"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:ns2="http://nucor.eia.com/common" xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns4="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns3="http://schemas.oracle.com/service/bpel/common"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/jms/I114/NSNE_SubscribeItemAttribute_EBiz_QMOS_ABF/JMS_DEQ_NextGenDistributedTopic"
                xmlns:ns6="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns8="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns5="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns7="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:ns9="http://nucor.eia.com/AO/Ebiz/D2S/ItemAttributeAO/1.0"
                xmlns:ns10="http://xmlns.oracle.com/pcbpel/adapter/db/NSNE_SubscribeItemAttribute_EBiz_L2_ABF/NSNE_SubscribeItemAttribute_EBiz_L2_ABF/DB_Insert_EBS_GRADE_CODES"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/JMS_DEQ_NextGenDistributedTopic.wsdl"/>
        <oracle-xsl-mapper:rootElement name="ItemAttributeAddRq"
                                       namespace="http://nucor.eia.com/AO/Ebiz/D2S/ItemAttributeAM/1.0"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DB_Insert_EBS_GRADE_CODES.wsdl"/>
        <oracle-xsl-mapper:rootElement name="EbsGradeCodesCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Insert_EBS_GRADE_CODES"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [THU MAY 19 20:57:21 IST 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:EbsGradeCodesCollection>
      <xsl:for-each select="/ns0:ItemAttributeAddRq/ns9:ItemAttributeDetails">
        <xsl:if test="ns9:ItemType='LIQUID MELT'">
          <tns:EbsGradeCodes>
            <xsl:choose>
              <xsl:when test="contains (ns9:ItemDescription, 'FOR' )">
                <tns:gradeCode>
                  <xsl:value-of select="normalize-space(substring-after(ns9:ItemDescription,'LIQUID MELT FOR'))"/>
                </tns:gradeCode>
              </xsl:when>
              <xsl:otherwise>
                <tns:gradeCode>
                  <xsl:value-of select="normalize-space(substring-after(ns9:ItemDescription,'LIQUID MELT'))"/>
                </tns:gradeCode>
              </xsl:otherwise>
            </xsl:choose>
            <tns:gradeDesc1>
              <xsl:value-of select="ns9:ItemDescription"/>
            </tns:gradeDesc1>
            <tns:gradeDesc2>
              <xsl:value-of select="ns9:ItemDescription"/>
            </tns:gradeDesc2>
            <tns:creationDate>
              <xsl:value-of select="xp20:current-date ( )"/>
            </tns:creationDate>
            <tns:createdBy>SOAUSER</tns:createdBy>
            <tns:lastUpdateDate>
              <xsl:value-of select="xp20:current-date ( )"/>
            </tns:lastUpdateDate>
            <tns:lastUpdatedBy>SOAUSER</tns:lastUpdatedBy>
          
          </tns:EbsGradeCodes>
        </xsl:if>
      </xsl:for-each>
    </tns:EbsGradeCodesCollection>
  </xsl:template>
</xsl:stylesheet>
