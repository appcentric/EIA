<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns0="http://xmlns.eia.com/AO/Ebiz/D2S/QualityResultsAM/1.0"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:ns1="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns2="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns5="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns8="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns6="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:ns3="http://xmlns.eia.com/AO/Ebiz/D2S/QualityResultsAO/1.0"
                xmlns:ns4="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:client="http:/xmlns.eia.com/Implementation/ABS/NUC_NUC_EBizQualityResults_ABS/QualityResults/1.0"
                xmlns:ns7="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/D2S/QualityResults.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryQAResultsByBolNoRs"
                                       namespace="http://xmlns.eia.com/AO/Ebiz/D2S/QualityResultsAM/1.0"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/D2S/QualityResults.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryQAResultsByBolNoRs"
                                       namespace="http://xmlns.eia.com/AO/Ebiz/D2S/QualityResultsAM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [MON MAY 09 07:41:08 CDT 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <ns0:QueryQAResultsByBolNoRs>
      <ns8:HeaderRs>
        <ns8:RequestDetails>
          <ns8:TransactionRequestID>
            <xsl:value-of select="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:TransactionRequestID"/>
          </ns8:TransactionRequestID>
          <ns8:Language>
            <xsl:value-of select="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:Language"/>
          </ns8:Language>
          <ns8:ComponentID>
            <xsl:value-of select="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:ComponentID"/>
          </ns8:ComponentID>
          <ns8:ServiceName>
            <xsl:value-of select="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:ServiceName"/>
          </ns8:ServiceName>
          <xsl:if test="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:TransactionIDREF">
            <ns8:TransactionIDREF>
              <xsl:value-of select="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:TransactionIDREF"/>
            </ns8:TransactionIDREF>
          </xsl:if>
          <xsl:if test="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:TransactionName">
            <ns8:TransactionName>
              <xsl:value-of select="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:TransactionName"/>
            </ns8:TransactionName>
          </xsl:if>
          <xsl:if test="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:FileName">
            <ns8:FileName>
              <xsl:value-of select="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:FileName"/>
            </ns8:FileName>
          </xsl:if>
          <xsl:if test="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:FileInstanceID">
            <ns8:FileInstanceID>
              <xsl:value-of select="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:FileInstanceID"/>
            </ns8:FileInstanceID>
          </xsl:if>
          <xsl:if test="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:Source">
            <ns8:Source>
              <xsl:value-of select="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:Source"/>
            </ns8:Source>
          </xsl:if>
          <xsl:if test="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:Target">
            <ns8:Target>
              <xsl:value-of select="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:Target"/>
            </ns8:Target>
          </xsl:if>
          <xsl:if test="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:HostName">
            <ns8:HostName>
              <xsl:value-of select="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:HostName"/>
            </ns8:HostName>
          </xsl:if>
          <xsl:if test="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:UserName">
            <ns8:UserName>
              <xsl:value-of select="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:UserName"/>
            </ns8:UserName>
          </xsl:if>
          <xsl:if test="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:UserRole">
            <ns8:UserRole>
              <xsl:value-of select="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:UserRole"/>
            </ns8:UserRole>
          </xsl:if>
          <xsl:if test="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:AdminEmail">
            <ns8:AdminEmail>
              <xsl:value-of select="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:AdminEmail"/>
            </ns8:AdminEmail>
          </xsl:if>
          <xsl:if test="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:ApplicationResponsibility">
            <ns8:ApplicationResponsibility>
              <xsl:value-of select="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:ApplicationResponsibility"/>
            </ns8:ApplicationResponsibility>
          </xsl:if>
          <xsl:if test="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:EOFFlag">
            <ns8:EOFFlag>
              <xsl:value-of select="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:EOFFlag"/>
            </ns8:EOFFlag>
          </xsl:if>
          <xsl:if test="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:SOFFlag">
            <ns8:SOFFlag>
              <xsl:value-of select="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:SOFFlag"/>
            </ns8:SOFFlag>
          </xsl:if>
          <xsl:if test="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:FileRecordCount">
            <ns8:FileRecordCount>
              <xsl:value-of select="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:FileRecordCount"/>
            </ns8:FileRecordCount>
          </xsl:if>
          <xsl:if test="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:TimeStamp">
            <ns8:TimeStamp>
              <xsl:value-of select="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:TimeStamp"/>
            </ns8:TimeStamp>
          </xsl:if>
          <xsl:if test="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:MillName">
            <ns8:MillName>
              <xsl:value-of select="/ns0:QueryQAResultsByBolNoRs/ns8:HeaderRs/ns8:RequestDetails/ns8:MillName"/>
            </ns8:MillName>
          </xsl:if>
        </ns8:RequestDetails>
      </ns8:HeaderRs>
      <ns3:GmdResultsPub>
        <xsl:for-each select="/ns0:QueryQAResultsByBolNoRs/ns3:GmdResultsPub/ns3:GmdResultPub">
          <ns3:GmdResultPub>
            <xsl:if test="ns3:TxnID">
              <ns3:TxnID>
                <xsl:value-of select="ns3:TxnID"/>
              </ns3:TxnID>
            </xsl:if>
            <xsl:if test="ns3:record_source">
              <ns3:record_source>
                <xsl:value-of select="ns3:record_source"/>
              </ns3:record_source>
            </xsl:if>
            <xsl:if test="ns3:SampleId">
              <ns3:SampleId>
                <xsl:value-of select="ns3:SampleId"/>
              </ns3:SampleId>
            </xsl:if>
            <xsl:if test="ns3:SampleNo">
              <ns3:SampleNo>
                <xsl:value-of select="ns3:SampleNo"/>
              </ns3:SampleNo>
            </xsl:if>
            <xsl:if test="ns3:OrganizationId">
              <ns3:OrganizationId>
                <xsl:value-of select="ns3:OrganizationId"/>
              </ns3:OrganizationId>
            </xsl:if>
            <xsl:if test="ns3:LabOrganizationId">
              <ns3:LabOrganizationId>
                <xsl:value-of select="ns3:LabOrganizationId"/>
              </ns3:LabOrganizationId>
            </xsl:if>
            <xsl:if test="ns3:LabOrganizationCode">
              <ns3:LabOrganizationCode>
                <xsl:value-of select="ns3:LabOrganizationCode"/>
              </ns3:LabOrganizationCode>
            </xsl:if>
            <xsl:if test="ns3:OrganizationCode">
              <ns3:OrganizationCode>
                <xsl:value-of select="ns3:OrganizationCode"/>
              </ns3:OrganizationCode>
            </xsl:if>
            <xsl:if test="ns3:MillDUNS">
              <ns3:MillDUNS>
                <xsl:value-of select="ns3:MillDUNS"/>
              </ns3:MillDUNS>
            </xsl:if>
            <xsl:if test="ns3:MeltCountry">
              <ns3:MeltCountry>
                <xsl:value-of select="ns3:MeltCountry"/>
              </ns3:MeltCountry>
            </xsl:if>
            <xsl:if test="ns3:RollCountry">
              <ns3:RollCountry>
                <xsl:value-of select="ns3:RollCountry"/>
              </ns3:RollCountry>
            </xsl:if>
            <xsl:if test="ns3:GrainPractice">
              <ns3:GrainPractice>
                <xsl:value-of select="ns3:GrainPractice"/>
              </ns3:GrainPractice>
            </xsl:if>
            <xsl:if test="ns3:SampleSource">
              <ns3:SampleSource>
                <xsl:value-of select="ns3:SampleSource"/>
              </ns3:SampleSource>
            </xsl:if>
            <xsl:if test="ns3:item_id">
              <ns3:item_id>
                <xsl:value-of select="ns3:item_id"/>
              </ns3:item_id>
            </xsl:if>
            <xsl:if test="ns3:item_no">
              <ns3:item_no>
                <xsl:value-of select="ns3:item_no"/>
              </ns3:item_no>
            </xsl:if>
            <xsl:if test="ns3:BatchID">
              <ns3:BatchID>
                <xsl:value-of select="ns3:BatchID"/>
              </ns3:BatchID>
            </xsl:if>
            <xsl:if test="ns3:BatchNO">
              <ns3:BatchNO>
                <xsl:value-of select="ns3:BatchNO"/>
              </ns3:BatchNO>
            </xsl:if>
            <xsl:if test="ns3:StepID">
              <ns3:StepID>
                <xsl:value-of select="ns3:StepID"/>
              </ns3:StepID>
            </xsl:if>
            <xsl:if test="ns3:StepNO">
              <ns3:StepNO>
                <xsl:value-of select="ns3:StepNO"/>
              </ns3:StepNO>
            </xsl:if>
            <xsl:if test="ns3:Charge">
              <ns3:Charge>
                <xsl:value-of select="ns3:Charge"/>
              </ns3:Charge>
            </xsl:if>
            <xsl:if test="ns3:SourceSubInventory">
              <ns3:SourceSubInventory>
                <xsl:value-of select="ns3:SourceSubInventory"/>
              </ns3:SourceSubInventory>
            </xsl:if>
            <xsl:if test="ns3:WIPParentLot">
              <ns3:WIPParentLot>
                <xsl:value-of select="ns3:WIPParentLot"/>
              </ns3:WIPParentLot>
            </xsl:if>
            <xsl:if test="ns3:ReceipeNO">
              <ns3:ReceipeNO>
                <xsl:value-of select="ns3:ReceipeNO"/>
              </ns3:ReceipeNO>
            </xsl:if>
            <xsl:if test="ns3:receipeID">
              <ns3:receipeID>
                <xsl:value-of select="ns3:receipeID"/>
              </ns3:receipeID>
            </xsl:if>
            <xsl:if test="ns3:ParentLotNO">
              <ns3:ParentLotNO>
                <xsl:value-of select="ns3:ParentLotNO"/>
              </ns3:ParentLotNO>
            </xsl:if>
            <xsl:if test="ns3:LotNo">
              <ns3:LotNo>
                <xsl:value-of select="ns3:LotNo"/>
              </ns3:LotNo>
            </xsl:if>
            <xsl:if test="ns3:FormulaNO">
              <ns3:FormulaNO>
                <xsl:value-of select="ns3:FormulaNO"/>
              </ns3:FormulaNO>
            </xsl:if>
            <xsl:if test="ns3:FormulaID">
              <ns3:FormulaID>
                <xsl:value-of select="ns3:FormulaID"/>
              </ns3:FormulaID>
            </xsl:if>
            <xsl:if test="ns3:RoutingNO">
              <ns3:RoutingNO>
                <xsl:value-of select="ns3:RoutingNO"/>
              </ns3:RoutingNO>
            </xsl:if>
            <xsl:if test="ns3:RoutingID">
              <ns3:RoutingID>
                <xsl:value-of select="ns3:RoutingID"/>
              </ns3:RoutingID>
            </xsl:if>
            <xsl:if test="ns3:OprnNO">
              <ns3:OprnNO>
                <xsl:value-of select="ns3:OprnNO"/>
              </ns3:OprnNO>
            </xsl:if>
            <xsl:if test="ns3:OprnID">
              <ns3:OprnID>
                <xsl:value-of select="ns3:OprnID"/>
              </ns3:OprnID>
            </xsl:if>
            <xsl:if test="ns3:LpnNO">
              <ns3:LpnNO>
                <xsl:value-of select="ns3:LpnNO"/>
              </ns3:LpnNO>
            </xsl:if>
            <xsl:if test="ns3:LpnID">
              <ns3:LpnID>
                <xsl:value-of select="ns3:LpnID"/>
              </ns3:LpnID>
            </xsl:if>
            <xsl:if test="ns3:RetainAS">
              <ns3:RetainAS>
                <xsl:value-of select="ns3:RetainAS"/>
              </ns3:RetainAS>
            </xsl:if>
            <xsl:if test="ns3:revision">
              <ns3:revision>
                <xsl:value-of select="ns3:revision"/>
              </ns3:revision>
            </xsl:if>
            <xsl:if test="ns3:Priority">
              <ns3:Priority>
                <xsl:value-of select="ns3:Priority"/>
              </ns3:Priority>
            </xsl:if>
            <xsl:if test="ns3:SampleQTY">
              <ns3:SampleQTY>
                <xsl:value-of select="ns3:SampleQTY"/>
              </ns3:SampleQTY>
            </xsl:if>
            <xsl:if test="ns3:RemainingQTY">
              <ns3:RemainingQTY>
                <xsl:value-of select="ns3:RemainingQTY"/>
              </ns3:RemainingQTY>
            </xsl:if>
            <xsl:if test="ns3:SampleQtyUOM">
              <ns3:SampleQtyUOM>
                <xsl:value-of select="ns3:SampleQtyUOM"/>
              </ns3:SampleQtyUOM>
            </xsl:if>
            <xsl:if test="ns3:SampleQtyUnitOfMeasure">
              <ns3:SampleQtyUnitOfMeasure>
                <xsl:value-of select="ns3:SampleQtyUnitOfMeasure"/>
              </ns3:SampleQtyUnitOfMeasure>
            </xsl:if>
            <xsl:if test="ns3:dateDrawn">
              <ns3:dateDrawn>
                <xsl:value-of select="ns3:dateDrawn"/>
              </ns3:dateDrawn>
            </xsl:if>
            <xsl:if test="ns3:RetrievalDate">
              <ns3:RetrievalDate>
                <xsl:value-of select="ns3:RetrievalDate"/>
              </ns3:RetrievalDate>
            </xsl:if>
            <xsl:if test="ns3:dateReceived">
              <ns3:dateReceived>
                <xsl:value-of select="ns3:dateReceived"/>
              </ns3:dateReceived>
            </xsl:if>
            <xsl:if test="ns3:DateRequired">
              <ns3:DateRequired>
                <xsl:value-of select="ns3:DateRequired"/>
              </ns3:DateRequired>
            </xsl:if>
            <xsl:if test="ns3:ExpirationDate">
              <ns3:ExpirationDate>
                <xsl:value-of select="ns3:ExpirationDate"/>
              </ns3:ExpirationDate>
            </xsl:if>
            <xsl:if test="ns3:SampleInstance">
              <ns3:SampleInstance>
                <xsl:value-of select="ns3:SampleInstance"/>
              </ns3:SampleInstance>
            </xsl:if>
            <xsl:if test="ns3:ExternalID">
              <ns3:ExternalID>
                <xsl:value-of select="ns3:ExternalID"/>
              </ns3:ExternalID>
            </xsl:if>
            <xsl:if test="ns3:StorageOrganizationCode">
              <ns3:StorageOrganizationCode>
                <xsl:value-of select="ns3:StorageOrganizationCode"/>
              </ns3:StorageOrganizationCode>
            </xsl:if>
            <xsl:if test="ns3:StorageOrganizationID">
              <ns3:StorageOrganizationID>
                <xsl:value-of select="ns3:StorageOrganizationID"/>
              </ns3:StorageOrganizationID>
            </xsl:if>
            <xsl:if test="ns3:StorageSubInventory">
              <ns3:StorageSubInventory>
                <xsl:value-of select="ns3:StorageSubInventory"/>
              </ns3:StorageSubInventory>
            </xsl:if>
            <xsl:if test="ns3:Sampler">
              <ns3:Sampler>
                <xsl:value-of select="ns3:Sampler"/>
              </ns3:Sampler>
            </xsl:if>
            <xsl:if test="ns3:SamplerID">
              <ns3:SamplerID>
                <xsl:value-of select="ns3:SamplerID"/>
              </ns3:SamplerID>
            </xsl:if>
            <xsl:if test="ns3:SampleApprover">
              <ns3:SampleApprover>
                <xsl:value-of select="ns3:SampleApprover"/>
              </ns3:SampleApprover>
            </xsl:if>
            <xsl:if test="ns3:SampleApproverID">
              <ns3:SampleApproverID>
                <xsl:value-of select="ns3:SampleApproverID"/>
              </ns3:SampleApproverID>
            </xsl:if>
            <xsl:if test="ns3:InvApprover">
              <ns3:InvApprover>
                <xsl:value-of select="ns3:InvApprover"/>
              </ns3:InvApprover>
            </xsl:if>
            <xsl:if test="ns3:InvApproverID">
              <ns3:InvApproverID>
                <xsl:value-of select="ns3:InvApproverID"/>
              </ns3:InvApproverID>
            </xsl:if>
            <xsl:if test="ns3:SourceComment">
              <ns3:SourceComment>
                <xsl:value-of select="ns3:SourceComment"/>
              </ns3:SourceComment>
            </xsl:if>
            <xsl:if test="ns3:CustomerName">
              <ns3:CustomerName>
                <xsl:value-of select="ns3:CustomerName"/>
              </ns3:CustomerName>
            </xsl:if>
            <xsl:if test="ns3:CustID">
              <ns3:CustID>
                <xsl:value-of select="ns3:CustID"/>
              </ns3:CustID>
            </xsl:if>
            <xsl:if test="ns3:OperatingUnit">
              <ns3:OperatingUnit>
                <xsl:value-of select="ns3:OperatingUnit"/>
              </ns3:OperatingUnit>
            </xsl:if>
            <xsl:if test="ns3:OrgID">
              <ns3:OrgID>
                <xsl:value-of select="ns3:OrgID"/>
              </ns3:OrgID>
            </xsl:if>
            <xsl:if test="ns3:ShipToName">
              <ns3:ShipToName>
                <xsl:value-of select="ns3:ShipToName"/>
              </ns3:ShipToName>
            </xsl:if>
            <xsl:if test="ns3:ShipToSiteID">
              <ns3:ShipToSiteID>
                <xsl:value-of select="ns3:ShipToSiteID"/>
              </ns3:ShipToSiteID>
            </xsl:if>
            <xsl:if test="ns3:OrderNo">
              <ns3:OrderNo>
                <xsl:value-of select="ns3:OrderNo"/>
              </ns3:OrderNo>
            </xsl:if>
            <xsl:if test="ns3:OrderID">
              <ns3:OrderID>
                <xsl:value-of select="ns3:OrderID"/>
              </ns3:OrderID>
            </xsl:if>
            <xsl:if test="ns3:OrderLineNO">
              <ns3:OrderLineNO>
                <xsl:value-of select="ns3:OrderLineNO"/>
              </ns3:OrderLineNO>
            </xsl:if>
            <xsl:if test="ns3:OrderLineID">
              <ns3:OrderLineID>
                <xsl:value-of select="ns3:OrderLineID"/>
              </ns3:OrderLineID>
            </xsl:if>
            <xsl:if test="ns3:SubInventory">
              <ns3:SubInventory>
                <xsl:value-of select="ns3:SubInventory"/>
              </ns3:SubInventory>
            </xsl:if>
            <xsl:if test="ns3:SupplierName">
              <ns3:SupplierName>
                <xsl:value-of select="ns3:SupplierName"/>
              </ns3:SupplierName>
            </xsl:if>
            <xsl:if test="ns3:SupplierID">
              <ns3:SupplierID>
                <xsl:value-of select="ns3:SupplierID"/>
              </ns3:SupplierID>
            </xsl:if>
            <xsl:if test="ns3:SupplierSite">
              <ns3:SupplierSite>
                <xsl:value-of select="ns3:SupplierSite"/>
              </ns3:SupplierSite>
            </xsl:if>
            <xsl:if test="ns3:SupplierSiteID">
              <ns3:SupplierSiteID>
                <xsl:value-of select="ns3:SupplierSiteID"/>
              </ns3:SupplierSiteID>
            </xsl:if>
            <xsl:if test="ns3:SupplierLotNO">
              <ns3:SupplierLotNO>
                <xsl:value-of select="ns3:SupplierLotNO"/>
              </ns3:SupplierLotNO>
            </xsl:if>
            <xsl:if test="ns3:PoNumber">
              <ns3:PoNumber>
                <xsl:value-of select="ns3:PoNumber"/>
              </ns3:PoNumber>
            </xsl:if>
            <xsl:if test="ns3:PoHeaderID">
              <ns3:PoHeaderID>
                <xsl:value-of select="ns3:PoHeaderID"/>
              </ns3:PoHeaderID>
            </xsl:if>
            <xsl:if test="ns3:PoLineNO">
              <ns3:PoLineNO>
                <xsl:value-of select="ns3:PoLineNO"/>
              </ns3:PoLineNO>
            </xsl:if>
            <xsl:if test="ns3:PoLineID">
              <ns3:PoLineID>
                <xsl:value-of select="ns3:PoLineID"/>
              </ns3:PoLineID>
            </xsl:if>
            <xsl:if test="ns3:ReceiptNO">
              <ns3:ReceiptNO>
                <xsl:value-of select="ns3:ReceiptNO"/>
              </ns3:ReceiptNO>
            </xsl:if>
            <xsl:if test="ns3:ReceiptID">
              <ns3:ReceiptID>
                <xsl:value-of select="ns3:ReceiptID"/>
              </ns3:ReceiptID>
            </xsl:if>
            <xsl:if test="ns3:ReceiptLineNO">
              <ns3:ReceiptLineNO>
                <xsl:value-of select="ns3:ReceiptLineNO"/>
              </ns3:ReceiptLineNO>
            </xsl:if>
            <xsl:if test="ns3:ReceiptLineID">
              <ns3:ReceiptLineID>
                <xsl:value-of select="ns3:ReceiptLineID"/>
              </ns3:ReceiptLineID>
            </xsl:if>
            <xsl:if test="ns3:disposition_status">
              <ns3:disposition_status>
                <xsl:value-of select="ns3:disposition_status"/>
              </ns3:disposition_status>
            </xsl:if>
            <xsl:if test="ns3:BolNo">
              <ns3:BolNo>
                <xsl:value-of select="ns3:BolNo"/>
              </ns3:BolNo>
            </xsl:if>
            <xsl:if test="ns3:SampleDesc">
              <ns3:SampleDesc>
                <xsl:value-of select="ns3:SampleDesc"/>
              </ns3:SampleDesc>
            </xsl:if>
            <xsl:if test="ns3:RollDate">
              <ns3:RollDate>
                <xsl:value-of select="ns3:RollDate"/>
              </ns3:RollDate>
            </xsl:if>
            <xsl:if test="ns3:CustNo">
              <ns3:CustNo>
                <xsl:value-of select="ns3:CustNo"/>
              </ns3:CustNo>
            </xsl:if>
            <xsl:if test="ns3:SalesOfc">
              <ns3:SalesOfc>
                <xsl:value-of select="ns3:SalesOfc"/>
              </ns3:SalesOfc>
            </xsl:if>
            <xsl:if test="ns3:SizeH">
              <ns3:SizeH>
                <xsl:value-of select="ns3:SizeH"/>
              </ns3:SizeH>
            </xsl:if>
            <xsl:if test="ns3:SalesDiv">
              <ns3:SalesDiv>
                <xsl:value-of select="ns3:SalesDiv"/>
              </ns3:SalesDiv>
            </xsl:if>
            <xsl:if test="ns3:TestResultsMill">
              <ns3:TestResultsMill>
                <xsl:value-of select="ns3:TestResultsMill"/>
              </ns3:TestResultsMill>
            </xsl:if>
            <xsl:if test="ns3:NumSize">
              <ns3:NumSize>
                <xsl:value-of select="ns3:NumSize"/>
              </ns3:NumSize>
            </xsl:if>
            <xsl:if test="ns3:FlatSize">
              <ns3:FlatSize>
                <xsl:value-of select="ns3:FlatSize"/>
              </ns3:FlatSize>
            </xsl:if>
            <xsl:if test="ns3:SpecName">
              <ns3:SpecName>
                <xsl:value-of select="ns3:SpecName"/>
              </ns3:SpecName>
            </xsl:if>
            <xsl:if test="ns3:GradeCode">
              <ns3:GradeCode>
                <xsl:value-of select="ns3:GradeCode"/>
              </ns3:GradeCode>
            </xsl:if>
            <xsl:if test="ns3:UpdateInventoryQty">
              <ns3:UpdateInventoryQty>
                <xsl:value-of select="ns3:UpdateInventoryQty"/>
              </ns3:UpdateInventoryQty>
            </xsl:if>
            <xsl:if test="ns3:Comments">
              <ns3:Comments>
                <xsl:value-of select="ns3:Comments"/>
              </ns3:Comments>
            </xsl:if>
            <xsl:if test="ns3:ProductShape">
              <ns3:ProductShape>
                <xsl:value-of select="ns3:ProductShape"/>
              </ns3:ProductShape>
            </xsl:if>
            <xsl:if test="ns3:OrderType">
              <ns3:OrderType>
                <xsl:value-of select="ns3:OrderType"/>
              </ns3:OrderType>
            </xsl:if>
            <ns3:Test_results>
              <xsl:for-each select="ns3:Test_results/ns3:Test_results">
                <ns3:Test_results>
                  <xsl:if test="ns3:TestClass">
                    <ns3:TestClass>
                      <xsl:value-of select="ns3:TestClass"/>
                    </ns3:TestClass>
                  </xsl:if>
                  <xsl:if test="ns3:TestCode">
                    <ns3:TestCode>
                      <xsl:value-of select="ns3:TestCode"/>
                    </ns3:TestCode>
                  </xsl:if>
                  <xsl:if test="ns3:SeqNO">
                    <ns3:SeqNO>
                      <xsl:value-of select="ns3:SeqNO"/>
                    </ns3:SeqNO>
                  </xsl:if>
                  <xsl:if test="ns3:TestID">
                    <ns3:TestID>
                      <xsl:value-of select="ns3:TestID"/>
                    </ns3:TestID>
                  </xsl:if>
                  <xsl:if test="ns3:TestUnit">
                    <ns3:TestUnit>
                      <xsl:value-of select="ns3:TestUnit"/>
                    </ns3:TestUnit>
                  </xsl:if>
                  <xsl:if test="ns3:Tester">
                    <ns3:Tester>
                      <xsl:value-of select="ns3:Tester"/>
                    </ns3:Tester>
                  </xsl:if>
                  <xsl:if test="ns3:ResultValue">
                    <ns3:ResultValue>
                      <xsl:value-of select="ns3:ResultValue"/>
                    </ns3:ResultValue>
                  </xsl:if>
                  <xsl:if test="ns3:MinValueNum">
                    <ns3:MinValueNum>
                      <xsl:value-of select="ns3:MinValueNum"/>
                    </ns3:MinValueNum>
                  </xsl:if>
                  <xsl:if test="ns3:MaxValueNum">
                    <ns3:MaxValueNum>
                      <xsl:value-of select="ns3:MaxValueNum"/>
                    </ns3:MaxValueNum>
                  </xsl:if>
                  <xsl:if test="ns3:AboveMinActionCode">
                    <ns3:AboveMinActionCode>
                      <xsl:value-of select="ns3:AboveMinActionCode"/>
                    </ns3:AboveMinActionCode>
                  </xsl:if>
                  <xsl:if test="ns3:AboveMaxActionCode">
                    <ns3:AboveMaxActionCode>
                      <xsl:value-of select="ns3:AboveMaxActionCode"/>
                    </ns3:AboveMaxActionCode>
                  </xsl:if>
                  <xsl:if test="ns3:AboveSpecMin">
                    <ns3:AboveSpecMin>
                      <xsl:value-of select="ns3:AboveSpecMin"/>
                    </ns3:AboveSpecMin>
                  </xsl:if>
                  <xsl:if test="ns3:AboveSpecMax">
                    <ns3:AboveSpecMax>
                      <xsl:value-of select="ns3:AboveSpecMax"/>
                    </ns3:AboveSpecMax>
                  </xsl:if>
                  <xsl:if test="ns3:BelowSpecMin">
                    <ns3:BelowSpecMin>
                      <xsl:value-of select="ns3:BelowSpecMin"/>
                    </ns3:BelowSpecMin>
                  </xsl:if>
                  <xsl:if test="ns3:BelowSpecMax">
                    <ns3:BelowSpecMax>
                      <xsl:value-of select="ns3:BelowSpecMax"/>
                    </ns3:BelowSpecMax>
                  </xsl:if>
                  <xsl:if test="ns3:GageLen">
                    <ns3:GageLen>
                      <xsl:value-of select="ns3:GageLen"/>
                    </ns3:GageLen>
                  </xsl:if>
                </ns3:Test_results>
              </xsl:for-each>
            </ns3:Test_results>
            <ns3:LPNDetails>
              <xsl:for-each select="ns3:LPNDetails/ns3:LPNDetail">
                <ns3:LPNDetail>
                  <xsl:if test="ns3:LPNNo">
                    <ns3:LPNNo>
                      <xsl:value-of select="ns3:LPNNo"/>
                    </ns3:LPNNo>
                  </xsl:if>
                  <xsl:if test="ns3:LPNId">
                    <ns3:LPNId>
                      <xsl:value-of select="ns3:LPNId"/>
                    </ns3:LPNId>
                  </xsl:if>
                </ns3:LPNDetail>
              </xsl:for-each>
            </ns3:LPNDetails>
          </ns3:GmdResultPub>
        </xsl:for-each>
      </ns3:GmdResultsPub>
    </ns0:QueryQAResultsByBolNoRs>
  </xsl:template>
</xsl:stylesheet>
