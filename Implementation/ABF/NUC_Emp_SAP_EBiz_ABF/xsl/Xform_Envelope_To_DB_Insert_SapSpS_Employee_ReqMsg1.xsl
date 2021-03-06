<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_InsertSapSpsEmployee"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl tns oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:client="http://xmlns.oracle.com/NUCOR/NUC_Emp_SAP_EBiz_ABF/NUC_Emp_SAP_EBiz_ABF"
                xmlns:ns1="http://tempuri.org/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns2="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/NUCOR/NUC_Emp_SAP_EBiz_ABF/DB_InsertSapSpsEmployee"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../NUC_Emp_SAP_EBiz_ABF.wsdl"/>
        <oracle-xsl-mapper:rootElement name="Envelope" namespace=""/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../DB_InsertSapSpsEmployee.wsdl"/>
        <oracle-xsl-mapper:rootElement name="XxnucHrSapEmployeeStgCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_InsertSapSpsEmployee"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [FRI OCT 23 04:57:18 CDT 2015].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:XxnucHrSapEmployeeStgCollection>
      <xsl:for-each select="/Envelope/Divisions/Division/ReducedPersons/ReducedPerson">
        <xsl:if test='(HireDate != "") and (Gender != "")'>
          <tns:XxnucHrSapEmployeeStg>
            <tns:sapEmpNum>
              <xsl:value-of select="SAPEmpNum"/>
            </tns:sapEmpNum>
            <tns:lastName>
              <xsl:value-of select="Name/Last"/>
            </tns:lastName>
            <tns:firstName>
              <xsl:value-of select="Name/First"/>
            </tns:firstName>
            <tns:middleInitial>
              <xsl:value-of select="Name/Middle"/>
            </tns:middleInitial>
            <tns:suffix>
              <xsl:value-of select="Name/Suffix"/>
            </tns:suffix>
            <tns:gender>
              <xsl:value-of select="Gender"/>
            </tns:gender>
            <tns:ledger>
              <xsl:value-of select="dvm:lookupValue (&quot;oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_LEGACY_LEDGER_NAME_MAP.dvm&quot;, &quot;LEGACY_DIV_NUM&quot;, ../../@DivCode, &quot;EBS_LEDGER_NAME&quot;, &quot;NUC_US_LED&quot; )"/>
            </tns:ledger>
            <tns:employmentDate>
              <xsl:value-of select="HireDate"/>
            </tns:employmentDate>
            <xsl:if test='dvm:lookupValue("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_LEGACY_LEDGER_NAME_MAP.dvm","LEGACY_DIV_NUM",../../@DivCode,"LIVE_ON_ORACLE","N") = "Y"'>
              <xsl:choose>
                <xsl:when test="HireDate > TerminationDate">
                  <tns:employmentEndDate/>
                </xsl:when>
                <xsl:otherwise>
                  <tns:employmentEndDate>
                    <xsl:value-of select="TerminationDate"/>
                  </tns:employmentEndDate>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:if>
            <tns:emailAddress>
              <xsl:value-of select="EMailAddress"/>
            </tns:emailAddress>
            <tns:addressLine1>
              <xsl:value-of select="Addresses/Address/Address1"/>
            </tns:addressLine1>
            <tns:addressLine2>
              <xsl:value-of select="Addresses/Address/Address2"/>
            </tns:addressLine2>
            <tns:city>
              <xsl:value-of select="Addresses/Address/City"/>
            </tns:city>
            <tns:state>
              <xsl:value-of select="Addresses/Address/State"/>
            </tns:state>
            <tns:zipCode>
              <xsl:value-of select="Addresses/Address/PostalCode"/>
            </tns:zipCode>
            <tns:country>
              <xsl:value-of select="Addresses/Address/Country"/>
            </tns:country>
            <tns:telephone>
              <xsl:value-of select="Addresses/Address/Phones/Phone"/>
            </tns:telephone>
            <xsl:if test='Position/@PositionID != "99999999"'>
              <tns:job>
                <xsl:value-of select="Position"/>
              </tns:job>
            </xsl:if>
            <tns:supervisorid>
              <xsl:value-of select="SupervisorName/@SAPEmpNum"/>
            </tns:supervisorid>
            <xsl:choose>
              <xsl:when test='EmployeeGroup/@EmployeeGroupID = "3"'>
                <tns:dept>
                  <!-- <xsl:value-of select='xref:lookupXRef("oramds:/apps/EIAMetadata/CommonArtifacts/xref/SAP_EBS_DEPT_NAME.xref","SAP",Department/@DepartmentID,"DEPT",false())'/>-->
                  <xsl:text disable-output-escaping="no">Nucor Steel Business Group</xsl:text>
                </tns:dept>
              </xsl:when>
              <xsl:otherwise>
                <tns:dept>
                  <xsl:value-of select='xref:lookupXRef("oramds:/apps/EIAMetadata/CommonArtifacts/xref/SAP_EBS_DEPT_NAME.xref","SAP",Department/@DepartmentID,"DEPT",false())'/>
                  <!-- <xsl:text disable-output-escaping="no">Nucor Steel Business Group</xsl:text> -->
                </tns:dept>
              </xsl:otherwise>
            </xsl:choose>
            <tns:departmentid>
              <xsl:value-of select="Department/@DepartmentID"/>
            </tns:departmentid>
            <tns:personnelareaid>
              <xsl:value-of select="PersonnelArea/@PersonnelAreaID"/>
            </tns:personnelareaid>
            <tns:divNo>
              <xsl:value-of select="../../@DivCode"/>
            </tns:divNo>
            <tns:rehireDate>
              <xsl:value-of select="RehireDate"/>
            </tns:rehireDate>
            <tns:legacyEmployeeNumber>
              <xsl:value-of select="LegacyEmpNum"/>
            </tns:legacyEmployeeNumber>
            <tns:lastDayWorked>
              <xsl:value-of select="LastWorkedDate"/>
            </tns:lastDayWorked>
          </tns:XxnucHrSapEmployeeStg>
        </xsl:if>
      </xsl:for-each>
    </tns:XxnucHrSapEmployeeStgCollection>
  </xsl:template>
</xsl:stylesheet>
