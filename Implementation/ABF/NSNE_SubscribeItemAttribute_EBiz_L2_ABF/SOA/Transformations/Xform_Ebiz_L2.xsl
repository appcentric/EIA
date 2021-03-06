<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Insert_EBS_PRODUCT_CODES"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:ns1="http://schemas.oracle.com/service/bpel/common"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns0="http://nucor.eia.com/AO/Ebiz/D2S/ItemAttributeAM/1.0"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns1 ns0 tns oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:ns3="http://nucor.eia.com/common" xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns4="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/jms/I114/NSNE_SubscribeItemAttribute_EBiz_QMOS_ABF/JMS_DEQ_NextGenDistributedTopic"
                xmlns:ns6="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns8="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns5="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns7="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:ns9="http://nucor.eia.com/AO/Ebiz/D2S/ItemAttributeAO/1.0"
                xmlns:ns10="http://xmlns.oracle.com/pcbpel/adapter/db/NSNE_SubscribeItemAttribute_EBiz_L2_ABF/NSNE_SubscribeItemAttribute_EBiz_L2_ABF/DB_Insert_EBS_PRODUCT_CODES"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/JMS_DEQ_NextGenDistributedTopic.wsdl"/>
        <oracle-xsl-mapper:rootElement name="ItemAttributeAddRq"
                                       namespace="http://nucor.eia.com/AO/Ebiz/D2S/ItemAttributeAM/1.0"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/JMS_DEQ_NextGenDistributedTopic.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="paramVar"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DB_Insert_EBS_PRODUCT_CODES.wsdl"/>
        <oracle-xsl-mapper:rootElement name="EbsProductCodesCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Insert_EBS_PRODUCT_CODES"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED APR 13 13:24:07 IST 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="paramVar"/>
  <xsl:template match="/">
    <tns:EbsProductCodesCollection>
      <xsl:for-each select="/ns0:ItemAttributeAddRq/ns9:ItemAttributeDetails">
        <xsl:if test="(xp20:compare (ns9:ProdType, 'BIL' ) = 0 or xp20:compare (ns9:ItemType, 'LIQUID MELT' ) =0 ) and ns9:LotControlCode=2 ">
          <tns:EbsProductCodes>
            <tns:prodCode>
              <xsl:value-of select="ns9:ItemNumber"/>
            </tns:prodCode>
            <xsl:for-each select="ns9:UDADetails/ns9:UDADetails">
              <xsl:if test="xp20:compare (ns9:AttrName, 'SHAPE' ) = 0 ">
                <tns:prodShape>
                  <xsl:value-of select="ns9:AttrValue"/>
                </tns:prodShape>
              </xsl:if>
            </xsl:for-each>
            <xsl:if test="ns9:CategoryDetails/ns9:CategoryDetails[1]/ns9:Segment19">
              <tns:prodSize>
                <xsl:value-of select="ns9:CategoryDetails/ns9:CategoryDetails[1]/ns9:Segment19"/>
              </tns:prodSize>
            </xsl:if>
            <tns:gradeCode>
              <xsl:choose>
                <xsl:when test="xp20:compare (ns9:ProdType, 'BIL' ) = 0">
                  <xsl:for-each select="ns9:UDADetails/ns9:UDADetails">
                    <xsl:if test="xp20:compare (ns9:AttrName, 'GRADE' ) = 0 ">
                      <xsl:value-of select="ns9:AttrValue"/>
                    </xsl:if>
                  </xsl:for-each>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:value-of select="normalize-space(substring-after(ns9:ItemDescription,'LIQUID MELT'))"/>
                </xsl:otherwise>
              </xsl:choose>
            </tns:gradeCode>
            <tns:unitLength>
              <xsl:choose>
                <xsl:when test="xp20:compare (ns9:ProdType, 'BIL' ) = 0">
                  <xsl:value-of select="ns9:CategoryDetails/ns9:CategoryDetails[1]/ns9:Segment4"/>
                </xsl:when>
              </xsl:choose>
            </tns:unitLength>
            <xsl:choose>
              <xsl:when test="xp20:compare (ns9:ProdType, 'BIL' ) = 0">
                <tns:unitWeight>
                  <xsl:value-of select="oraext:query-database (concat (&quot;SELECT  inv_convert.inv_um_convert_new (&quot;, ns9:InventoryItemId, &quot;,null,&quot;, ns9:OrganizationId, &quot;,null,&quot;, &quot;1,'EA','LBS',null,null, 'W') result from dual&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; )"/>
                  <!--xsl:value-of select="ns9:BundleWeight"/-->
                </tns:unitWeight>
              </xsl:when>
            </xsl:choose>
            <tns:prodType>
              <xsl:choose>
                <xsl:when test="xp20:compare (ns9:ProdType, 'BIL' ) = 0">
                  <xsl:value-of select="ns9:ProdType"/>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:value-of select="'LM'"/>
                </xsl:otherwise>
              </xsl:choose>
            </tns:prodType>
            <xsl:choose>
              <xsl:when test="string-length (ns9:ItemDescription ) &lt;= 25">
                <tns:prodDesc1>
                  <xsl:value-of select="ns9:ItemDescription"/>
                </tns:prodDesc1>
              </xsl:when>
              <xsl:otherwise>
                <tns:prodDesc1>
                  <xsl:value-of select="substring (ns9:ItemDescription, 1, 25 )"/>
                </tns:prodDesc1>
              </xsl:otherwise>
            </xsl:choose>
            <xsl:choose>
              <xsl:when test="string-length (ns9:ItemLongDescription ) &lt;= 25">
                <tns:prodDesc2>
                  <xsl:value-of select="ns9:ItemLongDescription"/>
                </tns:prodDesc2>
              </xsl:when>
              <xsl:otherwise>
                <tns:prodDesc2>
                  <xsl:value-of select="substring (ns9:ItemLongDescription, 1, 25 )"/>
                </tns:prodDesc2>
              </xsl:otherwise>
            </xsl:choose>
            <tns:creationDate>
              <xsl:value-of select="xp20:current-date ( )"/>
            </tns:creationDate>
            <tns:createdBy>SOAUSER</tns:createdBy>
            <tns:lastUpdateDate>
              <xsl:value-of select="xp20:current-date ( )"/>
            </tns:lastUpdateDate>
            <tns:lastUpdatedBy>SOAUSER</tns:lastUpdatedBy>
            <tns:Item_Status>
              <xsl:value-of select="ns9:InventoryItemStatusCode"/>
            </tns:Item_Status>
          </tns:EbsProductCodes>
        </xsl:if>
      </xsl:for-each>
    </tns:EbsProductCodesCollection>
  </xsl:template>
</xsl:stylesheet>
