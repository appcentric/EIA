<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:ns0="http://xmlns.eia.com/CommonLogging"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Cast_Batch_View"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/sp/DB_EBS_Cast_Heat"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 ns1 tns xp20 oraxsl mhdr oraext dvm xref utl socket"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/Manish/NSNE_CastBatch_L2_EBS_ABF/DB_Cast_Batch_View"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns3="http://xmlns.oracle.com/pcbpel/adapter/db/Manish/NSNE_CastBatch_L2_EBS_ABF/DB_EBS_Cast_Heat"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/">
  <oracle-xsl-mapper:schema>
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/Infrastracture/wsdls/V1.0/CommonLogging.wsdl"/>
        <oracle-xsl-mapper:rootElement name="Input" namespace="http://xmlns.eia.com/CommonLogging"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DB_Cast_Batch_View.wsdl"/>
        <oracle-xsl-mapper:rootElement name="vw_L2_Cast_Batch_HeaderCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Cast_Batch_View"/>
        <oracle-xsl-mapper:param name="g_Invoke_DB_Cast_Batch_View_OutputVariable.vw_L2_Cast_Batch_HeaderCollection"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DB_EBS_Cast_Heat.wsdl"/>
        <oracle-xsl-mapper:rootElement name="InputParameters"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/sp/DB_EBS_Cast_Heat"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
  </oracle-xsl-mapper:schema>
  <xsl:param name="g_Invoke_DB_Cast_Batch_View_OutputVariable.vw_L2_Cast_Batch_HeaderCollection"/>
  <xsl:template match="/">
    <tns:InputParameters>
      <tns:P_I_TRX_ID>
        <xsl:value-of select="/ns0:Input/ns0:TransactionId"/>
      </tns:P_I_TRX_ID>
      <tns:P_I_TRX_NAME>
        <xsl:value-of select="/ns0:Input/ns0:TransactionName"/>
      </tns:P_I_TRX_NAME>
      <tns:P_APPS_INIT>
        <tns:USER_NAME>SOAUSER</tns:USER_NAME>
        <tns:RESPONSIBILITY_NAME>
          <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_ORG_RESP_NAME.dvm", "DIVISION", "NSNE", "EBS_RESP_NAME", "Production Supervisor", "EBS_FUNCTION_AREA", "GME Batches" )'/>
        </tns:RESPONSIBILITY_NAME>
        <tns:ORG_ID>
          <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_ORG_RESP_NAME.dvm", "DIVISION", "NSNE", "EBS_ORG_ID", "82", "EBS_FUNCTION_AREA", "GME Batches" )'/>
        </tns:ORG_ID>
      </tns:P_APPS_INIT>
      <tns:P_CAST_INP>
        <xsl:for-each select="$g_Invoke_DB_Cast_Batch_View_OutputVariable.vw_L2_Cast_Batch_HeaderCollection/ns1:vw_L2_Cast_Batch_HeaderCollection/ns1:vw_L2_Cast_Batch_Header">
          <tns:P_CAST_INP_ITEM>
            <tns:HEAT_ID>
              <xsl:value-of select="ns1:HeatID"/>
            </tns:HEAT_ID>
            <tns:BATCH_REF_ID>
              <xsl:value-of select="ns1:OracleBatchID"/>
            </tns:BATCH_REF_ID>
            <tns:BATCH_START_DATE>
              <xsl:value-of select="ns1:StartTime"/>
            </tns:BATCH_START_DATE>
            <tns:BATCH_END_DATE>
              <xsl:value-of select="ns1:EndTime"/>
            </tns:BATCH_END_DATE>
            <tns:CAST_LOT_NUMBER>
              <xsl:value-of select="ns1:CastLot"/>
            </tns:CAST_LOT_NUMBER>
            <tns:LOT_WEIGHT>
              <xsl:value-of select="ns1:LotWeight"/>
            </tns:LOT_WEIGHT>
            <tns:PROD_CODE_IN>
              <xsl:value-of select="ns1:EBS_Product_Code"/>
            </tns:PROD_CODE_IN>
            <tns:HEAT_LOT>
              <xsl:value-of select="ns1:HeatLot"/>
            </tns:HEAT_LOT>
            <tns:CAST_DTLS>
              <xsl:for-each select="ns1:vw_L2_Cast_Batch_DetailCollection/ns1:vw_L2_Cast_Batch_Detail">
                <tns:CAST_DTLS_ITEM>
                  <tns:HEAT_ID>
                    <xsl:value-of select="../../ns1:HeatID"/>
                  </tns:HEAT_ID>
                  <tns:HEAT_NUMBER>
                    <xsl:value-of select="ns1:HeatNumber"/>
                  </tns:HEAT_NUMBER>
                  <tns:BATCH_REF_ID>
                    <xsl:value-of select="ns1:OracleBatchID"/>
                  </tns:BATCH_REF_ID>
                  <tns:CAST_LOT_NUMBER>
                    <xsl:value-of select="../../ns1:CastLot"/>
                  </tns:CAST_LOT_NUMBER>
                  <tns:CAST_LPN_NUMBER>
                    <xsl:value-of select="ns1:OracleLPN"/>
                  </tns:CAST_LPN_NUMBER>
                  <tns:STRAND_ID>
                    <xsl:value-of select="ns1:StrandID"/>
                  </tns:STRAND_ID>
                  <tns:HEAT_CUT_NUMBER>
                    <xsl:value-of select="ns1:HeatCutNumber"/>
                  </tns:HEAT_CUT_NUMBER>
                  <tns:ACTUAL_WEIGHT>
                    <xsl:value-of select="ns1:ActualWeight"/>
                  </tns:ACTUAL_WEIGHT>
                  <tns:ACTUAL_LENGTH>
                    <xsl:value-of select="ns1:ActualLength"/>
                  </tns:ACTUAL_LENGTH>
                  <tns:AIM_WEIGHT>
                    <xsl:value-of select="ns1:AimWeight"/>
                  </tns:AIM_WEIGHT>
                  <tns:AIM_LENGTH>
                    <xsl:value-of select="ns1:AimLength"/>
                  </tns:AIM_LENGTH>
                  <tns:GRADE_ID>
                    <xsl:value-of select="ns1:GradeID"/>
                  </tns:GRADE_ID>
                  <tns:HOT_INCHES>
                    <xsl:value-of select="ns1:HotInches"/>
                  </tns:HOT_INCHES>
                  <tns:CASTER_GRADE_NAME>
                    <xsl:value-of select="ns1:CasterGradeName"/>
                  </tns:CASTER_GRADE_NAME>
                  <tns:CAST_PRODUCT_ID>
                    <xsl:value-of select="ns1:ProductID"/>
                  </tns:CAST_PRODUCT_ID>
                  <tns:CAST_CREW_NAME>
                    <xsl:value-of select="ns1:CastCrew"/>
                  </tns:CAST_CREW_NAME>
                  <tns:CAST_SHIFT>
                    <xsl:value-of select="ns1:CastShift"/>
                  </tns:CAST_SHIFT>
                  <tns:PROD_TYPE>
                    <xsl:value-of select="ns1:Prod_Type"/>
                  </tns:PROD_TYPE>
                  <tns:PROD_SHAPE>
                    <xsl:value-of select="ns1:Prod_Shape"/>
                  </tns:PROD_SHAPE>
                  <tns:PROD_SIZE>
                    <xsl:value-of select="ns1:Prod_Size"/>
                  </tns:PROD_SIZE>
                  <tns:TRANSACTION_TIME>
                    <xsl:value-of select="ns1:TransactionTime"/>
                  </tns:TRANSACTION_TIME>
                </tns:CAST_DTLS_ITEM>
              </xsl:for-each>
            </tns:CAST_DTLS>
            <tns:CREW_NAME>
              <xsl:value-of select="ns1:CastCrew"/>
            </tns:CREW_NAME>
            <tns:CAST_SHIFT>
              <xsl:value-of select="ns1:CastShift"/>
            </tns:CAST_SHIFT>
            <tns:BILLET_ITEM_NUMBER>
              <xsl:value-of select="ns1:BilletItemNumber"/>
            </tns:BILLET_ITEM_NUMBER>
          </tns:P_CAST_INP_ITEM>
        </xsl:for-each>
      </tns:P_CAST_INP>
    </tns:InputParameters>
  </xsl:template>
</xsl:stylesheet>
