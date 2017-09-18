<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/O2C/MeterABS.wsdl"/>
      <rootElement name="CreateMeterReadingRequestMessage" namespace="http://xmlns.eia.com/AO/EBiz/O2C/MeterAM/1.0"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../OA_MeterReadingEBS.wsdl"/>
      <rootElement name="InputParameters" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/sp/OA_MeterReadingEBS"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.0(build 130301.0647.0008) AT [FRI MAR 20 14:53:15 IST 2015]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:eia="http://xmlns.eia.com/extensions/1.0"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:ns3="http://xmlns.oracle.com/pcbpel/adapter/apps/NUCOR/NUC_EBizMeterReading_ABS/OA_MeterReadingEBS"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:tns="http://xmlns.eia.com/ABS/EBiz/O2C/MeterABS/1.0"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns0="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:ns1="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:ns2="http://xmlns.eia.com/AO/EBiz/O2C/MeterAO/1.0"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:eamm="http://xmlns.eia.com/AO/EBiz/O2C/MeterAM/1.0"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/sp/OA_MeterReadingEBS"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl soap12 soap mime wsdl tns core ns0 ns1 ns2 eamm xsd ns3 plt db bpws xp20 eia bpel bpm utl ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
  <xsl:template match="/">
    <xsl:if test="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading">
      <db:InputParameters>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:ApiVersion != ""'>
          <db:P_API_VERSION>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:ApiVersion"/>
          </db:P_API_VERSION>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:InitMsgList != ""'>
          <db:P_INIT_MSG_LIST>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:InitMsgList"/>
          </db:P_INIT_MSG_LIST>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:Commit != ""'>
          <db:P_COMMIT>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:Commit"/>
          </db:P_COMMIT>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:MeterId != ""'>
          <db:P_METER_ID>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:MeterId"/>
          </db:P_METER_ID>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:CurrentReading != ""'>
          <db:P_CURRENT_READING>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:CurrentReading"/>
          </db:P_CURRENT_READING>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:CurrentReadindDate != ""'>
          <db:P_CURRENT_READING_DATE>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:CurrentReadindDate"/>
          </db:P_CURRENT_READING_DATE>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:ResetFlag != ""'>
          <db:P_RESET_FLAG>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:ResetFlag"/>
          </db:P_RESET_FLAG>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Description != ""'>
          <db:P_DESCRIPTION>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Description"/>
          </db:P_DESCRIPTION>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:SourceCode != ""'>
          <db:P_SOURCE_CODE>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:SourceCode"/>
          </db:P_SOURCE_CODE>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:WoEntryFakeFlag != ""'>
          <db:P_WO_ENTRY_FAKE_FLAG>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:WoEntryFakeFlag"/>
          </db:P_WO_ENTRY_FAKE_FLAG>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:AdjustmentType != ""'>
          <db:P_ADJUSTMENT_TYPE>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:AdjustmentType"/>
          </db:P_ADJUSTMENT_TYPE>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:ResetReason != ""'>
          <db:P_RESET_REASON>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:ResetReason"/>
          </db:P_RESET_REASON>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:AttributeCategory != ""'>
          <db:P_ATTRIBUTE_CATEGORY>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:AttributeCategory"/>
          </db:P_ATTRIBUTE_CATEGORY>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute1 != ""'>
          <db:P_ATTRIBUTE1>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute1"/>
          </db:P_ATTRIBUTE1>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute2 != ""'>
          <db:P_ATTRIBUTE2>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute2"/>
          </db:P_ATTRIBUTE2>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute3 != ""'>
          <db:P_ATTRIBUTE3>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute3"/>
          </db:P_ATTRIBUTE3>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute4 != ""'>
          <db:P_ATTRIBUTE4>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute4"/>
          </db:P_ATTRIBUTE4>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute5 != ""'>
          <db:P_ATTRIBUTE5>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute5"/>
          </db:P_ATTRIBUTE5>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute6 != ""'>
          <db:P_ATTRIBUTE6>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute6"/>
          </db:P_ATTRIBUTE6>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute7 != ""'>
          <db:P_ATTRIBUTE7>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute7"/>
          </db:P_ATTRIBUTE7>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute8 != ""'>
          <db:P_ATTRIBUTE8>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute8"/>
          </db:P_ATTRIBUTE8>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute9 != ""'>
          <db:P_ATTRIBUTE9>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute9"/>
          </db:P_ATTRIBUTE9>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute10 != ""'>
          <db:P_ATTRIBUTE10>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute10"/>
          </db:P_ATTRIBUTE10>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute11 != ""'>
          <db:P_ATTRIBUTE11>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute11"/>
          </db:P_ATTRIBUTE11>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute12 != ""'>
          <db:P_ATTRIBUTE12>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute12"/>
          </db:P_ATTRIBUTE12>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute13 != ""'>
          <db:P_ATTRIBUTE13>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute13"/>
          </db:P_ATTRIBUTE13>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute14 != ""'>
          <db:P_ATTRIBUTE14>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute14"/>
          </db:P_ATTRIBUTE14>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute15 != ""'>
          <db:P_ATTRIBUTE15>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute15"/>
          </db:P_ATTRIBUTE15>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute16 != ""'>
          <db:P_ATTRIBUTE16>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute16"/>
          </db:P_ATTRIBUTE16>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute17 != ""'>
          <db:P_ATTRIBUTE17>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute17"/>
          </db:P_ATTRIBUTE17>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute18 != ""'>
          <db:P_ATTRIBUTE18>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute18"/>
          </db:P_ATTRIBUTE18>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute19 != ""'>
          <db:P_ATTRIBUTE19>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute19"/>
          </db:P_ATTRIBUTE19>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute20 != ""'>
          <db:P_ATTRIBUTE20>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute20"/>
          </db:P_ATTRIBUTE20>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute21 != ""'>
          <db:P_ATTRIBUTE21>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute21"/>
          </db:P_ATTRIBUTE21>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute22 != ""'>
          <db:P_ATTRIBUTE22>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute22"/>
          </db:P_ATTRIBUTE22>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute23 != ""'>
          <db:P_ATTRIBUTE23>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute23"/>
          </db:P_ATTRIBUTE23>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute24 != ""'>
          <db:P_ATTRIBUTE24>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute24"/>
          </db:P_ATTRIBUTE24>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute25 != ""'>
          <db:P_ATTRIBUTE25>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute25"/>
          </db:P_ATTRIBUTE25>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute26 != ""'>
          <db:P_ATTRIBUTE26>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute26"/>
          </db:P_ATTRIBUTE26>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute27 != ""'>
          <db:P_ATTRIBUTE27>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute27"/>
          </db:P_ATTRIBUTE27>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute28 != ""'>
          <db:P_ATTRIBUTE28>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute28"/>
          </db:P_ATTRIBUTE28>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute29 != ""'>
          <db:P_ATTRIBUTE29>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute29"/>
          </db:P_ATTRIBUTE29>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute30 != ""'>
          <db:P_ATTRIBUTE30>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:MeterReadingRec/ns2:Attribute30"/>
          </db:P_ATTRIBUTE30>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:ValueBeforeReset != ""'>
          <db:P_VALUE_BEFORE_RESET>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:ValueBeforeReset"/>
          </db:P_VALUE_BEFORE_RESET>
        </xsl:if>
        <xsl:if test='/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:IgnoreWarnings != ""'>
          <db:P_IGNORE_WARNINGS>
            <xsl:value-of select="/eamm:CreateMeterReadingRequestMessage/eamm:ListOfMeterReading/ns2:MeterReading/ns2:IgnoreWarnings"/>
          </db:P_IGNORE_WARNINGS>
        </xsl:if>
      </db:InputParameters>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>