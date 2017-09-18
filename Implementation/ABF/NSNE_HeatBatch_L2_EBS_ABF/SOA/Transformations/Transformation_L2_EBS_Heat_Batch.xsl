<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:ns0="http://xmlns.eia.com/CommonLogging"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Heat_Batch_View"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/sp/DB_EBS_Heat_Batch"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 ns1 tns xp20 oraxsl mhdr oraext dvm xref utl socket"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/Manish/NSNE_HeatBatch_L2_EBS_ABF/DB_Heat_Batch_View"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns3="http://xmlns.oracle.com/pcbpel/adapter/db/Manish/NSNE_HeatBatch_L2_EBS_ABF/DB_EBS_Heat_Batch"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/">
  <oracle-xsl-mapper:schema>
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/Infrastracture/wsdls/V1.0/CommonLogging.wsdl"/>
        <oracle-xsl-mapper:rootElement name="Input" namespace="http://xmlns.eia.com/CommonLogging"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DB_Heat_Batch_View.wsdl"/>
        <oracle-xsl-mapper:rootElement name="vw_L2_Heat_Batch_UpdateCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Heat_Batch_View"/>
        <oracle-xsl-mapper:param name="g_Invoke_DB_Heat_Batch_View_OutputVariable.vw_L2_Heat_Batch_UpdateCollection"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DB_EBS_Heat_Batch.wsdl"/>
        <oracle-xsl-mapper:rootElement name="InputParameters"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/sp/DB_EBS_Heat_Batch"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
  </oracle-xsl-mapper:schema>
  <xsl:param name="g_Invoke_DB_Heat_Batch_View_OutputVariable.vw_L2_Heat_Batch_UpdateCollection"/>
  <xsl:template match="/">
    <tns:InputParameters>
      <tns:P_I_TRX_ID>
        <xsl:value-of select="/ns0:Input/ns0:TransactionId"/>
      </tns:P_I_TRX_ID>
      <tns:P_I_TRX_NAME>
        <xsl:value-of select="/ns0:Input/ns0:TransactionName"/>
      </tns:P_I_TRX_NAME>
      <tns:P_I_SRC_SYSTEM>
        <xsl:value-of select="/ns0:Input/ns0:SourceSystem"/>
      </tns:P_I_SRC_SYSTEM>
      <tns:P_APPS_INIT>
        <tns:USER_NAME>SOAUSER</tns:USER_NAME>
        <tns:RESPONSIBILITY_NAME>
          <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_ORG_RESP_NAME.dvm", "DIVISION", "NSNE", "EBS_RESP_NAME", "Production Supervisor", "EBS_FUNCTION_AREA", "GME Batches" )'/>
        </tns:RESPONSIBILITY_NAME>
        <tns:ORG_ID>
          <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_ORG_RESP_NAME.dvm", "DIVISION", "NSNE", "EBS_ORG_ID", "82", "EBS_FUNCTION_AREA", "GME Batches" )'/>
        </tns:ORG_ID>
      </tns:P_APPS_INIT>
      <tns:P_HEAT_INP>
        <xsl:for-each select="$g_Invoke_DB_Heat_Batch_View_OutputVariable.vw_L2_Heat_Batch_UpdateCollection/ns1:vw_L2_Heat_Batch_UpdateCollection/ns1:vw_L2_Heat_Batch_Update">
          <tns:P_HEAT_INP_ITEM>
            <tns:HEAT_ID>
              <xsl:value-of select="ns1:HeatID"/>
            </tns:HEAT_ID>
            <tns:HEAT_NUMBER>
              <xsl:value-of select="ns1:HeatNumber"/>
            </tns:HEAT_NUMBER>
            <tns:BATCH_REF_ID>
              <xsl:value-of select="ns1:OracleBatchID"/>
            </tns:BATCH_REF_ID>
            <tns:BATCH_START_DATE>
              <xsl:value-of select="ns1:HeatStarttime"/>
            </tns:BATCH_START_DATE>
            <tns:BATCH_END_DATE>
              <xsl:value-of select="ns1:HeatEndTime"/>
            </tns:BATCH_END_DATE>
            <tns:PROD_CODE>
              <xsl:value-of select="ns1:EbsProductCode"/>
            </tns:PROD_CODE>
            <tns:HEAT_LOT_NUMBER>
              <xsl:value-of select="ns1:HeatLot"/>
            </tns:HEAT_LOT_NUMBER>
            <tns:TRX_QTY>
              <!--100-->
              <xsl:value-of select="ns1:LotWeight"/>
            </tns:TRX_QTY>
            <tns:TRX_UOM_CODE>LBS</tns:TRX_UOM_CODE>
            <!--tns:TRX_UOM_CODE>TON</tns:TRX_UOM_CODE-->
            <tns:HEAT_ALLOYS>
              <xsl:for-each select="ns1:vw_L2_Heat_Alloy_AdditionsCollection/ns1:vw_L2_Heat_Alloy_Additions">
                <tns:HEAT_ALLOYS_ITEM>
                  <tns:L2ALLOYNAME>
                    <xsl:value-of select="ns1:L2AlloyName"/>
                  </tns:L2ALLOYNAME>
                  <tns:TRX_QTY>
                    <xsl:value-of select="ns1:AddAmount"/>
                  </tns:TRX_QTY>
                  <tns:TRX_UOM_CODE>LBS</tns:TRX_UOM_CODE>
                  <tns:ADDTYPE>
                    <xsl:value-of select="ns1:AddType"/>
                  </tns:ADDTYPE>
                  <tns:ADDID>
                    <xsl:value-of select="ns1:AddID"/>
                  </tns:ADDID>
                  <tns:ITEM_NUM>
                    <xsl:value-of select="ns1:Oracle_Code"/>
                  </tns:ITEM_NUM>
                </tns:HEAT_ALLOYS_ITEM>
              </xsl:for-each>
            </tns:HEAT_ALLOYS>
            <tns:CREW_NAME>
              <xsl:value-of select="ns1:CrewName"/>
            </tns:CREW_NAME>
            <tns:HEAT_SHIFT>
              <xsl:value-of select="ns1:HeatShift"/>
            </tns:HEAT_SHIFT>
          </tns:P_HEAT_INP_ITEM>
        </xsl:for-each>
      </tns:P_HEAT_INP>
    </tns:InputParameters>
  </xsl:template>
</xsl:stylesheet>
