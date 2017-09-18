<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions"
                xmlns:eia="http://xmlns.eia.com/extensions/1.0"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:ns4="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:tns="http://xmlns.eia.com/ABS/EBiz/InvoiceABS/1.0" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ns9="http://xmlns.oracle.com/pcbpel/adapter/apps/NucorApps/NUC_EBizAPInvoice_ABS/OA_LaunchAutoInvoice"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns1="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns0="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ns2="http://xmlns.eia.com/AO/EBiz/P2P/InvoiceAO/1.0"
                xmlns:ns3="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:ns5="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:invam="http://xmlns.eia.com/AO/EBiz/P2P/InvoiceABM/1.0"
                xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/sp/OA_LaunchAutoInvoice"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ns8="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns6="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:bpmn="http://schemas.oracle.com/bpm/xpath"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl ns4 soap12 soap mime tns wsdl core ns1 ns0 ns2 ns3 ns5 invam xsd ns8 ns7 ns6 plt ns9 db xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:ns10="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns11="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns12="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns13="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns14="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/InvoiceABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="LaunchAutoInvoiceRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/InvoiceABM/1.0"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../OA_LaunchAutoInvoice.wsdl"/>
        <oracle-xsl-mapper:rootElement name="InputParameters"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/sp/OA_LaunchAutoInvoice"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <oracle-xsl-mapper:mapShowPrefixes type="true"/>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [FRI SEP 04 19:02:34 CDT 2015].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <db:InputParameters>
      <db:APPLICATION>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:Application/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:Application"/>
      </db:APPLICATION>
      <db:PROGRAM>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:Program/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:Program"/>
      </db:PROGRAM>
      <db:DESCRIPTION>
        <xsl:attribute name="xsi:nil">
          <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:Description/@xsi:nil"/>
        </xsl:attribute>
        <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:Description"/>
      </db:DESCRIPTION>
      <db:START_TIME>
        <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:StartTime"/>
      </db:START_TIME>
      <db:SUB_REQUEST>
        <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:SubRequest"/>
      </db:SUB_REQUEST>
      <db:ARGUMENT1>
        <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:OperatingUnit"/>
      </db:ARGUMENT1>
      <db:ARGUMENT2>
        <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:Source"/>
      </db:ARGUMENT2>
      <db:ARGUMENT3>
        <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:Group"/>
      </db:ARGUMENT3>
      <db:ARGUMENT4>
        <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:BatchName"/>
      </db:ARGUMENT4>
      <db:ARGUMENT5>
        <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:HoldName"/>
      </db:ARGUMENT5>
      <db:ARGUMENT6>
        <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:HoldReason"/>
      </db:ARGUMENT6>
      <db:ARGUMENT7>
        <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:GLDate"/>
      </db:ARGUMENT7>
      <db:ARGUMENT8>
        <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:Purge"/>
      </db:ARGUMENT8>
      <db:ARGUMENT9>
        <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:TraceSwitch"/>
      </db:ARGUMENT9>
      <db:ARGUMENT10>
        <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:DebugSwitch"/>
      </db:ARGUMENT10>
      <db:ARGUMENT11>
        <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:SummarizeReport"/>
      </db:ARGUMENT11>
      <db:ARGUMENT12>
        <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:CommitBatchSize"/>
      </db:ARGUMENT12>
      <db:ARGUMENT13>
        <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:UserID"/>
      </db:ARGUMENT13>
      <db:ARGUMENT14>
        <xsl:value-of select="/invam:LaunchAutoInvoiceRequestMessage/invam:InterfaceParams/ns2:LoginID"/>
      </db:ARGUMENT14>
    </db:InputParameters>
  </xsl:template>
</xsl:stylesheet>