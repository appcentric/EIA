<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:client="http://xmlns.oracle.com/apps/wsh/outbound/txn/WshSendTxnToOtmService" xmlns:txn="http://xmlns.oracle.com/apps/wsh/outbound/util/WshOtmGlobalOutbound" xmlns:ns0="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://glog.com" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/APPS/WSH_OTM_OUTBOUND/UPDATE_ENTITY_INTF_STATUS/" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" exclude-result-prefixes="xsl plnk client txn ns0 ns1 db ldap xp20 bpws ora orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WshSendTxnToOtmService.wsdl"/>
            <oracle-xsl-mapper:rootElement name="WshSendTxnToOtmServiceProcessRequest" namespace="http://xmlns.oracle.com/apps/wsh/outbound/txn/WshSendTxnToOtmService"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="XSD">
            <oracle-xsl-mapper:schema location="../xsd/APPS_WSH_OTM_OUTBOUND_UPDATE_ENTITY_INTF_STATUS.xsd"/>
            <oracle-xsl-mapper:rootElement name="InputParameters" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/APPS/WSH_OTM_OUTBOUND/UPDATE_ENTITY_INTF_STATUS/"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [THU NOV 05 05:42:52 CST 2015].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
    <db:InputParameters>
      <P_ENTITY_TYPE>
        <xsl:value-of select="/client:WshSendTxnToOtmServiceProcessRequest/client:input/txn:entityType"/>
      </P_ENTITY_TYPE>
      <P_NEW_INTF_STATUS>
        <xsl:text disable-output-escaping="no">COMPLETE
        </xsl:text>
      </P_NEW_INTF_STATUS>
      <P_USERID>
        <xsl:value-of select="/client:WshSendTxnToOtmServiceProcessRequest/client:input/txn:appsContext/txn:userId"/>
      </P_USERID>
      <P_RESPID>
        <xsl:value-of select="/client:WshSendTxnToOtmServiceProcessRequest/client:input/txn:appsContext/txn:respId"/>
      </P_RESPID>
      <P_RESP_APPL_ID>
        <xsl:value-of select="/client:WshSendTxnToOtmServiceProcessRequest/client:input/txn:appsContext/txn:respAppId"/>
      </P_RESP_APPL_ID>
      <P_ENTITY_ID_TAB>
        <xsl:for-each select="/client:WshSendTxnToOtmServiceProcessRequest/client:input/txn:entityIdList/txn:entityId">
          <P_ENTITY_ID_TAB_ITEM>
            <xsl:value-of select="."/>
          </P_ENTITY_ID_TAB_ITEM>
        </xsl:for-each>
      </P_ENTITY_ID_TAB>
    </db:InputParameters>
  </xsl:template>
</xsl:stylesheet>