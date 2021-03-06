<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/sp/DB_GetSegment2FromEBS"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/APPS/WSH_OTM_SYNC_ITEM_PKG/GET_EBS_ITEM_INFO/"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 tns oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/getEBSItemInfo/"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/OTMDEC/SendItemRefDataToOtm/DB_GetSegment2FromEBS"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../partnerWsdls/getEBSItemInfo.wsdl"/>
        <oracle-xsl-mapper:rootElement name="OutputParameters"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/APPS/WSH_OTM_SYNC_ITEM_PKG/GET_EBS_ITEM_INFO/"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DB_GetSegment2FromEBS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="InputParameters"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/sp/DB_GetSegment2FromEBS"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [MON DEC 21 08:37:44 CST 2015].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:InputParameters>
      <tns:P_ITEM_ORG_ID>
        <xsl:for-each select="/ns0:OutputParameters/GET_EBS_ITEM_INFO/GET_EBS_ITEM_INFO_ITEM">
          <tns:P_ITEM_ORG_ID_ITEM>
            <tns:INVENTORY_ITEM_ID>
              <!--xsl:value-of select="ITEM/ITEMGID/GID/XID"/-->
              <xsl:value-of select="substring-after(ITEM/ITEMGID/GID/XID,'-')"/>
            </tns:INVENTORY_ITEM_ID>
            <tns:ORGANIZATION_ID>
              <!--xsl:value-of select="ITEM/ITEMGID/GID/XID"/-->
              <xsl:value-of select="substring-before(ITEM/ITEMGID/GID/XID,'-')"/>
            </tns:ORGANIZATION_ID>
          </tns:P_ITEM_ORG_ID_ITEM>
        </xsl:for-each>
      </tns:P_ITEM_ORG_ID>
    </tns:InputParameters>
  </xsl:template>
</xsl:stylesheet>
