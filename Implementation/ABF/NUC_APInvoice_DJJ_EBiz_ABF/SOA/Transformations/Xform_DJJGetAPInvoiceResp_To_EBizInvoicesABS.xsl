<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:ns1="http://schemas.oracle.com/service/bpel/common"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:tns="http://xmlns.eia.com/AO/EBiz/P2P/InvoiceABM/1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns3="http://xmlns.oracle.com/pcbpel/adapter/db/sp/DB_GetPODetails"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns1 ns3 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:ns9="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns17="http://xmlns.oracle.com/pcbpel/adapter/db/NUC_DJJ/NUC_APInvoice_DJJ_EBiz_ABF/DB_GetPODetails"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns0="http://xmlns.oracle.com/SOAAppDev/NUC_APInvoice_DJJ_EBiz_ABF/DJJGetInvoiceV1"
                xmlns:ns2="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns4="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:ns5="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns6="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/P2P/InvoiceAO/1.0"
                xmlns:ns8="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns11="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:ns10="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns14="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns13="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns12="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:ns15="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns16="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DJJGetInvoiceV1.wsdl"/>
        <oracle-xsl-mapper:rootElement name="ApiResponseAPInvoice" namespace=""/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DJJGetInvoiceV1.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="DJJGetAPInvoiceV1_ep_ReqMsg.parameter"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DJJGetInvoiceV1.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="gblGenericParameters"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DB_GetPODetails.wsdl"/>
        <oracle-xsl-mapper:rootElement name="OutputParameters"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/sp/DB_GetPODetails"/>
        <oracle-xsl-mapper:param name="Invoke_GetPODetails_DB_GetPODetails_OutputVariable.OutputParameters"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DJJGetInvoiceV1.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="tmpGroupIdNV"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DJJGetInvoiceV1.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateListOfInvoicesRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/InvoiceABM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [MON FEB 22 04:23:15 CST 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="DJJGetAPInvoiceV1_ep_ReqMsg.parameter"/>
  <xsl:param name="gblGenericParameters"/>
  <xsl:param name="Invoke_GetPODetails_DB_GetPODetails_OutputVariable.OutputParameters"/>
  <xsl:param name="tmpGroupIdNV"/>
  <xsl:template match="/">
    <xsl:variable name="varDJJAPIdx"
                  select="number($gblGenericParameters/ns1:parameters/ns1:item[ns1:name='DJJAPIdx']/ns1:value)"/>
    <xsl:variable name="varOrgName"
                  select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID",/ApiResponseAPInvoice/APInvoices/APInvoice[$varDJJAPIdx]/EntityRefID,"EBS_OPERATING_UNIT_NAME", "" )'/>
    <xsl:variable name="varEBS_MISCELLANEOUS_GL_CC"
                  select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID",/ApiResponseAPInvoice/APInvoices/APInvoice[$varDJJAPIdx]/EntityRefID,"EBS_MISCELLANEOUS_GL_CC", "" )'/>
    <xsl:variable name="varEBS_FRIEGHT_GL_CC"
                  select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID",/ApiResponseAPInvoice/APInvoices/APInvoice[$varDJJAPIdx]/EntityRefID,"EBS_FRIEGHT_GL_CC", "" )'/>
    <xsl:variable name="varDivision"
                  select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID",/ApiResponseAPInvoice/APInvoices/APInvoice[$varDJJAPIdx]/EntityRefID, "EBS_DIVISION", "" )'/>
    <xsl:variable name="varOrgId"
                  select="oraext:query-database(concat(&quot;Select organization_id as retvalue from APPS.hr_operating_units where name='&quot;,$varOrgName,&quot;'&quot;),false(),false(),&quot;jdbc/ebsapps&quot;)"/>
    <tns:CreateListOfInvoicesRequestMessage>
      <ns10:HeaderRq>
        <ns10:Language>ENG</ns10:Language>
        <ns10:ComponentID>I096</ns10:ComponentID>
        <ns10:ServiceName>TEMP</ns10:ServiceName>
        <ns10:TransactionIDREF>TEMP</ns10:TransactionIDREF>
        <ns10:TransactionName>APInvoices</ns10:TransactionName>
        <ns10:Source>15</ns10:Source>
        <ns10:Target>2</ns10:Target>
        <ns10:TimeStamp>
          <xsl:value-of select="xp20:current-date ( )"/>
        </ns10:TimeStamp>
      </ns10:HeaderRq>
      <tns:AppsContext>
        <ns11:UserName>
          <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_USER_NAME_DIVISION_MAP.dvm", "DIVISION", $varDivision, "EBS_USER_NAME", "" )'/>
        </ns11:UserName>
        <ns11:ResponsibilityName>
          <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_ORG_RESP_NAME.dvm", "DIVISION", $varDivision, "EBS_RESP_NAME", "", "EBS_FUNCTION_AREA", "AP INVOICES" )'/>
        </ns11:ResponsibilityName>
        <ns11:OrgId>
          <xsl:value-of select="$varOrgId"/>
        </ns11:OrgId>
      </tns:AppsContext>
      <tns:Invoice>
        <xsl:for-each select="/ApiResponseAPInvoice/APInvoices/APInvoice[$varDJJAPIdx]">
          <xsl:variable name="varShipmentID">
            <xsl:choose>
              <xsl:when test="ShipmentVersionID > 0">
                <xsl:value-of select="concat(ShipmentID,'_',ShipmentVersionID)"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="ShipmentID"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:if test="TotalAmt > 0">
            <ns7:Invoice>
              <xsl:variable name="varInvoiceId"
                            select='oraext:sequence-next-val("AP_INVOICES_INTERFACE_S","jdbc/ebsapps")'/>
              <xsl:variable name="varVendorSiteId"
                            select="oraext:query-database (concat (&quot;Select rsh.vendor_site_id  from rcv_shipment_headers rsh where rsh.shipment_num='&quot;, $varShipmentID, &quot;' AND EXISTS (SELECT 1 FROM rcv_transactions rcvt WHERE rcvt.transaction_type = 'RECEIVE' AND rcvt.shipment_header_id = rsh.shipment_header_id)&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; )"/>
              <!--ns7:Gldate>
                                <xsl:value-of select="DueDate"/>
                            </ns7:Gldate-->
              <ns7:Groupid>
                <xsl:value-of select="$tmpGroupIdNV/ns1:parameters/ns1:item[ns1:name='GroupIdToLaunch']/ns1:value"/>
              </ns7:Groupid>
              <ns7:Invoiceamount>
                <xsl:value-of select="TotalAmt"/>
              </ns7:Invoiceamount>
              <ns7:Invoicecurrencycode>USD</ns7:Invoicecurrencycode>
              <ns7:Invoicedate>
                <xsl:value-of select="InvoiceDate"/>
              </ns7:Invoicedate>
              <ns7:Invoiceid>
                <xsl:value-of select="$varInvoiceId"/>
              </ns7:Invoiceid>
              <ns7:Invoicenum>
                <xsl:value-of select="InvoiceId"/>
              </ns7:Invoicenum>
              <ns7:Invoicetypelookupcode>STANDARD</ns7:Invoicetypelookupcode>
              <ns7:Operatingunit>
                <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", /ApiResponseAPInvoice/APInvoices/APInvoice[$varDJJAPIdx]/EntityRefID, "EBS_OPERATING_UNIT_NAME", "" )'/>
              </ns7:Operatingunit>
              <ns7:Orgid>
                <xsl:value-of select="$varOrgId"/>
              </ns7:Orgid>
              <ns7:Source>DJJ</ns7:Source>
              <ns7:Vendorname>
                <xsl:value-of select="oraext:query-database (concat (&quot;Select vendor_name  from po_vendors where vendor_id = (SELECT vendor_id FROM po_vendor_sites_all WHERE vendor_site_id = '&quot;, $varVendorSiteId, &quot;')&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; )"/>
              </ns7:Vendorname>
              <!--ns7:Vendorsitecode>
                                <xsl:value-of select="dvm:lookupValue ('oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm', 'CONSUMER_REF_ID', /ApiResponseAPInvoice/APInvoices/APInvoice[$varDJJAPIdx]/EntityRefID, 'EBS_VENDOR_SITE_CODE', '' )"/>
                            </ns7:Vendorsitecode-->
              <ns7:Vendorsiteid>
                <xsl:value-of select="$varVendorSiteId"/>
              </ns7:Vendorsiteid>
              <ns7:ListOfInvoiceLines>
                <xsl:if test="MaterialAmt != 0">
                  <ns7:InvoiceLines>
                    <ns7:Amount>
                      <xsl:value-of select='format-number(MaterialAmt, "#.00")'/>
                    </ns7:Amount>
                    <ns7:Description>MaterialAmt</ns7:Description>
                    <ns7:Invoiceid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoiceid>
                    <ns7:Invoicelineid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoicelineid>
                    <ns7:Linetypelookupcode>ITEM</ns7:Linetypelookupcode>
                    <ns7:Matchoption>R</ns7:Matchoption>
                    <ns7:Orgid>
                      <xsl:value-of select="$varOrgId"/>
                    </ns7:Orgid>
                    <ns7:Polinelocationid>
                      <xsl:value-of select="$Invoke_GetPODetails_DB_GetPODetails_OutputVariable.OutputParameters/ns3:OutputParameters/ns3:P_INTF_LINE_COL_DTLS/ns3:PO_LINE_LOCATION_ID"/>
                    </ns7:Polinelocationid>
                    <xsl:if test='InvoiceTypeCode = "ADJ" 
                    and dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_ADJ_CODES_MAP.dvm", "ADJUSMENT_REASON_CODE",/ApiResponseAPInvoice/APInvoices/APInvoice[$varDJJAPIdx]/AdjCode,"PRICE_CORRECTION_FLAG", "Y","CONSUMER_REF_ID",/ApiResponseAPInvoice/APInvoices/APInvoice[$varDJJAPIdx]/EntityRefID) = "Y"'>
                      
                      <ns7:Pricecorrectionflag>Y</ns7:Pricecorrectionflag>
                      <ns7:Pricecorrectinvlinenum>
                        <xsl:value-of select="$Invoke_GetPODetails_DB_GetPODetails_OutputVariable.OutputParameters/ns3:OutputParameters/ns3:P_INTF_LINE_COL_DTLS/ns3:INV_LINE_NUM"/>
                      </ns7:Pricecorrectinvlinenum>
                      <ns7:Pricecorrectinvnum>
                        <xsl:value-of select="$Invoke_GetPODetails_DB_GetPODetails_OutputVariable.OutputParameters/ns3:OutputParameters/ns3:P_INTF_LINE_COL_DTLS/ns3:INVOICE_NUM"/>
                      </ns7:Pricecorrectinvnum>
                    </xsl:if>
                    <xsl:choose>
                      <xsl:when test='InvoiceTypeCode = "ADJ" and dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_ADJ_CODES_MAP.dvm", "ADJUSMENT_REASON_CODE",/ApiResponseAPInvoice/APInvoices/APInvoice[$varDJJAPIdx]/AdjCode,"PRICE_CORRECTION_FLAG", "Y","CONSUMER_REF_ID",/ApiResponseAPInvoice/APInvoices/APInvoice[$varDJJAPIdx]/EntityRefID) = "Y"'>
                        <ns7:Quantityinvoiced>
                          <!--<xsl:value-of select="InvWgtLB"/>-->
                          <xsl:value-of select="$Invoke_GetPODetails_DB_GetPODetails_OutputVariable.OutputParameters/ns3:OutputParameters/ns3:P_INTF_LINE_COL_DTLS/ns3:QUANTITY_INVOICED"/>
                        </ns7:Quantityinvoiced>
                      </xsl:when>
                      <xsl:otherwise>
                        <ns7:Quantityinvoiced>
                          <xsl:value-of select="InvWgtLB"/>
                        </ns7:Quantityinvoiced>
                      </xsl:otherwise>
                    </xsl:choose>
                    <ns7:Rcvtransactionid>
                      <xsl:value-of select="$Invoke_GetPODetails_DB_GetPODetails_OutputVariable.OutputParameters/ns3:OutputParameters/ns3:P_INTF_LINE_COL_DTLS/ns3:RCV_TRANSACTION_ID"/>
                    </ns7:Rcvtransactionid>
                  </ns7:InvoiceLines>
                </xsl:if>
                <xsl:if test="FrtAmt != 0">
                  <ns7:InvoiceLines>
                    <ns7:Amount>
                      <xsl:value-of select='format-number(FrtAmt, "#.00")'/>
                    </ns7:Amount>
                    <ns7:Description>FrtAmt</ns7:Description>
                    <ns7:Distcodeconcatenated>
                      <xsl:value-of select="concat(oraext:query-database (concat (&quot;select lookup_code FROM fnd_lookup_values_vl flv, hr_operating_units hou WHERE flv.meaning = hou.name AND hou.organization_id = '&quot;, $varOrgId, &quot;' AND (flv.lookup_type = 'XXNUC_AP_CP_FREIGHT_INV_DIV' AND flv.enabled_flag = 'Y') AND (flv.end_date_active IS NULL OR flv.end_Date_active >= SYSDATE)&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; ),$varEBS_FRIEGHT_GL_CC)"/>
                    </ns7:Distcodeconcatenated>
                    <ns7:Invoiceid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoiceid>
                    <ns7:Invoicelineid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoicelineid>
                    <ns7:Linetypelookupcode>FREIGHT</ns7:Linetypelookupcode>
                    <ns7:Orgid>
                      <xsl:value-of select="$varOrgId"/>
                    </ns7:Orgid>
                  </ns7:InvoiceLines>
                </xsl:if>
                <xsl:if test="DeadFrtAmt != 0">
                  <ns7:InvoiceLines>
                    <ns7:Amount>
                      <xsl:value-of select='format-number(DeadFrtAmt, "#.00")'/>
                    </ns7:Amount>
                    <ns7:Description>DeadFrtAmt</ns7:Description>
                    <ns7:Distcodeconcatenated>
                      <xsl:value-of select="concat(oraext:query-database (concat (&quot;select lookup_code FROM fnd_lookup_values_vl flv, hr_operating_units hou WHERE flv.meaning = hou.name AND hou.organization_id = '&quot;, $varOrgId, &quot;' AND (flv.lookup_type = 'XXNUC_AP_CP_FREIGHT_INV_DIV' AND flv.enabled_flag = 'Y') AND (flv.end_date_active IS NULL OR flv.end_Date_active >= SYSDATE)&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; ),$varEBS_FRIEGHT_GL_CC)"/>
                    </ns7:Distcodeconcatenated>
                    <ns7:Invoiceid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoiceid>
                    <ns7:Invoicelineid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoicelineid>
                    <ns7:Linetypelookupcode>FREIGHT</ns7:Linetypelookupcode>
                    <ns7:Orgid>
                      <xsl:value-of select="$varOrgId"/>
                    </ns7:Orgid>
                  </ns7:InvoiceLines>
                </xsl:if>
                <xsl:if test="FrtDifferential != 0">
                  <ns7:InvoiceLines>
                    <ns7:Amount>
                      <xsl:value-of select='format-number(FrtDifferential, "#.00")'/>
                    </ns7:Amount>
                    <ns7:Description>FrtDifferential</ns7:Description>
                    <ns7:Distcodeconcatenated>
                      <xsl:value-of select="concat(oraext:query-database (concat (&quot;select lookup_code FROM fnd_lookup_values_vl flv, hr_operating_units hou WHERE flv.meaning = hou.name AND hou.organization_id = '&quot;, $varOrgId, &quot;' AND (flv.lookup_type = 'XXNUC_AP_CP_FREIGHT_INV_DIV' AND flv.enabled_flag = 'Y') AND (flv.end_date_active IS NULL OR flv.end_Date_active >= SYSDATE)&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; ),$varEBS_FRIEGHT_GL_CC)"/>
                    </ns7:Distcodeconcatenated>
                    <ns7:Invoiceid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoiceid>
                    <ns7:Invoicelineid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoicelineid>
                    <ns7:Linetypelookupcode>FREIGHT</ns7:Linetypelookupcode>
                    <ns7:Orgid>
                      <xsl:value-of select="$varOrgId"/>
                    </ns7:Orgid>
                  </ns7:InvoiceLines>
                </xsl:if>
                <xsl:if test="MiscChgAmt != 0">
                  <ns7:InvoiceLines>
                    <ns7:Amount>
                      <xsl:value-of select='format-number(MiscChgAmt, "#.00")'/>
                    </ns7:Amount>
                    <ns7:Description>MiscChgAmt</ns7:Description>
                    <ns7:Distcodeconcatenated>
                      <xsl:value-of select="concat(oraext:query-database (concat (&quot;select lookup_code FROM fnd_lookup_values_vl flv, hr_operating_units hou WHERE flv.meaning = hou.name AND hou.organization_id = '&quot;, $varOrgId, &quot;' AND (flv.lookup_type = 'XXNUC_AP_CP_FREIGHT_INV_DIV' AND flv.enabled_flag = 'Y') AND (flv.end_date_active IS NULL OR flv.end_Date_active >= SYSDATE)&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; ),$varEBS_MISCELLANEOUS_GL_CC)"/>
                    </ns7:Distcodeconcatenated>
                    <ns7:Invoiceid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoiceid>
                    <ns7:Invoicelineid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoicelineid>
                    <ns7:Linetypelookupcode>MISCELLANEOUS</ns7:Linetypelookupcode>
                    <ns7:Orgid>
                      <xsl:value-of select="$varOrgId"/>
                    </ns7:Orgid>
                  </ns7:InvoiceLines>
                </xsl:if>
                <xsl:if test="CommisionAmt != 0">
                  <ns7:InvoiceLines>
                    <ns7:Amount>
                      <xsl:value-of select='format-number(CommisionAmt, "#.00")'/>
                    </ns7:Amount>
                    <ns7:Description>CommisionAmt</ns7:Description>
                    <ns7:Distcodeconcatenated>
                      <xsl:value-of select="concat(oraext:query-database (concat (&quot;select lookup_code FROM fnd_lookup_values_vl flv, hr_operating_units hou WHERE flv.meaning = hou.name AND hou.organization_id = '&quot;, $varOrgId, &quot;' AND (flv.lookup_type = 'XXNUC_AP_CP_FREIGHT_INV_DIV' AND flv.enabled_flag = 'Y') AND (flv.end_date_active IS NULL OR flv.end_Date_active >= SYSDATE)&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; ),$varEBS_MISCELLANEOUS_GL_CC)"/>
                    </ns7:Distcodeconcatenated>
                    <ns7:Invoiceid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoiceid>
                    <ns7:Invoicelineid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoicelineid>
                    <ns7:Linetypelookupcode>MISCELLANEOUS</ns7:Linetypelookupcode>
                    <ns7:Orgid>
                      <xsl:value-of select="$varOrgId"/>
                    </ns7:Orgid>
                  </ns7:InvoiceLines>
                </xsl:if>
              </ns7:ListOfInvoiceLines>
            </ns7:Invoice>
          </xsl:if>
          <xsl:if test="TotalAmt &lt; 0">
            <ns7:Invoice>
              <xsl:variable name="varInvoiceId"
                            select='oraext:sequence-next-val("AP_INVOICES_INTERFACE_S","jdbc/ebsapps")'/>
              <xsl:variable name="varVendorSiteId"
                            select="oraext:query-database (concat (&quot;Select rsh.vendor_site_id  from rcv_shipment_headers rsh where rsh.shipment_num='&quot;, $varShipmentID, &quot;' AND EXISTS (SELECT 1 FROM rcv_transactions rcvt WHERE rcvt.transaction_type = 'RECEIVE' AND rcvt.shipment_header_id = rsh.shipment_header_id)&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; )"/>
              <!--ns7:Gldate>
                                <xsl:value-of select="DueDate"/>
                            </ns7:Gldate-->
              <ns7:Groupid>
                <xsl:value-of select="$tmpGroupIdNV/ns1:parameters/ns1:item[ns1:name='GroupIdToLaunch']/ns1:value"/>
              </ns7:Groupid>
              <ns7:Invoiceamount>
                <xsl:value-of select='format-number(TotalAmt, "#.00")'/>
              </ns7:Invoiceamount>
              <ns7:Invoicecurrencycode>USD</ns7:Invoicecurrencycode>
              <ns7:Invoicedate>
                <xsl:value-of select="InvoiceDate"/>
              </ns7:Invoicedate>
              <ns7:Invoiceid>
                <xsl:value-of select="$varInvoiceId"/>
              </ns7:Invoiceid>
              <ns7:Invoicenum>
                <xsl:value-of select="InvoiceId"/>
              </ns7:Invoicenum>
              <ns7:Invoicetypelookupcode>CREDIT</ns7:Invoicetypelookupcode>
              <ns7:Operatingunit>
                <xsl:value-of select='dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm", "CONSUMER_REF_ID", /ApiResponseAPInvoice/APInvoices/APInvoice[$varDJJAPIdx]/EntityRefID, "EBS_OPERATING_UNIT_NAME", "" )'/>
              </ns7:Operatingunit>
              <ns7:Orgid>
                <xsl:value-of select="$varOrgId"/>
              </ns7:Orgid>
              <ns7:Source>DJJ</ns7:Source>
              <ns7:Vendorname>
                <xsl:value-of select="oraext:query-database (concat (&quot;Select vendor_name  from po_vendors where vendor_id = (SELECT vendor_id FROM po_vendor_sites_all WHERE vendor_site_id = '&quot;, $varVendorSiteId, &quot;')&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; )"/>
              </ns7:Vendorname>
              <!--ns7:Vendorsitecode>
                                <xsl:value-of select="dvm:lookupValue ('oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_DEFAULTS.dvm', 'CONSUMER_REF_ID', /ApiResponseAPInvoice/APInvoices/APInvoice[$varDJJAPIdx]/EntityRefID, 'EBS_VENDOR_SITE_CODE', '' )"/>
                            </ns7:Vendorsitecode-->
              <ns7:Vendorsiteid>
                <xsl:value-of select="$varVendorSiteId"/>
              </ns7:Vendorsiteid>
              <ns7:ListOfInvoiceLines>
                <xsl:if test="MaterialAmt != 0">
                  <ns7:InvoiceLines>
                    <ns7:Amount>
                      <xsl:value-of select='format-number(MaterialAmt, "#.00")'/>
                    </ns7:Amount>
                    <ns7:Description>MaterialAmt</ns7:Description>
                    <ns7:Invoiceid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoiceid>
                    <ns7:Invoicelineid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoicelineid>
                    <ns7:Linetypelookupcode>ITEM</ns7:Linetypelookupcode>
                    <ns7:Matchoption>R</ns7:Matchoption>
                    <ns7:Orgid>
                      <xsl:value-of select="$varOrgId"/>
                    </ns7:Orgid>
                    <ns7:Polinelocationid>
                      <xsl:value-of select="$Invoke_GetPODetails_DB_GetPODetails_OutputVariable.OutputParameters/ns3:OutputParameters/ns3:P_INTF_LINE_COL_DTLS/ns3:PO_LINE_LOCATION_ID"/>
                    </ns7:Polinelocationid>
                    <xsl:if test='InvoiceTypeCode = "ADJ" and dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_ADJ_CODES_MAP.dvm", "ADJUSMENT_REASON_CODE",/ApiResponseAPInvoice/APInvoices/APInvoice[$varDJJAPIdx]/AdjCode,"PRICE_CORRECTION_FLAG", "Y","CONSUMER_REF_ID",/ApiResponseAPInvoice/APInvoices/APInvoice[$varDJJAPIdx]/EntityRefID) = "Y"'>
                      <ns7:Pricecorrectionflag>Y</ns7:Pricecorrectionflag>
                      <ns7:Pricecorrectinvlinenum>
                        <xsl:value-of select="$Invoke_GetPODetails_DB_GetPODetails_OutputVariable.OutputParameters/ns3:OutputParameters/ns3:P_INTF_LINE_COL_DTLS/ns3:INV_LINE_NUM"/>
                      </ns7:Pricecorrectinvlinenum>
                      <ns7:Pricecorrectinvnum>
                        <xsl:value-of select="$Invoke_GetPODetails_DB_GetPODetails_OutputVariable.OutputParameters/ns3:OutputParameters/ns3:P_INTF_LINE_COL_DTLS/ns3:INVOICE_NUM"/>
                      </ns7:Pricecorrectinvnum>
                    </xsl:if>
                    <!--<ns7:Quantityinvoiced>
                      <xsl:value-of select="InvWgtLB"/>
                    </ns7:Quantityinvoiced>-->
                    <xsl:choose>
                      <xsl:when test='InvoiceTypeCode = "ADJ" and dvm:lookupValue ("oramds:/apps/EIAMetadata/CommonArtifacts/dvm/DJJ_EBS_DIVISION_ADJ_CODES_MAP.dvm", "ADJUSMENT_REASON_CODE",/ApiResponseAPInvoice/APInvoices/APInvoice[$varDJJAPIdx]/AdjCode,"PRICE_CORRECTION_FLAG", "Y","CONSUMER_REF_ID",/ApiResponseAPInvoice/APInvoices/APInvoice[$varDJJAPIdx]/EntityRefID) = "Y"'>
                        <ns7:Quantityinvoiced>
                          <!--<xsl:value-of select="InvWgtLB"/>-->
                          <xsl:value-of select="$Invoke_GetPODetails_DB_GetPODetails_OutputVariable.OutputParameters/ns3:OutputParameters/ns3:P_INTF_LINE_COL_DTLS/ns3:QUANTITY_INVOICED"/>
                        </ns7:Quantityinvoiced>
                      </xsl:when>
                      <xsl:otherwise>
                        <ns7:Quantityinvoiced>
                          <xsl:value-of select="InvWgtLB"/>
                        </ns7:Quantityinvoiced>
                      </xsl:otherwise>
                    </xsl:choose>
                    <ns7:Rcvtransactionid>
                      <xsl:value-of select="$Invoke_GetPODetails_DB_GetPODetails_OutputVariable.OutputParameters/ns3:OutputParameters/ns3:P_INTF_LINE_COL_DTLS/ns3:RCV_TRANSACTION_ID"/>
                    </ns7:Rcvtransactionid>
                  </ns7:InvoiceLines>
                </xsl:if>
                <xsl:if test="FrtAmt != 0">
                  <ns7:InvoiceLines>
                    <ns7:Amount>
                      <xsl:value-of select='format-number(FrtAmt, "#.00")'/>
                    </ns7:Amount>
                    <ns7:Description>FrtAmt</ns7:Description>
                    <ns7:Distcodeconcatenated>
                      <xsl:value-of select="concat(oraext:query-database (concat (&quot;select lookup_code FROM fnd_lookup_values_vl flv, hr_operating_units hou WHERE flv.meaning = hou.name AND hou.organization_id = '&quot;, $varOrgId, &quot;' AND (flv.lookup_type = 'XXNUC_AP_CP_FREIGHT_INV_DIV' AND flv.enabled_flag = 'Y') AND (flv.end_date_active IS NULL OR flv.end_Date_active >= SYSDATE)&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; ),$varEBS_FRIEGHT_GL_CC)"/>
                    </ns7:Distcodeconcatenated>
                    <ns7:Invoiceid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoiceid>
                    <ns7:Invoicelineid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoicelineid>
                    <ns7:Linetypelookupcode>FREIGHT</ns7:Linetypelookupcode>
                    <ns7:Orgid>
                      <xsl:value-of select="$varOrgId"/>
                    </ns7:Orgid>
                  </ns7:InvoiceLines>
                </xsl:if>
                <xsl:if test="DeadFrtAmt != 0">
                  <ns7:InvoiceLines>
                    <ns7:Amount>
                      <xsl:value-of select='format-number(DeadFrtAmt, "#.00")'/>
                    </ns7:Amount>
                    <ns7:Description>DeadFrtAmt</ns7:Description>
                    <ns7:Distcodeconcatenated>
                      <xsl:value-of select="concat(oraext:query-database (concat (&quot;select lookup_code FROM fnd_lookup_values_vl flv, hr_operating_units hou WHERE flv.meaning = hou.name AND hou.organization_id = '&quot;, $varOrgId, &quot;' AND (flv.lookup_type = 'XXNUC_AP_CP_FREIGHT_INV_DIV' AND flv.enabled_flag = 'Y') AND (flv.end_date_active IS NULL OR flv.end_Date_active >= SYSDATE)&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; ),$varEBS_FRIEGHT_GL_CC)"/>
                    </ns7:Distcodeconcatenated>
                    <ns7:Invoiceid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoiceid>
                    <ns7:Invoicelineid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoicelineid>
                    <ns7:Linetypelookupcode>FREIGHT</ns7:Linetypelookupcode>
                    <ns7:Orgid>
                      <xsl:value-of select="$varOrgId"/>
                    </ns7:Orgid>
                  </ns7:InvoiceLines>
                </xsl:if>
                <xsl:if test="FrtDifferential != 0">
                  <ns7:InvoiceLines>
                    <ns7:Amount>
                      <xsl:value-of select='format-number(FrtDifferential, "#.00")'/>
                    </ns7:Amount>
                    <ns7:Description>FrtDifferential</ns7:Description>
                    <ns7:Distcodeconcatenated>
                      <xsl:value-of select="concat(oraext:query-database (concat (&quot;select lookup_code FROM fnd_lookup_values_vl flv, hr_operating_units hou WHERE flv.meaning = hou.name AND hou.organization_id = '&quot;, $varOrgId, &quot;' AND (flv.lookup_type = 'XXNUC_AP_CP_FREIGHT_INV_DIV' AND flv.enabled_flag = 'Y') AND (flv.end_date_active IS NULL OR flv.end_Date_active >= SYSDATE)&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; ),$varEBS_FRIEGHT_GL_CC)"/>
                    </ns7:Distcodeconcatenated>
                    <ns7:Invoiceid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoiceid>
                    <ns7:Invoicelineid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoicelineid>
                    <ns7:Linetypelookupcode>FREIGHT</ns7:Linetypelookupcode>
                    <ns7:Orgid>
                      <xsl:value-of select="$varOrgId"/>
                    </ns7:Orgid>
                  </ns7:InvoiceLines>
                </xsl:if>
                <xsl:if test="MiscChgAmt != 0">
                  <ns7:InvoiceLines>
                    <ns7:Amount>
                      <xsl:value-of select='format-number(MiscChgAmt, "#.00")'/>
                    </ns7:Amount>
                    <ns7:Description>MiscChgAmt</ns7:Description>
                    <ns7:Distcodeconcatenated>
                      <xsl:value-of select="concat(oraext:query-database (concat (&quot;select lookup_code FROM fnd_lookup_values_vl flv, hr_operating_units hou WHERE flv.meaning = hou.name AND hou.organization_id = '&quot;, $varOrgId, &quot;' AND (flv.lookup_type = 'XXNUC_AP_CP_FREIGHT_INV_DIV' AND flv.enabled_flag = 'Y') AND (flv.end_date_active IS NULL OR flv.end_Date_active >= SYSDATE)&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; ),$varEBS_MISCELLANEOUS_GL_CC)"/>
                    </ns7:Distcodeconcatenated>
                    <ns7:Invoiceid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoiceid>
                    <ns7:Invoicelineid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoicelineid>
                    <ns7:Linetypelookupcode>MISCELLANEOUS</ns7:Linetypelookupcode>
                    <ns7:Orgid>
                      <xsl:value-of select="$varOrgId"/>
                    </ns7:Orgid>
                  </ns7:InvoiceLines>
                </xsl:if>
                <xsl:if test="CommisionAmt != 0">
                  <ns7:InvoiceLines>
                    <ns7:Amount>
                      <xsl:value-of select='format-number(CommisionAmt, "#.00")'/>
                    </ns7:Amount>
                    <ns7:Description>CommisionAmt</ns7:Description>
                    <ns7:Distcodeconcatenated>
                      <xsl:value-of select="concat(oraext:query-database (concat (&quot;select lookup_code FROM fnd_lookup_values_vl flv, hr_operating_units hou WHERE flv.meaning = hou.name AND hou.organization_id = '&quot;, $varOrgId, &quot;' AND (flv.lookup_type = 'XXNUC_AP_CP_FREIGHT_INV_DIV' AND flv.enabled_flag = 'Y') AND (flv.end_date_active IS NULL OR flv.end_Date_active >= SYSDATE)&quot; ), false ( ), false ( ), &quot;jdbc/ebsapps&quot; ),$varEBS_MISCELLANEOUS_GL_CC)"/>
                    </ns7:Distcodeconcatenated>
                    <ns7:Invoiceid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoiceid>
                    <ns7:Invoicelineid>
                      <xsl:value-of select="$varInvoiceId"/>
                    </ns7:Invoicelineid>
                    <ns7:Linetypelookupcode>MISCELLANEOUS</ns7:Linetypelookupcode>
                    <ns7:Orgid>
                      <xsl:value-of select="$varOrgId"/>
                    </ns7:Orgid>
                  </ns7:InvoiceLines>
                </xsl:if>
              </ns7:ListOfInvoiceLines>
            </ns7:Invoice>
          </xsl:if>
        </xsl:for-each>
      </tns:Invoice>
    </tns:CreateListOfInvoicesRequestMessage>
  </xsl:template>
</xsl:stylesheet>
