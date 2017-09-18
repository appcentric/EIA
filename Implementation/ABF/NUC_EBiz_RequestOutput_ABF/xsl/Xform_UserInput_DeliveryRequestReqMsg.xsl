<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../RequestOutputFile.wsdl"/>
      <rootElement name="process" namespace="http://xmlns.oracle.com/NucorPordSup/NUC_EBiz_RequestOutput_ABF/RequestOutputFile"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/common/DeliveryABS.wsdl"/>
      <rootElement name="DeliveryRequestMessage" namespace="http://xmlns.eia.com/AO/EBiz/common/DeliveryAM/1.0"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.0(build 130301.0647.0008) AT [TUE FEB 03 09:06:24 CST 2015]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:eia="http://xmlns.eia.com/extensions/1.0"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:ns1="http://xmlns.eia.com/AO/EBiz/common/DeliveryAO/1.0"
                xmlns:delam="http://xmlns.eia.com/AO/EBiz/common/DeliveryAM/1.0"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:tns="http://xmlns.eia.com/ABS/EBiz/common/DeliveryABS/1.0"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns0="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns2="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:client="http://xmlns.oracle.com/NucorPordSup/NUC_EBiz_RequestOutput_ABF/RequestOutputFile"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl wsdl plnk client xsd ns1 delam soap12 soap mime tns core ns0 ns2 bpws xp20 eia bpel bpm utl ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
  <xsl:template match="/">
    <delam:DeliveryRequestMessage>
      <delam:AppsContext>
        <ns2:UserName>
          <xsl:value-of select='utl:getServiceProperty("NUC_EBizRequestDelivery_ABS","UserName")'/>
        </ns2:UserName>
        <ns2:ResponsibilityName>
          <xsl:value-of select='utl:getServiceProperty("NUC_EBizRequestDelivery_ABS","ResponsibilityName")'/>
        </ns2:ResponsibilityName>
      </delam:AppsContext>
      <delam:ListOfDelivery>
        <ns1:Delivery>
          <ns1:requestId>
            <xsl:value-of select="/client:process/client:RequestID"/>
          </ns1:requestId>
          <ns1:argument1>
            <xsl:text disable-output-escaping="no">E</xsl:text>
          </ns1:argument1>
          <ns1:argument2>
            <xsl:value-of select="/client:process/client:ReportName"/>
          </ns1:argument2>
          <ns1:argument3>
            <xsl:text disable-output-escaping="no">soa@nucor.com</xsl:text>
          </ns1:argument3>
          <ns1:argument4>
            <xsl:value-of select="/client:process/client:EmailAddress"/>
          </ns1:argument4>
        </ns1:Delivery>
      </delam:ListOfDelivery>
    </delam:DeliveryRequestMessage>
  </xsl:template>
</xsl:stylesheet>