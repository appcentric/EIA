<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:ns0="http://xmlns.oracle.com/NUC_Ebiz_JDA_Batch_ABF/JDAPlanInvAssignmentsTransition/1.0"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ns1="http://schemas.oracle.com/service/bpel/common"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_InsertJDAPlanInvAsgmts"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns0 ns1 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:ns3="http://xmlns.oracle.com/pcbpel/adapter/ftp/1.1/NUC_JDA_Ebiz_BatchSchedule_ABF/FTP_GetTriggerFile"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/ftp/NextGen/NUC_JDA_EBiz_BatchSchedule_ABF/FTP_ReadPlan_Inv_Asgmts"
                xmlns:opaque="http://xmlns.oracle.com/pcbpel/adapter/opaque/"
                xmlns:ns4="http://xmlns.oracle.com/pcbpel/adapter/db/NextGen/NUC_JDA_EBiz_BatchSchedule_ABF/DB_InsertJDAPlanInvAsgmts">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FTP_ReadPlan_Inv_Asgmts.wsdl"/>
        <oracle-xsl-mapper:rootElement name="JDAPlanInvAssignmentsList"
                                       namespace="http://xmlns.oracle.com/NUC_Ebiz_JDA_Batch_ABF/JDAPlanInvAssignmentsTransition/1.0"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FTP_GetTriggerFile.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="gblParameters"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DB_InsertJDAPlanInvAsgmts.wsdl"/>
        <oracle-xsl-mapper:rootElement name="XxnucGmeJdaTrnInvStgCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_InsertJDAPlanInvAsgmts"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [TUE MAY 30 10:03:05 CDT 2017].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="gblParameters"/>
  <xsl:template match="/">
    <tns:XxnucGmeJdaTrnInvStgCollection>
      <xsl:for-each select="/ns0:JDAPlanInvAssignmentsList/ns0:JDAPlanInvAssignments">
        <tns:XxnucGmeJdaTrnInvStg>
          <tns:recordId>
            <xsl:value-of select='oraext:sequence-next-val ("xxnuc.XXNUC_GME_JDA_TRN_INV_S ", "jdbc/ebsapps" )'/>
          </tns:recordId>
 <tns:organizationId>
            <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/JDA_EBS_INSTANCE_ORG_RESOURCE_MAP.dvm", "Instance", $gblParameters/ns1:parameters/ns1:item/ns1:value, "Org_Id", "0" )'/>
          </tns:organizationId>
          <tns:resourceId>
            <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/JDA_EBS_INSTANCE_ORG_RESOURCE_MAP.dvm", "Instance", $gblParameters/ns1:parameters/ns1:item/ns1:value, "Resource", "0" )'/>
          </tns:resourceId>
          <tns:assignedPart>
            <xsl:value-of select="ns0:assigned_part"/>
          </tns:assignedPart>
          <tns:assignedQuantity>
            <xsl:value-of select="ns0:assigned_quantity"/>
          </tns:assignedQuantity>
          <tns:assignedQuantityFormat>
            <xsl:value-of select="ns0:assigned_quantity_format"/>
          </tns:assignedQuantityFormat>
          <tns:assignedQuantityUom>
            <xsl:value-of select="ns0:assigned_quantity_uom"/>
          </tns:assignedQuantityUom>
          <tns:demandOrMfgOrderId>
            <xsl:value-of select="ns0:demand_or_mfg_order_id"/>
          </tns:demandOrMfgOrderId>
          <tns:demandPst>
            <xsl:value-of select="ns0:demand_pst"/>
          </tns:demandPst>
          <tns:demandShipmentCode>
            <xsl:value-of select="ns0:demand_shipment_code"/>
          </tns:demandShipmentCode>
          <tns:formattedAssignedQuantity>
            <xsl:value-of select="ns0:formatted_assigned_quantity"/>
          </tns:formattedAssignedQuantity>
          <tns:formattedPrePotencyAssign>
            <xsl:value-of select="ns0:formatted_pre_potency_assigned_quantity"/>
          </tns:formattedPrePotencyAssign>
          <tns:operationId>
            <xsl:value-of select="ns0:operation_id"/>
          </tns:operationId>
          <tns:partNumberType>
            <xsl:value-of select="ns0:part_number_type"/>
          </tns:partNumberType>
          <tns:partSource>
            <xsl:value-of select="ns0:part_source"/>
          </tns:partSource>
          <tns:prePotencyAssignedQty>
            <xsl:value-of select="ns0:pre_potency_assigned_quantity"/>
          </tns:prePotencyAssignedQty>
          <tns:purchaseOrderId>
            <xsl:value-of select="ns0:purchase_order_id"/>
          </tns:purchaseOrderId>
          <tns:reservationLocked>
            <xsl:value-of select="ns0:reservation_locked"/>
          </tns:reservationLocked>
          <tns:stepNumber>
            <xsl:value-of select="ns0:step_number"/>
          </tns:stepNumber>
          <tns:supplyBoh>
            <xsl:value-of select="ns0:supply_boh"/>
          </tns:supplyBoh>
          <tns:supplyTimeNeeded>
            <xsl:value-of select="ns0:supply_time_needed"/>
          </tns:supplyTimeNeeded>
          <tns:timeAvailable>
            <xsl:value-of select="ns0:time_available"/>
          </tns:timeAvailable>
          <tns:timeAvailableFormat>
            <xsl:value-of select="ns0:time_available_format"/>
          </tns:timeAvailableFormat>
          <tns:timeNeeded>
            <xsl:value-of select="ns0:time_needed"/>
          </tns:timeNeeded>
          <tns:timeNeededFormat>
            <xsl:value-of select="ns0:time_needed_format"/>
          </tns:timeNeededFormat>
          <tns:timePreviouslyReserved>
            <xsl:value-of select="ns0:time_previously_reserved"/>
          </tns:timePreviouslyReserved>
          <tns:vendorP>
            <xsl:value-of select="ns0:vendor_p"/>
          </tns:vendorP>
        </tns:XxnucGmeJdaTrnInvStg>
      </xsl:for-each>
    </tns:XxnucGmeJdaTrnInvStgCollection>
  </xsl:template>
</xsl:stylesheet>
