<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:ns0="http://xmlns.oracle.com/NUC_Ebiz_JDA_Batch_ABF/JDAPlanTransition/1.0"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_InsertJDAPlan"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ns1="http://schemas.oracle.com/service/bpel/common"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns0 ns1 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/ftp/NextGen/NUC_JDA_EBiz_BatchSchedule_ABF/FTP_ReadPlan"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:ns3="http://xmlns.oracle.com/pcbpel/adapter/ftp/1.1/NUC_JDA_Ebiz_BatchSchedule_ABF/FTP_GetTriggerFile"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:opaque="http://xmlns.oracle.com/pcbpel/adapter/opaque/"
                xmlns:ns4="http://xmlns.oracle.com/pcbpel/adapter/db/NextGen/NUC_JDA_EBiz_BatchSchedule_ABF/DB_InsertJDAPlan">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FTP_ReadPlan.wsdl"/>
        <oracle-xsl-mapper:rootElement name="PlanList"
                                       namespace="http://xmlns.oracle.com/NUC_Ebiz_JDA_Batch_ABF/JDAPlanTransition/1.0"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FTP_GetTriggerFile.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="gblParameters"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DB_InsertJDAPlan.wsdl"/>
        <oracle-xsl-mapper:rootElement name="XxnucGmeJdaTrnPlanStgCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_InsertJDAPlan"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [TUE MAY 30 15:15:52 CDT 2017].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="gblParameters"/>
  <xsl:template match="/">
    <tns:XxnucGmeJdaTrnPlanStgCollection>
      <xsl:for-each select="/ns0:PlanList/ns0:Plan">
        <tns:XxnucGmeJdaTrnPlanStg>
          <tns:recordId>
            <xsl:value-of select='oraext:sequence-next-val ("xxnuc.XXNUC_GME_JDA_TRN_PLAN_S", "jdbc/ebsapps" )'/>
          </tns:recordId>
          <tns:organizationId>
            <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/JDA_EBS_INSTANCE_ORG_RESOURCE_MAP.dvm", "Instance", $gblParameters/ns1:parameters/ns1:item/ns1:value, "Org_Id", "0" )'/>
          </tns:organizationId>
          <tns:resourceId>
            <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/JDA_EBS_INSTANCE_ORG_RESOURCE_MAP.dvm", "Instance", $gblParameters/ns1:parameters/ns1:item/ns1:value, "Resource", "0" )'/>
          </tns:resourceId>
          <tns:balCooldownTime>
            <xsl:value-of select="ns0:bal_cooldown_time"/>
          </tns:balCooldownTime>
          <tns:balCooldownTimeUom>
            <xsl:value-of select="ns0:bal_cooldown_time_uom"/>
          </tns:balCooldownTimeUom>
          <tns:balQueueTime>
            <xsl:value-of select="ns0:bal_queue_time"/>
          </tns:balQueueTime>
          <tns:balQueueTimeUom>
            <xsl:value-of select="ns0:bal_queue_time_uom"/>
          </tns:balQueueTimeUom>
          <tns:balTransportTime>
            <xsl:value-of select="ns0:bal_transport_time"/>
          </tns:balTransportTime>
          <tns:balTransportTimeUom>
            <xsl:value-of select="ns0:bal_transport_time_uom"/>
          </tns:balTransportTimeUom>
          <tns:caoPriority>
            <xsl:value-of select="normalize-space (ns0:cao_priority)"/>
          </tns:caoPriority>
          <tns:caoPriorityFormat>
            <xsl:value-of select="ns0:cao_priority_format"/>
          </tns:caoPriorityFormat>
          <tns:category>
            <xsl:value-of select="ns0:category"/>
          </tns:category>
          <tns:cest>
            <xsl:value-of select="ns0:cest"/>
          </tns:cest>
          <tns:cestFormat>
            <xsl:value-of select="ns0:cest_format"/>
          </tns:cestFormat>
          <tns:clst>
            <xsl:value-of select="ns0:clst"/>
          </tns:clst>
          <tns:clstFormat>
            <xsl:value-of select="ns0:clst_format"/>
          </tns:clstFormat>
          <tns:demandOrderId>
            <xsl:value-of select="ns0:demand_order_id"/>
          </tns:demandOrderId>
          <tns:epst>
            <xsl:value-of select="ns0:epst"/>
          </tns:epst>
          <tns:epstFormat>
            <xsl:value-of select="ns0:epst_format"/>
          </tns:epstFormat>
          <tns:formattedPlannedInputQty>
            <xsl:value-of select="ns0:formatted_planned_input_qty"/>
          </tns:formattedPlannedInputQty>
          <tns:formattedPlannedOutputQty>
            <xsl:value-of select="ns0:formatted_planned_output_qty"/>
          </tns:formattedPlannedOutputQty>
          <tns:formattedPlannedRuntime>
            <xsl:value-of select="ns0:formatted_planned_runtime"/>
          </tns:formattedPlannedRuntime>
          <tns:formattedStretchedRuntime>
            <xsl:value-of select="ns0:formatted_stretched_runtime"/>
          </tns:formattedStretchedRuntime>
          <tns:lockCount>
            <xsl:value-of select="ns0:lock_count"/>
          </tns:lockCount>
          <tns:lpst>
            <xsl:value-of select="ns0:lpst"/>
          </tns:lpst>
          <tns:lpstFormat>
            <xsl:value-of select="ns0:lpst_format"/>
          </tns:lpstFormat>
          <tns:mfgOrderId>
            <xsl:value-of select="ns0:mfg_order_id"/>
          </tns:mfgOrderId>
          <tns:numOperators>
            <xsl:value-of select="ns0:num_operators"/>
          </tns:numOperators>
          <tns:operationId>
            <xsl:value-of select="ns0:operation_id"/>
          </tns:operationId>
          <tns:operators>
            <xsl:value-of select="ns0:operators"/>
          </tns:operators>
          <tns:plannedEndTime>
            <xsl:value-of select="ns0:planned_end_time"/>
          </tns:plannedEndTime>
          <tns:plannedEndTimeFormat>
            <xsl:value-of select="ns0:planned_end_time_format"/>
          </tns:plannedEndTimeFormat>
          <tns:plannedEndTimeSec>
            <xsl:value-of select="ns0:planned_end_time_sec"/>
          </tns:plannedEndTimeSec>
          <tns:plannedInputQty>
            <xsl:value-of select="ns0:planned_input_qty"/>
          </tns:plannedInputQty>
          <tns:plannedInputQtyUom>
            <xsl:value-of select="ns0:planned_input_qty_uom"/>
          </tns:plannedInputQtyUom>
          <tns:plannedOutputQty>
            <xsl:value-of select="ns0:planned_output_qty"/>
          </tns:plannedOutputQty>
          <tns:plannedOutputQtyUom>
            <xsl:value-of select="ns0:planned_output_qty_uom"/>
          </tns:plannedOutputQtyUom>
          <tns:plannedRuntime>
            <xsl:value-of select="ns0:planned_runtime"/>
          </tns:plannedRuntime>
          <tns:plannedRuntimeFormat>
            <xsl:value-of select="ns0:planned_runtime_format"/>
          </tns:plannedRuntimeFormat>
          <tns:plannedRuntimeUom>
            <xsl:value-of select="ns0:planned_runtime_uom"/>
          </tns:plannedRuntimeUom>
          <tns:plannedStartTime>
            <xsl:value-of select="ns0:planned_start_time"/>
          </tns:plannedStartTime>
          <tns:plannedStartTimeFormat>
            <xsl:value-of select="ns0:planned_start_time_format"/>
          </tns:plannedStartTimeFormat>
          <tns:plannedStartTimeSec>
            <xsl:value-of select="ns0:planned_start_time_sec"/>
          </tns:plannedStartTimeSec>
          <tns:plannedTransitReadyTime>
            <xsl:value-of select="ns0:planned_transit_ready_time"/>
          </tns:plannedTransitReadyTime>
          <tns:plannedTransitReadyTimeF>
            <xsl:value-of select="ns0:planned_transit_ready_time_format"/>
          </tns:plannedTransitReadyTimeF>
          <tns:primaryOutputPart>
            <xsl:value-of select="ns0:primary_output_part"/>
          </tns:primaryOutputPart>
          <tns:primaryResource>
            <xsl:value-of select="ns0:primary_resource"/>
          </tns:primaryResource>
          <tns:priority>
            <xsl:value-of select="ns0:priority"/>
          </tns:priority>
          <tns:qtyFormat>
            <xsl:value-of select="ns0:qty_format"/>
          </tns:qtyFormat>
          <tns:remainingPulls>
            <xsl:value-of select="ns0:remaining_pulls"/>
          </tns:remainingPulls>
          <tns:remainingPushes>
            <xsl:value-of select="ns0:remaining_pushes"/>
          </tns:remainingPushes>
          <tns:scheduleTaskPriority>
            <xsl:value-of select="ns0:schedule_task_priority"/>
          </tns:scheduleTaskPriority>
          <tns:stepNumber>
            <xsl:value-of select="ns0:step_number"/>
          </tns:stepNumber>
          <tns:stretchedRuntime>
            <xsl:value-of select="ns0:stretched_runtime"/>
          </tns:stretchedRuntime>
          <tns:stretchedRuntimeFormat>
            <xsl:value-of select="ns0:stretched_runtime_format"/>
          </tns:stretchedRuntimeFormat>
          <tns:taskPriority>
            <xsl:value-of select="ns0:task_priority"/>
          </tns:taskPriority>
        </tns:XxnucGmeJdaTrnPlanStg>
      </xsl:for-each>
    </tns:XxnucGmeJdaTrnPlanStgCollection>
  </xsl:template>
</xsl:stylesheet>