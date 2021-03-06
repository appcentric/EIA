<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/DB_Select_API_WorkOrder_Status"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Update_API_WorkOrder_Status"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 tns xp20 oraxsl mhdr oraext dvm xref utl socket"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/Manish/NSNE_WorkOrder_EBizBatchJobs_ABF/DB_Select_API_WorkOrder_Status"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/Manish/NSNE_WorkOrder_EBizBatchJobs_ABF/DB_Update_API_WorkOrder_Status">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DB_Select_API_WorkOrder_Status.wsdl"/>
        <oracle-xsl-mapper:rootElement name="DB_Select_API_WorkOrder_StatusOutputCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/DB_Select_API_WorkOrder_Status"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DB_Update_API_WorkOrder_Status.wsdl"/>
        <oracle-xsl-mapper:rootElement name="ApiWorkOrderStatusCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Update_API_WorkOrder_Status"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED FEB 17 12:21:48 CST 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:ApiWorkOrderStatusCollection>
      <xsl:for-each select="/ns0:DB_Select_API_WorkOrder_StatusOutputCollection/ns0:DB_Select_API_WorkOrder_StatusOutput">
        <tns:ApiWorkOrderStatus>
          <tns:id>
            <xsl:value-of select="ns0:ID"/>
          </tns:id>
          <tns:orderNumber>
            <xsl:value-of select="ns0:ORDER_NUMBER"/>
          </tns:orderNumber>
          <tns:processed>E</tns:processed>
          <tns:lastError>SOA Processe Error</tns:lastError>
        </tns:ApiWorkOrderStatus>
      </xsl:for-each>
    </tns:ApiWorkOrderStatusCollection>
  </xsl:template>
</xsl:stylesheet>
