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
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/sp/EBiz_LPNCreation"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns0="http://xmlns.eia.com/AM/EBiz/P2P/LotAM/1.0"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:ns1="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns3="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns5="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns4="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/P2P/LpnAO/1.0"
                xmlns:ns2="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns6="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:client="http:/xmlns.eia.com/Implementation/ABS/NUC_EBizLPN_ABS/EBizLPNABS/1.0"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns8="http://xmlns.oracle.com/pcbpel/adapter/apps/I109byManish/NUC_EBizLPN_ABS/EBiz_LPNCreation"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/EBizLPNABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateLpnRequest" namespace="http://xmlns.eia.com/AM/EBiz/P2P/LotAM/1.0"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/EBiz_LPNCreation.wsdl"/>
        <oracle-xsl-mapper:rootElement name="InputParameters"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/sp/EBiz_LPNCreation"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [SAT JAN 23 05:17:05 CST 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:InputParameters>
      <tns:P_I_TRX_ID>
        <xsl:value-of select="/ns0:CreateLpnRequest/ns7:CreateLpnReq/ns7:TransactionID"/>
      </tns:P_I_TRX_ID>
      <tns:P_I_TRX_NAME>
        <xsl:value-of select="/ns0:CreateLpnRequest/ns5:HeaderRq/ns5:TransactionName"/>
      </tns:P_I_TRX_NAME>
      <tns:P_I_SRC_SYSTEM>
        <xsl:value-of select="/ns0:CreateLpnRequest/ns5:HeaderRq/ns5:Source"/>
      </tns:P_I_SRC_SYSTEM>
      <tns:P_APPS_INIT>
        <!-- <tns:USER_ID>1906</tns:USER_ID>-->
        <tns:USER_NAME>NITIN.DHAR</tns:USER_NAME>
        <tns:RESPONSIBILITY_NAME>NSNE PO Superuser</tns:RESPONSIBILITY_NAME>
        <tns:ORG_ID>88</tns:ORG_ID>
      </tns:P_APPS_INIT>
      <tns:P_I_LPN>
        <xsl:for-each select="/ns0:CreateLpnRequest/ns7:CreateLpnReq/ns7:LpnDetails/ns7:P_I_LPN_ITEM">
          <tns:P_I_LPN_ITEM>
            <tns:LPN_NUM>
              <xsl:value-of select="ns7:BUNDLE_NUM"/>
            </tns:LPN_NUM>
            <tns:BUNDLE_NUM>
              <xsl:value-of select="ns7:BUNDLE_NUM"/>
            </tns:BUNDLE_NUM>
            <tns:ORGANIZATION_ID>
              <xsl:value-of select="ns7:ORGANIZATION_ID"/>
            </tns:ORGANIZATION_ID>
            <tns:LOT_NUMBER/>
          </tns:P_I_LPN_ITEM>
        </xsl:for-each>
      </tns:P_I_LPN>
    </tns:InputParameters>
  </xsl:template>
</xsl:stylesheet>
