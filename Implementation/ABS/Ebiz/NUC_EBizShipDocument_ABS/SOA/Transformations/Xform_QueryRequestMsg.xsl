<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_GetShippingDocument_db"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns0="http://xmlns.eia.com/AO/EBiz/O2C/ShipDocumentAM/1.0"
                exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xml:id="id_1" oraxsl:ignorexmlids="true" xmlns:ns4="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns1="http://xmlns.eia.com/ABS/EBiz/O2C/ShipDocumentABS/1.0"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:ns9="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns2="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns5="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns8="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns3="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:ns6="http://xmlns.eia.com/AO/EBiz/O2C/ShipDocumentAO/1.0"
                xmlns:ns10="http://xmlns.oracle.com/pcbpel/adapter/db/Application2/NUC_EBizShipDocument_ABS/DB_GetShippingDocument_db"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/">
  <oracle-xsl-mapper:schema xml:id="id_2">
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources xml:id="id_3">
      <oracle-xsl-mapper:source type="WSDL" xml:id="id_4">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/O2C/ShipDocumentABS.wsdl"
                                  xml:id="id_5"/>
        <oracle-xsl-mapper:rootElement name="QueryShipDocumentRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/O2C/ShipDocumentAM/1.0" xml:id="id_6"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets xml:id="id_7">
      <oracle-xsl-mapper:target type="WSDL" xml:id="id_8">
        <oracle-xsl-mapper:schema location="../WSDLs/DB_GetShippingDocument_db.wsdl" xml:id="id_9"/>
        <oracle-xsl-mapper:rootElement name="DB_GetShippingDocument_dbSelect_OrganizationId_OrganizationCode_DocumentType_DocumentNumber_Status_rowNumInputParameters"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_GetShippingDocument_db"
                                       xml:id="id_10"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [THU AUG 31 12:03:49 CDT 2017].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/" xml:id="id_11">
    <tns:DB_GetShippingDocument_dbSelect_OrganizationId_OrganizationCode_DocumentType_DocumentNumber_Status_rowNumInputParameters xml:id="id_12">
      <tns:OrganizationId xml:id="id_13">
        <xsl:value-of select="/ns0:QueryShipDocumentRequestMessage/ns0:ShipDocument/ns0:OrganizationId" xml:id="id_14"/>
      </tns:OrganizationId>
      <tns:OrganizationCode xml:id="id_15">
        <xsl:value-of select="/ns0:QueryShipDocumentRequestMessage/ns0:ShipDocument/ns0:OrganizationCode"
                      xml:id="id_16"/>
      </tns:OrganizationCode>
      <tns:DocumentType xml:id="id_19">
        <xsl:value-of select="/ns0:QueryShipDocumentRequestMessage/ns0:ShipDocument/ns0:DocumentType" xml:id="id_20"/>
      </tns:DocumentType>
      <tns:DocumentNumber xml:id="id_17">
        <xsl:value-of select="/ns0:QueryShipDocumentRequestMessage/ns0:ShipDocument/ns0:DocumentNumber" xml:id="id_18"/>
      </tns:DocumentNumber>
      <tns:Status xml:id="id_21">
        <xsl:value-of select="/ns0:QueryShipDocumentRequestMessage/ns0:ShipDocument/ns0:Status" xml:id="id_22"/>
      </tns:Status>
      <tns:rowNum xml:id="id_23">
        <xsl:value-of select="/ns0:QueryShipDocumentRequestMessage/@numRows" xml:id="id_24"/>
      </tns:rowNum>
    </tns:DB_GetShippingDocument_dbSelect_OrganizationId_OrganizationCode_DocumentType_DocumentNumber_Status_rowNumInputParameters>
  </xsl:template>
</xsl:stylesheet>
