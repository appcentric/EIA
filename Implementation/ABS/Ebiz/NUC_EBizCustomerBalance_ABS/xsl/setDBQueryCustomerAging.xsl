<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_QueryCustomerBalanceSummary" xmlns:ns4="http://xmlns.eia.com/AO/EBiz/O2C/CustomerAO/1.0" xmlns:ns5="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns7="http://xmlns.oracle.com/pcbpel/adapter/db/NucorSOA/NUC_EBizCustomerBalance_ABS/DB_QueryCustomerBalanceSummary" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:core="http://xmlns.eia.com/EO/Common/1.0" xmlns:ns1="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0" xmlns:ns0="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:tns="http://xmlns.eia.com/ABS/EBiz/O2C/CustomerBalanceABS/1.0" xmlns:custbalam="http://xmlns.eia.com/AO/EBiz/O2C/CustomerBalanceAM/1.0" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns6="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns2="http://xmlns.eia.com/AO/EBiz/O2C/CustomerBalanceAO/1.0" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns3="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0" xmlns:ns8="http://xmlns.oracle.com/pcbpel/adapter/db/Nucor/NUC_EBizCustomerBalance_ABS/DB_QueryCustomerAging" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/DB_QueryCustomerAging" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl top ns4 ns5 ns7 soap12 plt soap wsdl mime core ns1 tns custbalam ns6 ns2 xsd ns3 ns8 db xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/O2C/CustomerBalanceABS.wsdl"/>
            <oracle-xsl-mapper:rootElement name="queryListOfCustomersBalanceRequestMessage" namespace="http://xmlns.eia.com/AO/EBiz/O2C/CustomerBalanceAM/1.0"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../DB_QueryCustomerBalanceSummary.wsdl"/>
            <oracle-xsl-mapper:rootElement name="HzCustAccountsAllCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_QueryCustomerBalanceSummary"/>
            <oracle-xsl-mapper:param name="DB_QueryCustomerBalanceSummary_RespMsg.HzCustAccountsAllCollection"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../DB_QueryCustomerAging.wsdl"/>
            <oracle-xsl-mapper:rootElement name="DB_QueryCustomerAgingInput" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/DB_QueryCustomerAging"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED SEP 09 14:03:32 CDT 2015].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="DB_QueryCustomerBalanceSummary_RespMsg.HzCustAccountsAllCollection"/>
  <xsl:template match="/">
    <db:DB_QueryCustomerAgingInput>
      <db:CustomerId>
        <xsl:value-of select="$DB_QueryCustomerBalanceSummary_RespMsg.HzCustAccountsAllCollection/top:HzCustAccountsAllCollection/top:HzCustAccountsAll/top:custAccountId"/>
      </db:CustomerId>
      <db:OrgId>
        <xsl:value-of select="/custbalam:queryListOfCustomersBalanceRequestMessage/custbalam:AppsContext/ns6:OrgId"/>
      </db:OrgId>
      <db:CreditOption>
        <xsl:value-of select="/custbalam:queryListOfCustomersBalanceRequestMessage/custbalam:AgingParams/ns2:CreditOption"/>
      </db:CreditOption>
      <db:BucketName>
        <xsl:value-of select="/custbalam:queryListOfCustomersBalanceRequestMessage/custbalam:AgingParams/ns2:BucketName"/>
      </db:BucketName>
    </db:DB_QueryCustomerAgingInput>
  </xsl:template>
</xsl:stylesheet>