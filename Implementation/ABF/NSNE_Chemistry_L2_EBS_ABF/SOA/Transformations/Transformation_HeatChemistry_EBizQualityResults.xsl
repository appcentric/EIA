<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:ns0="http://xmlns.eia.com/CommonLogging"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_HeatChemistry"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:tns="http://xmlns.eia.com/AO/Ebiz/D2S/QualityResultsAM/1.0"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 ns1 tns xp20 oraxsl mhdr oraext dvm xref utl socket"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/Manish/NSNE_Chemistry_L2_EBS_ABF/DB_HeatChemistry"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:ns4="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns7="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns3="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns10="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns8="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:ns5="http://xmlns.eia.com/AO/Ebiz/D2S/QualityResultsAO/1.0"
                xmlns:ns6="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:client="http:/xmlns.eia.com/Implementation/ABS/NUC_NUC_EBizQualityResults_ABS/QualityResults/1.0"
                xmlns:ns9="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:ns11="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0">
  <oracle-xsl-mapper:schema>
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/Infrastracture/wsdls/V1.0/CommonLogging.wsdl"/>
        <oracle-xsl-mapper:rootElement name="Input" namespace="http://xmlns.eia.com/CommonLogging"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DB_HeatChemistry.wsdl"/>
        <oracle-xsl-mapper:rootElement name="vw_L2_Heat_Batch_ChemistryCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_HeatChemistry"/>
        <oracle-xsl-mapper:param name="g_Invoke_DB_HeatChemistry_OutputVariable.vw_L2_Heat_Batch_ChemistryCollection"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/D2S/QualityResults.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QualityResultsAddRq"
                                       namespace="http://xmlns.eia.com/AO/Ebiz/D2S/QualityResultsAM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
  </oracle-xsl-mapper:schema>
  <xsl:param name="g_Invoke_DB_HeatChemistry_OutputVariable.vw_L2_Heat_Batch_ChemistryCollection"/>
  <xsl:template match="/">
    <tns:QualityResultsAddRq>
      <ns10:HeaderRq>
        <ns10:TransactionRequestID/>
        <ns10:Language>ENG</ns10:Language>
        <ns10:ComponentID>
          <xsl:value-of select="/ns0:Input/ns0:ComponentId"/>
        </ns10:ComponentID>
        <ns10:TransactionIDREF>
          <xsl:value-of select="/ns0:Input/ns0:TransactionId"/>
        </ns10:TransactionIDREF>
        <ns10:TransactionName>
          <xsl:value-of select="/ns0:Input/ns0:TransactionName"/>
        </ns10:TransactionName>
        <ns10:Source>
          <xsl:value-of select="/ns0:Input/ns0:SourceSystem"/>
        </ns10:Source>
        <ns10:Target>
          <xsl:value-of select="/ns0:Input/ns0:TargetSystem"/>
        </ns10:Target>
        <ns10:MillName>NSNE</ns10:MillName>
      </ns10:HeaderRq>
      <ns5:GmdResultsPub>
        <xsl:for-each select="$g_Invoke_DB_HeatChemistry_OutputVariable.vw_L2_Heat_Batch_ChemistryCollection/ns1:vw_L2_Heat_Batch_ChemistryCollection/ns1:vw_L2_Heat_Batch_Chemistry">
          <ns5:GmdResultPub>
            <ns5:TxnID>
              <xsl:value-of select="/ns0:Input/ns0:TransactionId"/>
            </ns5:TxnID>
            <ns5:OrganizationId/>
            <ns5:OrganizationCode>100</ns5:OrganizationCode>
            <ns5:SampleSource>W</ns5:SampleSource>
            <xsl:choose>
              <xsl:when test="ns1:OracleBatchID = 0">
                <ns5:item_id>
                  <xsl:value-of select="oraext:query-database (concat (&quot;select inventory_item_id from (select mmt.transaction_source_id , mmt.creation_Date, mmt.inventory_item_id from mtl_transaction_lot_numbers mtl ,mtl_material_transactions mmt where mmt.transaction_id = mtl.transaction_id and mtl.lot_number='&quot;, ns1:LotNumber, &quot;' and mmt.transaction_source_type_id = 5 order by mmt.creation_Date desc) batch_source where rownum &lt; 2&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; )"/>
                </ns5:item_id>
              </xsl:when>
              <xsl:otherwise>
                <ns5:item_id>
                  <xsl:value-of select='oraext:query-database (concat ("SELECT   inventory_item_id  FROM   gme_material_details WHERE   batch_id =", ns1:OracleBatchID, "  AND line_type = 1" ), false(), false(), "jdbc/ebsapps" )'/>
                </ns5:item_id>
              </xsl:otherwise>
            </xsl:choose>
            <xsl:choose>
              <xsl:when test="ns1:OracleBatchID = 0">
               <ns5:BatchID>
                  <xsl:value-of select="oraext:query-database (concat (&quot;select transaction_source_id from (select mmt.transaction_source_id , mmt.creation_Date, mmt.inventory_item_id from mtl_transaction_lot_numbers mtl ,mtl_material_transactions mmt where mmt.transaction_id = mtl.transaction_id and mtl.lot_number='&quot;, ns1:LotNumber, &quot;' and mmt.transaction_source_type_id = 5 order by mmt.creation_Date desc) batch_source where rownum &lt; 2&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; )"/>
                </ns5:BatchID>
              </xsl:when>
              <xsl:otherwise>
                <ns5:BatchID>
                  <xsl:value-of select="ns1:OracleBatchID"/>
                </ns5:BatchID>
              </xsl:otherwise>
            </xsl:choose>
            <ns5:LotNo>
              <xsl:value-of select="ns1:LotNumber"/>
            </ns5:LotNo>
            <ns5:Sampler>SOAUSER</ns5:Sampler>
            <ns5:Test_results>
              <xsl:if test='ns1:Al and ns1:Al != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Al</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Al"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:As and ns1:As != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>As</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:As"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:b and ns1:b != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>B</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:b"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Bi and ns1:Bi != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Bi</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Bi"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:c and ns1:c != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>C</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:c"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Ca and ns1:Ca != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Ca</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Ca"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Cb and ns1:Cb != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Cb</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Cb"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Ce and ns1:Ce != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Ce</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Ce"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Co and ns1:Co != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Co</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Co"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Cr and ns1:Cr != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Cr</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Cr"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Cu and ns1:Cu != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Cu</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Cu"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Mn and ns1:Mn != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Mn</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Mn"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Mo and ns1:Mo != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Mo</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Mo"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:N2_ppm and ns1:N2_ppm != ""'>
                <ns5:Test_results>
                  <!--ns5:TestCode>N2_ppm</ns5:TestCode-->
                  <ns5:TestCode>N</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:N2_ppm"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Ni and ns1:Ni != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Ni</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Ni"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:o and ns1:o != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>O</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:o"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:p and ns1:p != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>P</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:p"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:s and ns1:s != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>S</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:s"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Sa and ns1:Sa != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Sa</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Sa"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Sb and ns1:Sb != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Sb</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Sb"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Se and ns1:Se != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Se</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Se"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Si and ns1:Si != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Si</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Si"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Sn and ns1:Sn != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Sn</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Sn"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Te and ns1:Te != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Te</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Te"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Ti and ns1:Ti != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Ti</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Ti"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:v and ns1:v != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>V</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:v"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Zn and ns1:Zn != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Zn</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Zn"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Zr and ns1:Zr != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Zr</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Zr"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Liquidus and ns1:Liquidus != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Liquidus</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Liquidus"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Nb and ns1:Nb != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Nb</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Nb"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Pb and ns1:Pb != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Pb</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Pb"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:fe and ns1:fe != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>FE%</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:fe"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:lecoC and ns1:lecoC != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>LECO_C</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:lecoC"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:lecoS and ns1:lecoS != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>LECO_S</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:lecoS"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:lecoN2 and ns1:lecoN2 != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>LECO_N2</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:lecoN2"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:lecoTox and ns1:lecoTox != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>LECO_TOX</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:lecoTox"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Tensile and ns1:Tensile != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Tensile</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Tensile"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:Yield and ns1:Yield != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>Yield</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:Yield"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:CarbonEQ and ns1:CarbonEQ != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>CarbonEQ</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:CarbonEQ"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:ce1 and ns1:ce1 != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>CE1</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:ce1"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:gsttensile and ns1:gsttensile != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>GSTTENSILE</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:gsttensile"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:kfactor and ns1:kfactor != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>KFACTOR</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:kfactor"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:USCuEQ and ns1:USCuEQ != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>USCuEQ</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:USCuEQ"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:c6 and ns1:c6 != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>C6</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:c6"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:di and ns1:di != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>DI</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:di"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
              <xsl:if test='ns1:h and ns1:h != ""'>
                <ns5:Test_results>
                  <ns5:TestCode>H</ns5:TestCode>
                  <ns5:Tester>SOAUSER</ns5:Tester>
                  <ns5:ResultValue>
                    <xsl:value-of select="ns1:h"/>
                  </ns5:ResultValue>
                  <ns5:ResultDate>
                    <xsl:value-of select="xp20:current-date ( )"/>
                  </ns5:ResultDate>
                </ns5:Test_results>
              </xsl:if>
            </ns5:Test_results>
          </ns5:GmdResultPub>
        </xsl:for-each>
      </ns5:GmdResultsPub>
    </tns:QualityResultsAddRq>
  </xsl:template>
</xsl:stylesheet>
