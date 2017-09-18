<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns0="http://xmlns.eia.com/AO/Ebiz/D2S/QualitySpecsAM/1.0"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 oraxsl xp20 xref mhdr oraext utl dvm socket"
                xmlns:ns1="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns4="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:tns="http://oracle.com/sca/soapservice/Manish/NUC_EBizQualitySpec_ABS/QualitySpecABS"
                xmlns:ns6="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns2="http://xmlns.eia.com/AO/Ebiz/D2S/QualitySpecsAO/1.0"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:ns3="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns5="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0"
                xmlns:ns8="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0"
                xmlns:ns10="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:ns9="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:ns11="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/D2S/QualitySpecABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryQualitySpecsAddRs"
                                       namespace="http://xmlns.eia.com/AO/Ebiz/D2S/QualitySpecsAM/1.0"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/D2S/QualitySpecABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QualitySpecsAddRq"
                                       namespace="http://xmlns.eia.com/AO/Ebiz/D2S/QualitySpecsAM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [MON NOV 16 02:59:30 CST 2015].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <ns0:QualitySpecsAddRq>
      <ns6:HeaderRq>
        <xsl:if test="/ns0:QueryQualitySpecsAddRs/ns6:HeaderRs/ns6:RequestDetails/ns6:TransactionRequestID">
          <ns6:TransactionRequestID>
            <xsl:value-of select="/ns0:QueryQualitySpecsAddRs/ns6:HeaderRs/ns6:RequestDetails/ns6:TransactionRequestID"/>
          </ns6:TransactionRequestID>
        </xsl:if>
        <xsl:if test="/ns0:QueryQualitySpecsAddRs/ns6:HeaderRs/ns6:RequestDetails/ns6:ComponentID">
          <ns6:ComponentID>
            <xsl:value-of select="/ns0:QueryQualitySpecsAddRs/ns6:HeaderRs/ns6:RequestDetails/ns6:ComponentID"/>
          </ns6:ComponentID>
        </xsl:if>
        <xsl:if test="/ns0:QueryQualitySpecsAddRs/ns6:HeaderRs/ns6:RequestDetails/ns6:TransactionName">
          <ns6:TransactionName>
            <xsl:value-of select="/ns0:QueryQualitySpecsAddRs/ns6:HeaderRs/ns6:RequestDetails/ns6:TransactionName"/>
          </ns6:TransactionName>
        </xsl:if>
        <xsl:if test="/ns0:QueryQualitySpecsAddRs/ns6:HeaderRs/ns6:RequestDetails/ns6:Source">
          <ns6:Source>
            <xsl:value-of select="/ns0:QueryQualitySpecsAddRs/ns6:HeaderRs/ns6:RequestDetails/ns6:Source"/>
          </ns6:Source>
        </xsl:if>
        <xsl:if test="/ns0:QueryQualitySpecsAddRs/ns6:HeaderRs/ns6:RequestDetails/ns6:Target">
          <ns6:Target>
            <xsl:value-of select="/ns0:QueryQualitySpecsAddRs/ns6:HeaderRs/ns6:RequestDetails/ns6:Target"/>
          </ns6:Target>
        </xsl:if>
      </ns6:HeaderRq>
      <xsl:for-each select="/ns0:QueryQualitySpecsAddRs/ns2:QualitySpecsDetails">
        <ns2:QualitySpecsDetails>
          <xsl:if test="ns2:SpecId">
            <ns2:SpecId>
              <xsl:value-of select="ns2:SpecId"/>
            </ns2:SpecId>
          </xsl:if>
          <xsl:if test="ns2:SpecName">
            <ns2:SpecName>
              <xsl:value-of select="ns2:SpecName"/>
            </ns2:SpecName>
          </xsl:if>
          <xsl:if test="ns2:SpecVersion">
            <ns2:SpecVersion>
              <xsl:value-of select="ns2:SpecVersion"/>
            </ns2:SpecVersion>
          </xsl:if>
          <xsl:if test="ns2:SpecStatus">
            <ns2:SpecStatus>
              <xsl:value-of select="ns2:SpecStatus"/>
            </ns2:SpecStatus>
          </xsl:if>
          <xsl:if test="ns2:Description">
            <ns2:Description>
              <xsl:value-of select="ns2:Description"/>
            </ns2:Description>
          </xsl:if>
          <xsl:if test="ns2:SpecType">
            <ns2:SpecType>
              <xsl:value-of select="ns2:SpecType"/>
            </ns2:SpecType>
          </xsl:if>
          <xsl:if test="ns2:OverlayInd">
            <ns2:OverlayInd>
              <xsl:value-of select="ns2:OverlayInd"/>
            </ns2:OverlayInd>
          </xsl:if>
          <xsl:if test="ns2:BaseSpec">
            <ns2:BaseSpec>
              <xsl:value-of select="ns2:BaseSpec"/>
            </ns2:BaseSpec>
          </xsl:if>
          <xsl:if test="ns2:BaseSpecVersion">
            <ns2:BaseSpecVersion>
              <xsl:value-of select="ns2:BaseSpecVersion"/>
            </ns2:BaseSpecVersion>
          </xsl:if>
          <xsl:if test="ns2:Grade">
            <ns2:Grade>
              <xsl:value-of select="ns2:Grade"/>
            </ns2:Grade>
          </xsl:if>
          <xsl:if test="ns2:OwnerOrganizationCode">
            <ns2:OwnerOrganizationCode>
              <xsl:value-of select="ns2:OwnerOrganizationCode"/>
            </ns2:OwnerOrganizationCode>
          </xsl:if>
          <xsl:if test="ns2:OwnerOrganizationName">
            <ns2:OwnerOrganizationName>
              <xsl:value-of select="ns2:OwnerOrganizationName"/>
            </ns2:OwnerOrganizationName>
          </xsl:if>
          <xsl:if test="ns2:OwnerName">
            <ns2:OwnerName>
              <xsl:value-of select="ns2:OwnerName"/>
            </ns2:OwnerName>
          </xsl:if>
          <xsl:if test="ns2:Attribute">
            <ns2:Attribute>
              <xsl:if test="ns2:Attribute/ns2:AttributeCategory">
                <ns2:AttributeCategory>
                  <xsl:value-of select="ns2:Attribute/ns2:AttributeCategory"/>
                </ns2:AttributeCategory>
              </xsl:if>
              <xsl:if test="ns2:Attribute/ns2:Attribute1">
                <ns2:Attribute1>
                  <xsl:value-of select="ns2:Attribute/ns2:Attribute1"/>
                </ns2:Attribute1>
              </xsl:if>
              <xsl:if test="ns2:Attribute/ns2:Attribute2">
                <ns2:Attribute2>
                  <xsl:value-of select="ns2:Attribute/ns2:Attribute2"/>
                </ns2:Attribute2>
              </xsl:if>
              <xsl:if test="ns2:Attribute/ns2:Attribute3">
                <ns2:Attribute3>
                  <xsl:value-of select="ns2:Attribute/ns2:Attribute3"/>
                </ns2:Attribute3>
              </xsl:if>
              <xsl:if test="ns2:Attribute/ns2:Attribute4">
                <ns2:Attribute4>
                  <xsl:value-of select="ns2:Attribute/ns2:Attribute4"/>
                </ns2:Attribute4>
              </xsl:if>
              <xsl:if test="ns2:Attribute/ns2:Attribute5">
                <ns2:Attribute5>
                  <xsl:value-of select="ns2:Attribute/ns2:Attribute5"/>
                </ns2:Attribute5>
              </xsl:if>
              <xsl:if test="ns2:Attribute/ns2:Attribute6">
                <ns2:Attribute6>
                  <xsl:value-of select="ns2:Attribute/ns2:Attribute6"/>
                </ns2:Attribute6>
              </xsl:if>
              <xsl:if test="ns2:Attribute/ns2:Attribute7">
                <ns2:Attribute7>
                  <xsl:value-of select="ns2:Attribute/ns2:Attribute7"/>
                </ns2:Attribute7>
              </xsl:if>
              <xsl:if test="ns2:Attribute/ns2:Attribute8">
                <ns2:Attribute8>
                  <xsl:value-of select="ns2:Attribute/ns2:Attribute8"/>
                </ns2:Attribute8>
              </xsl:if>
              <xsl:if test="ns2:Attribute/ns2:Attribute9">
                <ns2:Attribute9>
                  <xsl:value-of select="ns2:Attribute/ns2:Attribute9"/>
                </ns2:Attribute9>
              </xsl:if>
              <xsl:if test="ns2:Attribute/ns2:Attribute10">
                <ns2:Attribute10>
                  <xsl:value-of select="ns2:Attribute/ns2:Attribute10"/>
                </ns2:Attribute10>
              </xsl:if>
            </ns2:Attribute>
          </xsl:if>
          <xsl:if test="ns2:Item">
            <ns2:Item>
              <xsl:if test="ns2:Item/ns10:Identifier">
                <ns10:Identifier>
                  <xsl:value-of select="ns2:Item/ns10:Identifier"/>
                </ns10:Identifier>
              </xsl:if>
              <xsl:if test="ns2:Item/ns10:Item">
                <ns10:Item>
                  <xsl:value-of select="ns2:Item/ns10:Item"/>
                </ns10:Item>
              </xsl:if>
              <xsl:if test="ns2:Item/ns10:ItemType">
                <ns10:ItemType>
                  <xsl:value-of select="ns2:Item/ns10:ItemType"/>
                </ns10:ItemType>
              </xsl:if>
              <xsl:if test="ns2:Item/ns10:Description">
                <ns10:Description>
                  <xsl:value-of select="ns2:Item/ns10:Description"/>
                </ns10:Description>
              </xsl:if>
              <xsl:if test="ns2:Item/ns10:Code">
                <ns10:Code>
                  <xsl:value-of select="ns2:Item/ns10:Code"/>
                </ns10:Code>
              </xsl:if>
              <xsl:if test="ns2:Item/ns10:ItemRevision">
                <ns10:ItemRevision>
                  <xsl:value-of select="ns2:Item/ns10:ItemRevision"/>
                </ns10:ItemRevision>
              </xsl:if>
              <xsl:if test="ns2:Item/ns10:OrgCode">
                <ns10:OrgCode>
                  <xsl:value-of select="ns2:Item/ns10:OrgCode"/>
                </ns10:OrgCode>
              </xsl:if>
            </ns2:Item>
          </xsl:if>
          <xsl:if test="ns2:QualitySpecsTest">
            <ns2:QualitySpecsTest>
              <xsl:for-each select="ns2:QualitySpecsTest/ns2:QualitySpecsTest">
                <ns2:QualitySpecsTest>
                  <xsl:if test="ns2:SpecId">
                    <ns2:SpecId>
                      <xsl:value-of select="ns2:SpecId"/>
                    </ns2:SpecId>
                  </xsl:if>
                  <xsl:if test="ns2:SpecName">
                    <ns2:SpecName>
                      <xsl:value-of select="ns2:SpecName"/>
                    </ns2:SpecName>
                  </xsl:if>
                  <xsl:if test="ns2:Seq">
                    <ns2:Seq>
                      <xsl:value-of select="ns2:Seq"/>
                    </ns2:Seq>
                  </xsl:if>
                  <xsl:if test="ns2:TestName">
                    <ns2:TestName>
                      <xsl:value-of select="ns2:TestName"/>
                    </ns2:TestName>
                  </xsl:if>
                  <xsl:if test="ns2:TestClass">
                    <ns2:TestClass>
                      <xsl:value-of select="ns2:TestClass"/>
                    </ns2:TestClass>
                  </xsl:if>
                  <xsl:if test="ns2:TestMethod">
                    <ns2:TestMethod>
                      <xsl:value-of select="ns2:TestMethod"/>
                    </ns2:TestMethod>
                  </xsl:if>
                  <xsl:if test="ns2:TargetValue">
                    <ns2:TargetValue>
                      <xsl:value-of select="ns2:TargetValue"/>
                    </ns2:TargetValue>
                  </xsl:if>
                  <xsl:if test="ns2:MinimumValue">
                    <ns2:MinimumValue>
                      <xsl:value-of select="ns2:MinimumValue"/>
                    </ns2:MinimumValue>
                  </xsl:if>
                  <xsl:if test="ns2:MaximumValue">
                    <ns2:MaximumValue>
                      <xsl:value-of select="ns2:MaximumValue"/>
                    </ns2:MaximumValue>
                  </xsl:if>
                  <xsl:if test="ns2:TestQty">
                    <ns2:TestQty>
                      <xsl:value-of select="ns2:TestQty"/>
                    </ns2:TestQty>
                  </xsl:if>
                  <xsl:if test="ns2:TestQtyUom">
                    <ns2:TestQtyUom>
                      <xsl:value-of select="ns2:TestQtyUom"/>
                    </ns2:TestQtyUom>
                  </xsl:if>
                  <xsl:if test="ns2:TestUnit">
                    <ns2:TestUnit>
                      <xsl:value-of select="ns2:TestUnit"/>
                    </ns2:TestUnit>
                  </xsl:if>
                  <xsl:if test="ns2:TestReplicate">
                    <ns2:TestReplicate>
                      <xsl:value-of select="ns2:TestReplicate"/>
                    </ns2:TestReplicate>
                  </xsl:if>
                  <xsl:if test="ns2:TestPriority">
                    <ns2:TestPriority>
                      <xsl:value-of select="ns2:TestPriority"/>
                    </ns2:TestPriority>
                  </xsl:if>
                  <xsl:if test="ns2:OptionalInd">
                    <ns2:OptionalInd>
                      <xsl:value-of select="ns2:OptionalInd"/>
                    </ns2:OptionalInd>
                  </xsl:if>
                  <xsl:if test="ns2:RetestLotExpiryInd">
                    <ns2:RetestLotExpiryInd>
                      <xsl:value-of select="ns2:RetestLotExpiryInd"/>
                    </ns2:RetestLotExpiryInd>
                  </xsl:if>
                  <xsl:if test="ns2:OutOfSpecAction">
                    <ns2:OutOfSpecAction>
                      <xsl:value-of select="ns2:OutOfSpecAction"/>
                    </ns2:OutOfSpecAction>
                  </xsl:if>
                  <xsl:if test="ns2:CheckResultInterval">
                    <ns2:CheckResultInterval>
                      <xsl:value-of select="ns2:CheckResultInterval"/>
                    </ns2:CheckResultInterval>
                  </xsl:if>
                  <xsl:if test="ns2:BelowSpecMin">
                    <ns2:BelowSpecMin>
                      <xsl:value-of select="ns2:BelowSpecMin"/>
                    </ns2:BelowSpecMin>
                  </xsl:if>
                  <xsl:if test="ns2:BelowMinActionCode">
                    <ns2:BelowMinActionCode>
                      <xsl:value-of select="ns2:BelowMinActionCode"/>
                    </ns2:BelowMinActionCode>
                  </xsl:if>
                  <xsl:if test="ns2:AboveSpecMin">
                    <ns2:AboveSpecMin>
                      <xsl:value-of select="ns2:AboveSpecMin"/>
                    </ns2:AboveSpecMin>
                  </xsl:if>
                  <xsl:if test="ns2:AboveMinActionCode">
                    <ns2:AboveMinActionCode>
                      <xsl:value-of select="ns2:AboveMinActionCode"/>
                    </ns2:AboveMinActionCode>
                  </xsl:if>
                  <xsl:if test="ns2:BelowSpecMax">
                    <ns2:BelowSpecMax>
                      <xsl:value-of select="ns2:BelowSpecMax"/>
                    </ns2:BelowSpecMax>
                  </xsl:if>
                  <xsl:if test="ns2:BelowMaxActionCode">
                    <ns2:BelowMaxActionCode>
                      <xsl:value-of select="ns2:BelowMaxActionCode"/>
                    </ns2:BelowMaxActionCode>
                  </xsl:if>
                  <xsl:if test="ns2:AboveSpecMax">
                    <ns2:AboveSpecMax>
                      <xsl:value-of select="ns2:AboveSpecMax"/>
                    </ns2:AboveSpecMax>
                  </xsl:if>
                  <xsl:if test="ns2:AboveMaxActionCode">
                    <ns2:AboveMaxActionCode>
                      <xsl:value-of select="ns2:AboveMaxActionCode"/>
                    </ns2:AboveMaxActionCode>
                  </xsl:if>
                  <xsl:if test="ns2:TestDisplay">
                    <ns2:TestDisplay>
                      <xsl:value-of select="ns2:TestDisplay"/>
                    </ns2:TestDisplay>
                  </xsl:if>
                  <xsl:if test="ns2:PrintSpecInd">
                    <ns2:PrintSpecInd>
                      <xsl:value-of select="ns2:PrintSpecInd"/>
                    </ns2:PrintSpecInd>
                  </xsl:if>
                  <xsl:if test="ns2:PrintResultInd">
                    <ns2:PrintResultInd>
                      <xsl:value-of select="ns2:PrintResultInd"/>
                    </ns2:PrintResultInd>
                  </xsl:if>
                  <xsl:if test="ns2:DisplayPrecision">
                    <ns2:DisplayPrecision>
                      <xsl:value-of select="ns2:DisplayPrecision"/>
                    </ns2:DisplayPrecision>
                  </xsl:if>
                  <xsl:if test="ns2:ReportPrecision">
                    <ns2:ReportPrecision>
                      <xsl:value-of select="ns2:ReportPrecision"/>
                    </ns2:ReportPrecision>
                  </xsl:if>
                  <xsl:if test="ns2:Days">
                    <ns2:Days>
                      <xsl:value-of select="ns2:Days"/>
                    </ns2:Days>
                  </xsl:if>
                  <xsl:if test="ns2:Hours">
                    <ns2:Hours>
                      <xsl:value-of select="ns2:Hours"/>
                    </ns2:Hours>
                  </xsl:if>
                  <xsl:if test="ns2:Minutes">
                    <ns2:Minutes>
                      <xsl:value-of select="ns2:Minutes"/>
                    </ns2:Minutes>
                  </xsl:if>
                  <xsl:if test="ns2:Seconds">
                    <ns2:Seconds>
                      <xsl:value-of select="ns2:Seconds"/>
                    </ns2:Seconds>
                  </xsl:if>
                  <xsl:if test="ns2:FromBaseInd">
                    <ns2:FromBaseInd>
                      <xsl:value-of select="ns2:FromBaseInd"/>
                    </ns2:FromBaseInd>
                  </xsl:if>
                  <xsl:if test="ns2:ExcludeInd">
                    <ns2:ExcludeInd>
                      <xsl:value-of select="ns2:ExcludeInd"/>
                    </ns2:ExcludeInd>
                  </xsl:if>
                  <xsl:if test="ns2:ModifiedInd">
                    <ns2:ModifiedInd>
                      <xsl:value-of select="ns2:ModifiedInd"/>
                    </ns2:ModifiedInd>
                  </xsl:if>
                  <xsl:if test="ns2:CalcUomConvInd">
                    <ns2:CalcUomConvInd>
                      <xsl:value-of select="ns2:CalcUomConvInd"/>
                    </ns2:CalcUomConvInd>
                  </xsl:if>
                  <xsl:if test="ns2:ToQtyUom">
                    <ns2:ToQtyUom>
                      <xsl:value-of select="ns2:ToQtyUom"/>
                    </ns2:ToQtyUom>
                  </xsl:if>
                  <xsl:if test="ns2:Attribute">
                    <ns2:Attribute>
                      <xsl:if test="ns2:Attribute/ns2:AttributeCategory">
                        <ns2:AttributeCategory>
                          <xsl:value-of select="ns2:Attribute/ns2:AttributeCategory"/>
                        </ns2:AttributeCategory>
                      </xsl:if>
                      <xsl:if test="ns2:Attribute/ns2:Attribute1">
                        <ns2:Attribute1>
                          <xsl:value-of select="ns2:Attribute/ns2:Attribute1"/>
                        </ns2:Attribute1>
                      </xsl:if>
                      <xsl:if test="ns2:Attribute/ns2:Attribute2">
                        <ns2:Attribute2>
                          <xsl:value-of select="ns2:Attribute/ns2:Attribute2"/>
                        </ns2:Attribute2>
                      </xsl:if>
                      <xsl:if test="ns2:Attribute/ns2:Attribute3">
                        <ns2:Attribute3>
                          <xsl:value-of select="ns2:Attribute/ns2:Attribute3"/>
                        </ns2:Attribute3>
                      </xsl:if>
                      <xsl:if test="ns2:Attribute/ns2:Attribute4">
                        <ns2:Attribute4>
                          <xsl:value-of select="ns2:Attribute/ns2:Attribute4"/>
                        </ns2:Attribute4>
                      </xsl:if>
                      <xsl:if test="ns2:Attribute/ns2:Attribute5">
                        <ns2:Attribute5>
                          <xsl:value-of select="ns2:Attribute/ns2:Attribute5"/>
                        </ns2:Attribute5>
                      </xsl:if>
                      <xsl:if test="ns2:Attribute/ns2:Attribute6">
                        <ns2:Attribute6>
                          <xsl:value-of select="ns2:Attribute/ns2:Attribute6"/>
                        </ns2:Attribute6>
                      </xsl:if>
                      <xsl:if test="ns2:Attribute/ns2:Attribute7">
                        <ns2:Attribute7>
                          <xsl:value-of select="ns2:Attribute/ns2:Attribute7"/>
                        </ns2:Attribute7>
                      </xsl:if>
                      <xsl:if test="ns2:Attribute/ns2:Attribute8">
                        <ns2:Attribute8>
                          <xsl:value-of select="ns2:Attribute/ns2:Attribute8"/>
                        </ns2:Attribute8>
                      </xsl:if>
                      <xsl:if test="ns2:Attribute/ns2:Attribute9">
                        <ns2:Attribute9>
                          <xsl:value-of select="ns2:Attribute/ns2:Attribute9"/>
                        </ns2:Attribute9>
                      </xsl:if>
                      <xsl:if test="ns2:Attribute/ns2:Attribute10">
                        <ns2:Attribute10>
                          <xsl:value-of select="ns2:Attribute/ns2:Attribute10"/>
                        </ns2:Attribute10>
                      </xsl:if>
                    </ns2:Attribute>
                  </xsl:if>
                </ns2:QualitySpecsTest>
              </xsl:for-each>
            </ns2:QualitySpecsTest>
          </xsl:if>
          <xsl:if test="ns2:QltySpecsVrs">
            <ns2:QltySpecsVrs>
              <xsl:for-each select="ns2:QltySpecsVrs/ns2:QltySpecsVrs">
                <ns2:QltySpecsVrs>
                  <xsl:if test="ns2:SpecVrId">
                    <ns2:SpecVrId>
                      <xsl:value-of select="ns2:SpecVrId"/>
                    </ns2:SpecVrId>
                  </xsl:if>
                  <xsl:if test="ns2:SpecId">
                    <ns2:SpecId>
                      <xsl:value-of select="ns2:SpecId"/>
                    </ns2:SpecId>
                  </xsl:if>
                  <xsl:if test="ns2:SpecName">
                    <ns2:SpecName>
                      <xsl:value-of select="ns2:SpecName"/>
                    </ns2:SpecName>
                  </xsl:if>
                  <xsl:if test="ns2:OrganizationCode">
                    <ns2:OrganizationCode>
                      <xsl:value-of select="ns2:OrganizationCode"/>
                    </ns2:OrganizationCode>
                  </xsl:if>
                  <xsl:if test="ns2:SpecVrType">
                    <ns2:SpecVrType>
                      <xsl:value-of select="ns2:SpecVrType"/>
                    </ns2:SpecVrType>
                  </xsl:if>
                  <xsl:if test="ns2:SpecVrStatus">
                    <ns2:SpecVrStatus>
                      <xsl:value-of select="ns2:SpecVrStatus"/>
                    </ns2:SpecVrStatus>
                  </xsl:if>
                  <xsl:if test="ns2:StartDate">
                    <ns2:StartDate>
                      <xsl:value-of select="ns2:StartDate"/>
                    </ns2:StartDate>
                  </xsl:if>
                  <xsl:if test="ns2:EndDate">
                    <ns2:EndDate>
                      <xsl:value-of select="ns2:EndDate"/>
                    </ns2:EndDate>
                  </xsl:if>
                  <xsl:if test="ns2:SamplingPlanName">
                    <ns2:SamplingPlanName>
                      <xsl:value-of select="ns2:SamplingPlanName"/>
                    </ns2:SamplingPlanName>
                  </xsl:if>
                  <xsl:if test="ns2:CoaType">
                    <ns2:CoaType>
                      <xsl:value-of select="ns2:CoaType"/>
                    </ns2:CoaType>
                  </xsl:if>
                  <xsl:if test="ns2:CoaAtShipInd">
                    <ns2:CoaAtShipInd>
                      <xsl:value-of select="ns2:CoaAtShipInd"/>
                    </ns2:CoaAtShipInd>
                  </xsl:if>
                  <xsl:if test="ns2:CoaAtInvoiceInd">
                    <ns2:CoaAtInvoiceInd>
                      <xsl:value-of select="ns2:CoaAtInvoiceInd"/>
                    </ns2:CoaAtInvoiceInd>
                  </xsl:if>
                  <xsl:if test="ns2:CoaFromSupplierInd">
                    <ns2:CoaFromSupplierInd>
                      <xsl:value-of select="ns2:CoaFromSupplierInd"/>
                    </ns2:CoaFromSupplierInd>
                  </xsl:if>
                  <xsl:if test="ns2:LotOptionalOnSample">
                    <ns2:LotOptionalOnSample>
                      <xsl:value-of select="ns2:LotOptionalOnSample"/>
                    </ns2:LotOptionalOnSample>
                  </xsl:if>
                  <xsl:if test="ns2:AutoSampleInd">
                    <ns2:AutoSampleInd>
                      <xsl:value-of select="ns2:AutoSampleInd"/>
                    </ns2:AutoSampleInd>
                  </xsl:if>
                  <xsl:if test="ns2:DelayedLotEntry">
                    <ns2:DelayedLotEntry>
                      <xsl:value-of select="ns2:DelayedLotEntry"/>
                    </ns2:DelayedLotEntry>
                  </xsl:if>
                  <xsl:if test="ns2:DelayedLpnEntry">
                    <ns2:DelayedLpnEntry>
                      <xsl:value-of select="ns2:DelayedLpnEntry"/>
                    </ns2:DelayedLpnEntry>
                  </xsl:if>
                  <xsl:if test="ns2:ControlLotAttrbInd">
                    <ns2:ControlLotAttrbInd>
                      <xsl:value-of select="ns2:ControlLotAttrbInd"/>
                    </ns2:ControlLotAttrbInd>
                  </xsl:if>
                  <xsl:if test="ns2:InSpecLotStatus">
                    <ns2:InSpecLotStatus>
                      <xsl:value-of select="ns2:InSpecLotStatus"/>
                    </ns2:InSpecLotStatus>
                  </xsl:if>
                  <xsl:if test="ns2:OutOfSpecLotStatus">
                    <ns2:OutOfSpecLotStatus>
                      <xsl:value-of select="ns2:OutOfSpecLotStatus"/>
                    </ns2:OutOfSpecLotStatus>
                  </xsl:if>
                  <xsl:if test="ns2:SampleInvTransInd">
                    <ns2:SampleInvTransInd>
                      <xsl:value-of select="ns2:SampleInvTransInd"/>
                    </ns2:SampleInvTransInd>
                  </xsl:if>
                  <xsl:if test="ns2:OperatingUnit">
                    <ns2:OperatingUnit>
                      <xsl:value-of select="ns2:OperatingUnit"/>
                    </ns2:OperatingUnit>
                  </xsl:if>
                  <xsl:if test="ns2:ParentLotNumber">
                    <ns2:ParentLotNumber>
                      <xsl:value-of select="ns2:ParentLotNumber"/>
                    </ns2:ParentLotNumber>
                  </xsl:if>
                  <xsl:if test="ns2:LotNumber">
                    <ns2:LotNumber>
                      <xsl:value-of select="ns2:LotNumber"/>
                    </ns2:LotNumber>
                  </xsl:if>
                  <xsl:if test="ns2:Subinventory">
                    <ns2:Subinventory>
                      <xsl:value-of select="ns2:Subinventory"/>
                    </ns2:Subinventory>
                  </xsl:if>
                  <xsl:if test="ns2:ItemLocator">
                    <ns2:ItemLocator>
                      <xsl:value-of select="ns2:ItemLocator"/>
                    </ns2:ItemLocator>
                  </xsl:if>
                  <xsl:if test="ns2:BatchNo">
                    <ns2:BatchNo>
                      <xsl:value-of select="ns2:BatchNo"/>
                    </ns2:BatchNo>
                  </xsl:if>
                  <xsl:if test="ns2:RecipeNo">
                    <ns2:RecipeNo>
                      <xsl:value-of select="ns2:RecipeNo"/>
                    </ns2:RecipeNo>
                  </xsl:if>
                  <xsl:if test="ns2:RecipeVers">
                    <ns2:RecipeVers>
                      <xsl:value-of select="ns2:RecipeVers"/>
                    </ns2:RecipeVers>
                  </xsl:if>
                  <xsl:if test="ns2:FormulaNo">
                    <ns2:FormulaNo>
                      <xsl:value-of select="ns2:FormulaNo"/>
                    </ns2:FormulaNo>
                  </xsl:if>
                  <xsl:if test="ns2:FormulaVers">
                    <ns2:FormulaVers>
                      <xsl:value-of select="ns2:FormulaVers"/>
                    </ns2:FormulaVers>
                  </xsl:if>
                  <xsl:if test="ns2:FormulalineNo">
                    <ns2:FormulalineNo>
                      <xsl:value-of select="ns2:FormulalineNo"/>
                    </ns2:FormulalineNo>
                  </xsl:if>
                  <xsl:if test="ns2:RoutingNo">
                    <ns2:RoutingNo>
                      <xsl:value-of select="ns2:RoutingNo"/>
                    </ns2:RoutingNo>
                  </xsl:if>
                  <xsl:if test="ns2:RoutingVers">
                    <ns2:RoutingVers>
                      <xsl:value-of select="ns2:RoutingVers"/>
                    </ns2:RoutingVers>
                  </xsl:if>
                  <xsl:if test="ns2:StepNo">
                    <ns2:StepNo>
                      <xsl:value-of select="ns2:StepNo"/>
                    </ns2:StepNo>
                  </xsl:if>
                  <xsl:if test="ns2:Charge">
                    <ns2:Charge>
                      <xsl:value-of select="ns2:Charge"/>
                    </ns2:Charge>
                  </xsl:if>
                  <xsl:if test="ns2:OprnNo">
                    <ns2:OprnNo>
                      <xsl:value-of select="ns2:OprnNo"/>
                    </ns2:OprnNo>
                  </xsl:if>
                  <xsl:if test="ns2:OprnVers">
                    <ns2:OprnVers>
                      <xsl:value-of select="ns2:OprnVers"/>
                    </ns2:OprnVers>
                  </xsl:if>
                  <xsl:if test="ns2:ControlBatchStepInd">
                    <ns2:ControlBatchStepInd>
                      <xsl:value-of select="ns2:ControlBatchStepInd"/>
                    </ns2:ControlBatchStepInd>
                  </xsl:if>
                  <xsl:if test="ns2:AutoCompleteBatchStep">
                    <ns2:AutoCompleteBatchStep>
                      <xsl:value-of select="ns2:AutoCompleteBatchStep"/>
                    </ns2:AutoCompleteBatchStep>
                  </xsl:if>
                  <xsl:if test="ns2:CustomerNumber">
                    <ns2:CustomerNumber>
                      <xsl:value-of select="ns2:CustomerNumber"/>
                    </ns2:CustomerNumber>
                  </xsl:if>
                  <xsl:if test="ns2:ShipToLocation">
                    <ns2:ShipToLocation>
                      <xsl:value-of select="ns2:ShipToLocation"/>
                    </ns2:ShipToLocation>
                  </xsl:if>
                  <xsl:if test="ns2:OrderNumber">
                    <ns2:OrderNumber>
                      <xsl:value-of select="ns2:OrderNumber"/>
                    </ns2:OrderNumber>
                  </xsl:if>
                  <xsl:if test="ns2:OrderType">
                    <ns2:OrderType>
                      <xsl:value-of select="ns2:OrderType"/>
                    </ns2:OrderType>
                  </xsl:if>
                  <xsl:if test="ns2:OrderLineNum">
                    <ns2:OrderLineNum>
                      <xsl:value-of select="ns2:OrderLineNum"/>
                    </ns2:OrderLineNum>
                  </xsl:if>
                  <xsl:if test="ns2:SupplierNo">
                    <ns2:SupplierNo>
                      <xsl:value-of select="ns2:SupplierNo"/>
                    </ns2:SupplierNo>
                  </xsl:if>
                  <xsl:if test="ns2:SupplierSite">
                    <ns2:SupplierSite>
                      <xsl:value-of select="ns2:SupplierSite"/>
                    </ns2:SupplierSite>
                  </xsl:if>
                  <xsl:if test="ns2:PoNumber">
                    <ns2:PoNumber>
                      <xsl:value-of select="ns2:PoNumber"/>
                    </ns2:PoNumber>
                  </xsl:if>
                  <xsl:if test="ns2:PoLineNum">
                    <ns2:PoLineNum>
                      <xsl:value-of select="ns2:PoLineNum"/>
                    </ns2:PoLineNum>
                  </xsl:if>
                  <xsl:if test="ns2:Attribute">
                    <ns2:Attribute>
                      <xsl:if test="ns2:Attribute/ns2:AttributeCategory">
                        <ns2:AttributeCategory>
                          <xsl:value-of select="ns2:Attribute/ns2:AttributeCategory"/>
                        </ns2:AttributeCategory>
                      </xsl:if>
                      <xsl:if test="ns2:Attribute/ns2:Attribute1">
                        <ns2:Attribute1>
                          <xsl:value-of select="ns2:Attribute/ns2:Attribute1"/>
                        </ns2:Attribute1>
                      </xsl:if>
                      <xsl:if test="ns2:Attribute/ns2:Attribute2">
                        <ns2:Attribute2>
                          <xsl:value-of select="ns2:Attribute/ns2:Attribute2"/>
                        </ns2:Attribute2>
                      </xsl:if>
                      <xsl:if test="ns2:Attribute/ns2:Attribute3">
                        <ns2:Attribute3>
                          <xsl:value-of select="ns2:Attribute/ns2:Attribute3"/>
                        </ns2:Attribute3>
                      </xsl:if>
                      <xsl:if test="ns2:Attribute/ns2:Attribute4">
                        <ns2:Attribute4>
                          <xsl:value-of select="ns2:Attribute/ns2:Attribute4"/>
                        </ns2:Attribute4>
                      </xsl:if>
                      <xsl:if test="ns2:Attribute/ns2:Attribute5">
                        <ns2:Attribute5>
                          <xsl:value-of select="ns2:Attribute/ns2:Attribute5"/>
                        </ns2:Attribute5>
                      </xsl:if>
                      <xsl:if test="ns2:Attribute/ns2:Attribute6">
                        <ns2:Attribute6>
                          <xsl:value-of select="ns2:Attribute/ns2:Attribute6"/>
                        </ns2:Attribute6>
                      </xsl:if>
                      <xsl:if test="ns2:Attribute/ns2:Attribute7">
                        <ns2:Attribute7>
                          <xsl:value-of select="ns2:Attribute/ns2:Attribute7"/>
                        </ns2:Attribute7>
                      </xsl:if>
                      <xsl:if test="ns2:Attribute/ns2:Attribute8">
                        <ns2:Attribute8>
                          <xsl:value-of select="ns2:Attribute/ns2:Attribute8"/>
                        </ns2:Attribute8>
                      </xsl:if>
                      <xsl:if test="ns2:Attribute/ns2:Attribute9">
                        <ns2:Attribute9>
                          <xsl:value-of select="ns2:Attribute/ns2:Attribute9"/>
                        </ns2:Attribute9>
                      </xsl:if>
                      <xsl:if test="ns2:Attribute/ns2:Attribute10">
                        <ns2:Attribute10>
                          <xsl:value-of select="ns2:Attribute/ns2:Attribute10"/>
                        </ns2:Attribute10>
                      </xsl:if>
                    </ns2:Attribute>
                  </xsl:if>
                </ns2:QltySpecsVrs>
              </xsl:for-each>
            </ns2:QltySpecsVrs>
          </xsl:if>
        </ns2:QualitySpecsDetails>
      </xsl:for-each>
    </ns0:QualitySpecsAddRq>
  </xsl:template>
</xsl:stylesheet>