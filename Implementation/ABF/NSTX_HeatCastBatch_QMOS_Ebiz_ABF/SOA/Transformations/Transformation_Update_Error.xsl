<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_UPDATE_QMOS_TAB"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_QMOS_TAB"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/Manish/NSTX_HeatCastBatch_QMOS_EBiz_ABF/DB_QMOS_TAB"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/Manish/NSTX_HeatCastBatch_QMOS_EBiz_ABF/DB_UPDATE_QMOS_TAB">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DB_QMOS_TAB.wsdl"/>
        <oracle-xsl-mapper:rootElement name="ApiProdConfirmHeaderCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_QMOS_TAB"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DB_UPDATE_QMOS_TAB.wsdl"/>
        <oracle-xsl-mapper:rootElement name="ApiProdConfirmHeaderCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_UPDATE_QMOS_TAB"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED APR 05 07:11:33 CDT 2017].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:ApiProdConfirmHeaderCollection>
      <xsl:for-each select="/ns0:ApiProdConfirmHeaderCollection/ns0:ApiProdConfirmHeader">
        <tns:ApiProdConfirmHeader>
          <tns:id>
            <xsl:value-of select="ns0:id"/>
          </tns:id>
          <tns:processed>E</tns:processed>
          <tns:apiProdConfirmMaterialCollection>
            <xsl:for-each select="ns0:apiProdConfirmMaterialCollection/ns0:ApiProdConfirmMaterial">
              <tns:ApiProdConfirmMaterial>
                <tns:id>
                  <xsl:value-of select="ns0:id"/>
                </tns:id>
                <tns:processed>E</tns:processed>
              </tns:ApiProdConfirmMaterial>
            </xsl:for-each>
          </tns:apiProdConfirmMaterialCollection>
        </tns:ApiProdConfirmHeader>
      </xsl:for-each>
    </tns:ApiProdConfirmHeaderCollection>
  </xsl:template>
</xsl:stylesheet>