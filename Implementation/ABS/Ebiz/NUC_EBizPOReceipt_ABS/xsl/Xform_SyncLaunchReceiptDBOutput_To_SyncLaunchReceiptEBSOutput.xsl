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
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/sp/DB_SyncLaunchReceiptEBS"
                xmlns:ns1="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 ns1 xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:ns6="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptAO/1.0"
                xmlns:ns9="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0"
                xmlns:ns13="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/DV1_Application/NUC_EBizPOReceipt_ABS/DB_SyncLaunchReceiptEBS"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:ns20="http://xmlns.eia.com/AO/EBiz/common/CategoryAO/1.0"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns3="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns4="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:ns5="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns2="http://xmlns.eia.com/ABS/EBiz/ReceiptABS/1.0"
                xmlns:ns8="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns10="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:ns12="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:ns11="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns16="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns15="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:ns14="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns18="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderAO/1.0"
                xmlns:ns17="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns19="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../DB_SyncLaunchReceiptEBS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="OutputParameters"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/sp/DB_SyncLaunchReceiptEBS"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/ReceiptABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="SyncLaunchReceiptRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"/>
        <oracle-xsl-mapper:param name="SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/ReceiptABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="SyncLaunchReceiptResponseMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [THU AUG 25 06:14:55 PDT 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage"/>
  <xsl:template match="/">
    <ns1:SyncLaunchReceiptResponseMessage>
      <ns11:HeaderRs>
        <ns11:RequestDetails>
          <ns11:TransactionRequestID>
            <xsl:value-of select="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:TransactionRequestID"/>
          </ns11:TransactionRequestID>
          <ns11:Language>
            <xsl:value-of select="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:Language"/>
          </ns11:Language>
          <ns11:ComponentID>
            <xsl:value-of select="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:ComponentID"/>
          </ns11:ComponentID>
          <ns11:ServiceName>
            <xsl:value-of select="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:ServiceName"/>
          </ns11:ServiceName>
          <xsl:if test="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:TransactionIDREF">
            <ns11:TransactionIDREF>
              <xsl:value-of select="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:TransactionIDREF"/>
            </ns11:TransactionIDREF>
          </xsl:if>
          <xsl:if test="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:TransactionName">
            <ns11:TransactionName>
              <xsl:value-of select="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:TransactionName"/>
            </ns11:TransactionName>
          </xsl:if>
          <xsl:if test="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:FileName">
            <ns11:FileName>
              <xsl:value-of select="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:FileName"/>
            </ns11:FileName>
          </xsl:if>
          <xsl:if test="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:FileInstanceID">
            <ns11:FileInstanceID>
              <xsl:value-of select="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:FileInstanceID"/>
            </ns11:FileInstanceID>
          </xsl:if>
          <xsl:if test="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:Source">
            <ns11:Source>
              <xsl:value-of select="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:Source"/>
            </ns11:Source>
          </xsl:if>
          <xsl:if test="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:Target">
            <ns11:Target>
              <xsl:value-of select="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:Target"/>
            </ns11:Target>
          </xsl:if>
          <xsl:if test="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:HostName">
            <ns11:HostName>
              <xsl:value-of select="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:HostName"/>
            </ns11:HostName>
          </xsl:if>
          <xsl:if test="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:UserName">
            <ns11:UserName>
              <xsl:value-of select="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:UserName"/>
            </ns11:UserName>
          </xsl:if>
          <xsl:if test="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:UserRole">
            <ns11:UserRole>
              <xsl:value-of select="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:UserRole"/>
            </ns11:UserRole>
          </xsl:if>
          <xsl:if test="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:AdminEmail">
            <ns11:AdminEmail>
              <xsl:value-of select="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:AdminEmail"/>
            </ns11:AdminEmail>
          </xsl:if>
          <xsl:if test="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:ApplicationResponsibility">
            <ns11:ApplicationResponsibility>
              <xsl:value-of select="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:ApplicationResponsibility"/>
            </ns11:ApplicationResponsibility>
          </xsl:if>
          <xsl:if test="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:EOFFlag">
            <ns11:EOFFlag>
              <xsl:value-of select="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:EOFFlag"/>
            </ns11:EOFFlag>
          </xsl:if>
          <xsl:if test="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:SOFFlag">
            <ns11:SOFFlag>
              <xsl:value-of select="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:SOFFlag"/>
            </ns11:SOFFlag>
          </xsl:if>
          <xsl:if test="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:FileRecordCount">
            <ns11:FileRecordCount>
              <xsl:value-of select="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:FileRecordCount"/>
            </ns11:FileRecordCount>
          </xsl:if>
          <xsl:if test="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:TimeStamp">
            <ns11:TimeStamp>
              <xsl:value-of select="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:TimeStamp"/>
            </ns11:TimeStamp>
          </xsl:if>
          <xsl:if test="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:MillName">
            <ns11:MillName>
              <xsl:value-of select="$SyncLaunchReceipt_Sync_Input.SyncLaunchReceiptRequestMessage/ns1:SyncLaunchReceiptRequestMessage/ns11:HeaderRq/ns11:MillName"/>
            </ns11:MillName>
          </xsl:if>
        </ns11:RequestDetails>
        <ns11:Status>
          <ns11:Status>SUCCESS</ns11:Status>
        </ns11:Status>
      </ns11:HeaderRs>
      <ns1:OperationResult>
        <xsl:if test="/ns0:OutputParameters/ns0:X_RETURN_STATUS">
          <ns3:Stats>
            <xsl:value-of select="/ns0:OutputParameters/ns0:X_RETURN_STATUS"/>
          </ns3:Stats>
        </xsl:if>
        <xsl:if test="/ns0:OutputParameters/ns0:X_RETURN_MESSAGE">
        <ns3:Errors>
            <ns3:OperationResultError>
              <xsl:value-of select="/ns0:OutputParameters/ns0:X_RETURN_MESSAGE"/>
            </ns3:OperationResultError>
        </ns3:Errors>
        </xsl:if>
      </ns1:OperationResult>
      <ns1:SyncLaunchResult>
        <xsl:for-each select="/ns0:OutputParameters/ns0:X_RES_OUT/ns0:X_RES_OUT_ITEM">
          <ns3:OperationLaunchResults>
            <xsl:if test="ns0:ENTITY_NAME">
              <ns3:EntityName>
                <xsl:value-of select="ns0:ENTITY_NAME"/>
              </ns3:EntityName>
            </xsl:if>
            <xsl:if test="ns0:TABLE_NAME">
              <ns3:TableName>
                <xsl:value-of select="ns0:TABLE_NAME"/>
              </ns3:TableName>
            </xsl:if>
            <xsl:if test="ns0:ROW_IDENTIFIER_1">
              <ns3:RowIdentifier1>
                <xsl:value-of select="ns0:ROW_IDENTIFIER_1"/>
              </ns3:RowIdentifier1>
            </xsl:if>
            <xsl:if test="ns0:ROW_IDENTIFIER_2">
              <ns3:RowIdentifier2>
                <xsl:value-of select="ns0:ROW_IDENTIFIER_2"/>
              </ns3:RowIdentifier2>
            </xsl:if>
            <xsl:if test="ns0:ROW_IDENTIFIER_3">
              <ns3:RowIdentifier3>
                <xsl:value-of select="ns0:ROW_IDENTIFIER_3"/>
              </ns3:RowIdentifier3>
            </xsl:if>
            <xsl:if test="ns0:MESSAGE_NAME">
              <ns3:MessageName>
                <xsl:value-of select="ns0:MESSAGE_NAME"/>
              </ns3:MessageName>
            </xsl:if>
            <xsl:if test="ns0:MESSAGE_TEXT">
              <ns3:MessageText>
                <xsl:value-of select="ns0:MESSAGE_TEXT"/>
              </ns3:MessageText>
            </xsl:if>
            <xsl:if test="ns0:ENTITY_INDEX">
              <ns3:EntityIndex>
                <xsl:value-of select="ns0:ENTITY_INDEX"/>
              </ns3:EntityIndex>
            </xsl:if>
            <xsl:if test="ns0:MESSAGE_TYPE">
              <ns3:MessageType>
                <xsl:value-of select="ns0:MESSAGE_TYPE"/>
              </ns3:MessageType>
            </xsl:if>
          </ns3:OperationLaunchResults>
        </xsl:for-each>
      </ns1:SyncLaunchResult>
    </ns1:SyncLaunchReceiptResponseMessage>
  </xsl:template>
</xsl:stylesheet>
