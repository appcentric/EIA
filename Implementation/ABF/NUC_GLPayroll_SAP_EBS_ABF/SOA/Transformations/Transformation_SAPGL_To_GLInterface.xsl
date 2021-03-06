<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:ns0="www.Nucor.com" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/APPS_GL_Interface"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/"
                xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/apps/Manish/GLPayroll_SAP_EBS_ABF/APPS_GL_Interface"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/wsdl/F2M/1.0/NucorSAPData.asmx.wsdl"/>
        <oracle-xsl-mapper:rootElement name="Get_SAP_FIPostingResponse" namespace="www.Nucor.com"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/APPS_GL_Interface.wsdl"/>
        <oracle-xsl-mapper:rootElement name="GlInterfaceCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/APPS_GL_Interface"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED SEP 02 07:45:46 CDT 2015].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:GlInterfaceCollection>
      <xsl:for-each select="/ns0:Get_SAP_FIPostingResponse/ns0:Get_SAP_FIPostingResult/Envelope/PostingSet/Posting">
        <tns:GlInterface>
          <tns:status>NEW</tns:status>
          <!--
          <xsl:choose>
            <xsl:when test='/ns0:Get_SAP_FIPostingResponse/ns0:Get_SAP_FIPostingResult/Envelope/PostingSet/@CompanyCode = "4172"'>
              <tns:ledgerId>2021</tns:ledgerId>
            </xsl:when>
            <xsl:otherwise>
              <tns:ledgerId>
                <xsl:value-of select='dvm:lookupValue ("oramds:/apps/dvm/EBS_LEGACY_LEDGER_NAME_MAP.dvm", "LEGACY_DIV_NUM","/ns0:Get_SAP_FIPostingResponse/ns0:Get_SAP_FIPostingResult/Envelope/@DivCode" ,"LEDGER_ID", "2021")'/>
              </tns:ledgerId>
            </xsl:otherwise>
          </xsl:choose> -->
          <tns:ledgerId>2021</tns:ledgerId>
          <tns:accountingDate>
            <xsl:value-of select="/ns0:Get_SAP_FIPostingResponse/ns0:Get_SAP_FIPostingResult/Envelope/PostingSet/@PostingDate"/>
          </tns:accountingDate>
          <tns:currencyCode>USD</tns:currencyCode>
          <tns:dateCreated>
            <xsl:value-of select="xp20:current-date ( )"/>
          </tns:dateCreated>
          <tns:createdBy>
            <xsl:value-of select='dvm:lookupValue ("oramds:/apps/dvm/EBS_USER_NAME_DIVISION_MAP.dvm", "DIV_CODE","/ns0:Get_SAP_FIPostingResponse/ns0:Get_SAP_FIPostingResult/Envelope/@DivCode" ,"EBS_USER_ID", "1516")'/>
          </tns:createdBy>
          <tns:actualFlag>A</tns:actualFlag>
          <tns:userJeCategoryName>Payroll</tns:userJeCategoryName>
          <tns:userJeSourceName>SAP</tns:userJeSourceName>
          <xsl:choose>
            <xsl:when test='@CostCenter = ""'>
              <tns:segment1>
                <xsl:value-of select='substring (xref:lookupXRef ("oramds:/apps/xref/SAP_EBS_GL_CODE.xref", "SAP", concat (@GL, "-", /ns0:Get_SAP_FIPostingResponse/ns0:Get_SAP_FIPostingResult/Envelope/PostingSet/@CompanyCode, "-", /ns0:Get_SAP_FIPostingResponse/ns0:Get_SAP_FIPostingResult/Envelope/@DivCode ), "EBS", false() ), 1, 4 )'/>
              </tns:segment1>
            </xsl:when>
            <xsl:otherwise>
              <tns:segment1>
                <xsl:value-of select='substring (xref:lookupXRef ("oramds:/apps/xref/SAP_EBS_GL_CODE.xref", "SAP", concat (@GL, "-", @CostCenter ), "EBS", false() ), 1, 4 )'/>
              </tns:segment1>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:choose>
            <xsl:when test='@CostCenter = ""'>
              <tns:segment2>
                <xsl:value-of select='substring (xref:lookupXRef ("oramds:/apps/xref/SAP_EBS_GL_CODE.xref", "SAP", concat (@GL, "-", /ns0:Get_SAP_FIPostingResponse/ns0:Get_SAP_FIPostingResult/Envelope/PostingSet/@CompanyCode, "-", /ns0:Get_SAP_FIPostingResponse/ns0:Get_SAP_FIPostingResult/Envelope/@DivCode ), "EBS", false() ), 6, 2 )'/>
              </tns:segment2>
            </xsl:when>
            <xsl:otherwise>
              <tns:segment2>
                <xsl:value-of select='substring (xref:lookupXRef ("oramds:/apps/xref/SAP_EBS_GL_CODE.xref", "SAP", concat (@GL, "-", @CostCenter ), "EBS", false() ), 6, 2 )'/>
              </tns:segment2>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:choose>
            <xsl:when test='@CostCenter = ""'>
              <tns:segment3>
                <xsl:value-of select='substring (xref:lookupXRef ("oramds:/apps/xref/SAP_EBS_GL_CODE.xref", "SAP", concat (@GL, "-", /ns0:Get_SAP_FIPostingResponse/ns0:Get_SAP_FIPostingResult/Envelope/PostingSet/@CompanyCode, "-", /ns0:Get_SAP_FIPostingResponse/ns0:Get_SAP_FIPostingResult/Envelope/@DivCode ), "EBS", false() ), 9, 3 )'/>
              </tns:segment3>
            </xsl:when>
            <xsl:otherwise>
              <tns:segment3>
                <xsl:value-of select='substring (xref:lookupXRef ("oramds:/apps/xref/SAP_EBS_GL_CODE.xref", "SAP", concat (@GL, "-", @CostCenter ), "EBS", false() ), 9, 3 )'/>
              </tns:segment3>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:choose>
            <xsl:when test='@CostCenter = ""'>
              <tns:segment4>
                <xsl:value-of select='substring (xref:lookupXRef ("oramds:/apps/xref/SAP_EBS_GL_CODE.xref", "SAP", concat (@GL, "-", /ns0:Get_SAP_FIPostingResponse/ns0:Get_SAP_FIPostingResult/Envelope/PostingSet/@CompanyCode, "-", /ns0:Get_SAP_FIPostingResponse/ns0:Get_SAP_FIPostingResult/Envelope/@DivCode ), "EBS", false() ), 13, 6 )'/>
              </tns:segment4>
            </xsl:when>
            <xsl:otherwise>
              <tns:segment4>
                <xsl:value-of select='substring (xref:lookupXRef ("oramds:/apps/xref/SAP_EBS_GL_CODE.xref", "SAP", concat (@GL, "-", @CostCenter ), "EBS", false() ), 13, 6 )'/>
              </tns:segment4>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:choose>
            <xsl:when test='@CostCenter = ""'>
              <tns:segment5>
                <xsl:value-of select='substring (xref:lookupXRef ("oramds:/apps/xref/SAP_EBS_GL_CODE.xref", "SAP", concat (@GL, "-", /ns0:Get_SAP_FIPostingResponse/ns0:Get_SAP_FIPostingResult/Envelope/PostingSet/@CompanyCode, "-", /ns0:Get_SAP_FIPostingResponse/ns0:Get_SAP_FIPostingResult/Envelope/@DivCode ), "EBS", false() ), 20, 4 )'/>
              </tns:segment5>
            </xsl:when>
            <xsl:otherwise>
              <tns:segment5>
                <xsl:value-of select='substring (xref:lookupXRef ("oramds:/apps/xref/SAP_EBS_GL_CODE.xref", "SAP", concat (@GL, "-", @CostCenter ), "EBS", false() ), 20, 4 )'/>
              </tns:segment5>
            </xsl:otherwise>
          </xsl:choose>
          <tns:segment6>0000</tns:segment6>
          <tns:segment7>0000</tns:segment7>
          <tns:enteredDr>
            <xsl:value-of select="xp20:abs(@DebitAmount)"/>
          </tns:enteredDr>
          <tns:enteredCr>
            <xsl:value-of select="xp20:abs(@CreditAmount)"/>
          </tns:enteredCr>
          <tns:reference4>
            <xsl:value-of select='concat (/ns0:Get_SAP_FIPostingResponse/ns0:Get_SAP_FIPostingResult/Envelope/PostingSet/@RunID ,"-",/ns0:Get_SAP_FIPostingResponse/ns0:Get_SAP_FIPostingResult/Envelope/PostingSet/@CompanyCode)'/>
          </tns:reference4>
          <tns:reference5>
            <xsl:value-of select="/ns0:Get_SAP_FIPostingResponse/ns0:Get_SAP_FIPostingResult/Envelope/PostingSet/@PostingDate"/>
          </tns:reference5>
          
          <xsl:choose>
            <xsl:when test='@CostCenter = ""'>
              <tns:reference10>
                <xsl:value-of select='concat (@GL, "-", /ns0:Get_SAP_FIPostingResponse/ns0:Get_SAP_FIPostingResult/Envelope/PostingSet/@CompanyCode, "-", /ns0:Get_SAP_FIPostingResponse/ns0:Get_SAP_FIPostingResult/Envelope/@DivCode )'/>
              </tns:reference10>
            </xsl:when>
            <xsl:otherwise>
              <tns:reference10>
                <xsl:value-of select='concat (@GL ,"-",@CostCenter,"-",@Desc)'/>
              </tns:reference10>
            </xsl:otherwise>
          </xsl:choose>
          <!--
          <tns:reference10>
            <xsl:value-of select='concat (@GL ,"-",@CostCenter,"-",@Desc)'/>
          </tns:reference10>
          -->
          <tns:glSlLinkTable/>
        </tns:GlInterface>
      </xsl:for-each>
    </tns:GlInterfaceCollection>
  </xsl:template>
</xsl:stylesheet>
