<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:ns0="http://XREF_Data_Load.com/XREF_Load_File_ftp"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:tns="http://xmlns.eia.com/Infrastructure/UtilityXREF/1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/ftp/Tensile/UtilityXREF_FileLoad/ftpUtilityFileLoad">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/ftpUtilityFileLoad.wsdl"/>
        <oracle-xsl-mapper:rootElement name="XREF-Records" namespace="http://XREF_Data_Load.com/XREF_Load_File_ftp"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/processXREF.wsdl"/>
        <oracle-xsl-mapper:rootElement name="processXREFData"
                                       namespace="http://xmlns.eia.com/Infrastructure/UtilityXREF/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [TUE JUN 07 07:45:27 CDT 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:processXREFData>
      <tns:XREFName>
        <xsl:value-of select="/ns0:XREF-Records/ns0:X-Record/ns0:XREF_Table_Name"/>
      </tns:XREFName>
      <tns:ReferenceColumn>
        <xsl:value-of select="/ns0:XREF-Records/ns0:X-Record/ns0:Reference_Column"/>
      </tns:ReferenceColumn>
      <tns:ReferenceValue>
        <xsl:value-of select="/ns0:XREF-Records/ns0:X-Record/ns0:Reference_Value"/>
      </tns:ReferenceValue>
      <tns:LookupColumn>
        <xsl:value-of select="/ns0:XREF-Records/ns0:X-Record/ns0:Lookup_Column"/>
      </tns:LookupColumn>
      <tns:LookupValue>
        <xsl:value-of select="/ns0:XREF-Records/ns0:X-Record/ns0:Lookup_Value"/>
      </tns:LookupValue>
    </tns:processXREFData>
  </xsl:template>
</xsl:stylesheet>