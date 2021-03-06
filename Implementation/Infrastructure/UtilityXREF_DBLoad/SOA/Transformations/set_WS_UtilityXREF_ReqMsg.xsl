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
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:tns="http://xmlns.eia.com/Infrastructure/UtilityXREF/1.0"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Read_XrefStg"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns1 ns0 tns xp20 oraxsl mhdr oraext dvm xref utl socket"
                xmlns:bpws="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/SMG-common/UtilityXREF_DBLoad/DB_Read_XrefStg"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns3="http://oracle.com/sca/soapservice/SMG-common/UtilityXREF_DBLoad/BPELUtilityDBLoad">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DB_Read_XrefStg.wsdl"/>
        <oracle-xsl-mapper:rootElement name="XxnucXrefDataStgCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Read_XrefStg"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/BPELUtilityDBLoadWrapper.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="params"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="http://rzmkea253.rz.nucorsteel.local:8001/soa-infra/services/common/UtilityXREF/UtilityXREF.wsdl"/>
        <oracle-xsl-mapper:rootElement name="processXREFData"
                                       namespace="http://xmlns.eia.com/Infrastructure/UtilityXREF/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [FRI MAR 10 12:52:55 CST 2017].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="params"/>
  <xsl:template match="/">
    <xsl:for-each select="/ns0:XxnucXrefDataStgCollection/ns0:XxnucXrefDataStg[$params/ns1:parameters/ns1:item[ns1:name='idx']/ns1:value]">
      <tns:processXREFData>
        <tns:XREFName>
          <xsl:value-of select="ns0:xrefTableName"/>
        </tns:XREFName>
        <tns:ReferenceColumn>
          <xsl:value-of select="ns0:referenceColumn"/>
        </tns:ReferenceColumn>
        <tns:ReferenceValue>
          <xsl:value-of select="ns0:referenceValue"/>
        </tns:ReferenceValue>
        <tns:LookupColumn>
          <xsl:value-of select="ns0:lookupColumn"/>
        </tns:LookupColumn>
        <tns:LookupValue>
          <xsl:value-of select="ns0:lookupValue"/>
        </tns:LookupValue>
      </tns:processXREFData>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
