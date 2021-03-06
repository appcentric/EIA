<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Insert_API_PRODUCT_CODE"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns0="http://nucor.eia.com/AO/Ebiz/D2S/ItemAttributeAM/1.0"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 tns oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:ns2="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns4="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/jms/Manish/NSUT_SubscribeItemAttribute_EBiz_QMOS_ABF/JMS_DEQ_NextGenDistributedTopic"
                xmlns:ns6="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns3="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns5="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:ns7="http://nucor.eia.com/AO/Ebiz/D2S/ItemAttributeAO/1.0"
                xmlns:ns8="http://xmlns.oracle.com/pcbpel/adapter/db/Manish/NSUT_SubscribeItemAttribute_EBiz_QMOS_ABF/DB_Insert_API_PRODUCT_CODE">
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
        <oracle-xsl-mapper:schema location="../WSDLs/DB_Insert_API_PRODUCT_CODE.wsdl"/>
        <oracle-xsl-mapper:rootElement name="ApiProductCodeCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Insert_API_PRODUCT_CODE"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [MON FEB 13 07:23:00 CST 2017].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:ApiProductCodeCollection>
      <xsl:for-each select="/ns0:ItemAttributeAddRq/ns7:ItemAttributeDetails">
        <xsl:if test='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_QMOS_NSNE_ITEM_TYPE_MAP.dvm", "ITEMTYPE",ns7:UserItemType, "BILLET", "" ) = "Y" 
					or dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_QMOS_NSNE_ITEM_TYPE_MAP.dvm", "ITEMTYPE",ns7:UserItemType, "BUNDLE", "" ) = "Y" 
                                        or dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_QMOS_NSNE_ITEM_TYPE_MAP.dvm", "ITEMTYPE",ns7:UserItemType, "HT", "" ) = "Y"					'>
          <tns:ApiProductCode>
            <tns:id>
              <xsl:value-of select='oraext:sequence-next-val ("SEQ_API_PRODUCT_CODE_ID", "jdbc/nsutqmos" )'/>
            </tns:id>
            <tns:prodCode>
              <xsl:value-of select="ns7:ItemNumber"/>
            </tns:prodCode>
            <tns:prodShape>
              <xsl:value-of select="ns7:UDADetails/ns7:UDADetails[(ns7:AttrName='SHAPE')]/ns7:AttrValue"/>
            </tns:prodShape>
            <tns:prodGroup>
              <xsl:value-of select="ns7:ProdGroup"/>
            </tns:prodGroup>
            <tns:prodClass>
              <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_QMOS_PRODUCT_CLASS_MAP.dvm", "PRODUCT_TYPE_VALUES", ns7:UDADetails/ns7:UDADetails[(ns7:AttrName="PRODTYPE")]/ns7:AttrValue, "PRODUCT_CLASS", "0" )'/>
            </tns:prodClass>
            <xsl:choose>
              <xsl:when test="ns7:CategoryDetails/ns7:CategoryDetails[1]/ns7:Segment19">
                <xsl:choose>
                  <xsl:when test="string-length(ns7:CategoryDetails/ns7:CategoryDetails[1]/ns7:Segment19) > 25 ">
                    <tns:prodSize>
                      <xsl:value-of select="translate(  translate(  ns7:CategoryDetails/ns7:CategoryDetails[1]/ns7:Segment19, '&quot;', &quot;&quot; ) , ' ', &quot;&quot; )"/>
                    </tns:prodSize>
                  </xsl:when>
                  <xsl:otherwise>
                    <tns:prodSize>
                      <xsl:value-of select="ns7:CategoryDetails/ns7:CategoryDetails[1]/ns7:Segment19"/>
                    </tns:prodSize>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:when>
              <xsl:otherwise>
                <xsl:choose>
                  <xsl:when test='string-length(ns7:UDADetails/ns7:UDADetails[(ns7:AttrName="SIZE")]/ns7:AttrValue) > 25 '>
                    <tns:prodSize>
                      <xsl:value-of select="translate(  translate(  ns7:UDADetails/ns7:UDADetails[(ns7:AttrName=&quot;SIZE&quot;)]/ns7:AttrValue, '&quot;', &quot;&quot; ) , ' ', &quot;&quot; )"/>
                    </tns:prodSize>
                  </xsl:when>
                  <xsl:otherwise>
                    <tns:prodSize>
                      <xsl:value-of select='ns7:UDADetails/ns7:UDADetails[(ns7:AttrName="SIZE")]/ns7:AttrValue'/>
                    </tns:prodSize>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:otherwise>
            </xsl:choose>
            <xsl:choose>
              <xsl:when test="string-length (ns7:ItemDescription ) &lt; 30">
                <tns:prodName>
                  <xsl:value-of select="ns7:ItemDescription"/>
                </tns:prodName>
              </xsl:when>
              <xsl:otherwise>
                <tns:prodName>
                  <xsl:value-of select="substring (ns7:ItemDescription, 1, 30)"/>
                </tns:prodName>
              </xsl:otherwise>
            </xsl:choose>
            <tns:gradeId>
              <!--xsl:value-of select="ns7:UDADetails/ns7:UDADetails[(ns7:AttrName='GRADE')]/ns7:AttrValue"/-->
              <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_QMOS_NSNE_GRADE_ID_MAP.dvm", "EBS", ns7:UDADetails/ns7:UDADetails[(ns7:AttrName="GRAD")]/ns7:AttrValue, "QMOS", ns7:UDADetails/ns7:UDADetails[(ns7:AttrName="GRADE")]/ns7:AttrValue )'/>
            </tns:gradeId>
            <xsl:choose>
              <xsl:when test="ns7:UserItemType = 'NUC_LIQUID MELT'">
                <tns:cutLength>0</tns:cutLength>
              </xsl:when>
              <xsl:otherwise>
                <xsl:choose>
                  <xsl:when test="ns7:CategoryDetails/ns7:CategoryDetails[1]/ns7:Segment4 = 'COIL'">
                    <tns:cutLength>0</tns:cutLength>
                  </xsl:when>
                  <xsl:otherwise>
                    <tns:cutLength>
                      <xsl:value-of select="ns7:CategoryDetails/ns7:CategoryDetails[1]/ns7:Segment4"/>
                    </tns:cutLength>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:otherwise>
            </xsl:choose>
            <!--xsl:choose>            
              <xsl:when test="ns7:CategoryDetails/ns7:CategoryDetails[1]/ns7:Segment4 = 'COIL'">
                <tns:cutLength>0</tns:cutLength>
              </xsl:when>
              <xsl:otherwise>
                <tns:cutLength>
                  <xsl:value-of select="ns7:CategoryDetails/ns7:CategoryDetails[1]/ns7:Segment4"/>
                </tns:cutLength>
              </xsl:otherwise>
            </xsl:choose-->
            <xsl:choose>
              <xsl:when test='(ns7:UDADetails/ns7:UDADetails[(ns7:AttrName="LENGTH")]/ns7:AttrValue) = "COIL"'>
                <tns:bundleType>C</tns:bundleType>
              </xsl:when>
              <xsl:otherwise>
                <tns:bundleType>
                  <xsl:value-of select="ns7:BundleType"/>
                </tns:bundleType>
              </xsl:otherwise>
            </xsl:choose>
            <tns:theoActual>
              <xsl:value-of select="ns7:TheoActual"/>
            </tns:theoActual>
            <tns:metricImperial>
              <xsl:value-of select="ns7:MetricImperial"/>
            </tns:metricImperial>
            <tns:lastError>
              <xsl:value-of select="ns7:LastError"/>
            </tns:lastError>
            <!-- Update dBy NS -->
            <xsl:choose>
              <xsl:when test="ns7:ProdType = 'LIM'">
                <tns:prodType>HT</tns:prodType>
              </xsl:when>
              <xsl:otherwise>
                <tns:prodType>
                  <xsl:value-of select="ns7:ProdType"/>
                </tns:prodType>
              </xsl:otherwise>
            </xsl:choose>
            
            <xsl:choose>
              <xsl:when test="string-length (ns7:ItemDescription ) &lt;= 25">
                <tns:partDesc1>
                  <xsl:value-of select="ns7:ItemDescription"/>
                </tns:partDesc1>
              </xsl:when>
              <xsl:otherwise>
                <tns:partDesc1>
                  <xsl:value-of select="substring (ns7:ItemDescription, 1, 25 )"/>
                </tns:partDesc1>
              </xsl:otherwise>
            </xsl:choose>
            <xsl:choose>
              <xsl:when test="string-length (ns7:ItemLongDescription ) &lt;= 25">
                <tns:partDesc2>
                  <xsl:value-of select="ns7:ItemLongDescription"/>
                </tns:partDesc2>
              </xsl:when>
              <xsl:otherwise>
                <tns:partDesc2>
                  <xsl:value-of select="substring (ns7:ItemLongDescription, 1, 25 )"/>
                </tns:partDesc2>
              </xsl:otherwise>
            </xsl:choose>
            <xsl:choose>
              <xsl:when test='ns7:ProdType = "BIL"'>
                <tns:bundlePieces>1</tns:bundlePieces>
              </xsl:when>
              <xsl:otherwise>
                <xsl:choose>
                  <xsl:when test='ns7:ProdType = "FG"'>
                    <xsl:choose>
                      <xsl:when test='(ns7:UDADetails/ns7:UDADetails[(ns7:AttrName="LENGTH")]/ns7:AttrValue) = "COIL"'>
                        <tns:bundlePieces>1</tns:bundlePieces>
                      </xsl:when>
                      <xsl:otherwise>
                        <tns:bundlePieces>
                          <xsl:value-of select="ns7:BundlePieces"/>
                        </tns:bundlePieces>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:when>
                </xsl:choose>
              </xsl:otherwise>
            </xsl:choose>
            <xsl:choose>
              <xsl:when test="xp20:compare (ns7:ProdType, 'BIL' ) = 0">
                <tns:bundleWeight>
                  <xsl:value-of select="oraext:query-database (concat (&quot;SELECT  inv_convert.inv_um_convert_new (&quot;, ns7:InventoryItemId, &quot;,null,&quot;, ns7:OrganizationId, &quot;,null,&quot;, &quot;1,'EA','LBS',null,null, 'W') result from dual&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; )"/>
                </tns:bundleWeight>
              </xsl:when>
              <xsl:otherwise>
                <xsl:choose>
                  <xsl:when test="xp20:compare (ns7:ProdType, 'FG' ) = 0">
                    <xsl:choose>
                      <xsl:when test='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_QMOS_PRODUCT_CLASS_MAP.dvm", "PRODUCT_TYPE_VALUES", ns7:UDADetails/ns7:UDADetails[(ns7:AttrName="PRODTYPE")]/ns7:AttrValue, "PRODUCT_CLASS", "0" ) = 6'>
                        <tns:bundleWeight>
                          <xsl:value-of select="ns7:CategoryDetails/ns7:CategoryDetails/ns7:Segment20"/>
                        </tns:bundleWeight>
                      </xsl:when>
                      <xsl:otherwise>
                        <tns:bundleWeight>
                          <xsl:value-of select="ns7:BundleWeight"/>
                        </tns:bundleWeight>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:when>
                </xsl:choose>
              </xsl:otherwise>
            </xsl:choose>
            <tns:parentBilletProdCode>
              <xsl:value-of select="ns7:ParentBilletProdCode"/>
            </tns:parentBilletProdCode>
            <tns:specCode/>
            <tns:createDate>
              <xsl:value-of select="xp20:current-dateTime ( ) "/>
            </tns:createDate>
            <tns:userId>SOAUSER</tns:userId>
            <tns:processed>N</tns:processed>
            <!-- NS commented for testing as per NSNE code   *********    tns:status>S</tns:status-->
            <tns:meltPractice>
              <xsl:value-of select="ns7:MeltPractice"/>
            </tns:meltPractice>
          </tns:ApiProductCode>
        </xsl:if>
      </xsl:for-each>
    </tns:ApiProductCodeCollection>
  </xsl:template>
</xsl:stylesheet>
