<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ns0="http://xmlns.eia.com/AO/EBiz/P2P/InvoiceABM/1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:ns8="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:tns="http://xmlns.oracle.com/SOAAppDev/NUC_APInvoice_DJJ_EBiz_ABF/DJJGetInvoiceV1"
                xmlns:ns2="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns3="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:ns4="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns1="http://schemas.oracle.com/service/bpel/common"
                xmlns:ns5="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns6="http://xmlns.eia.com/AO/EBiz/P2P/InvoiceAO/1.0"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns10="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:ns9="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns13="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns12="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns11="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:ns14="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns15="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency">
  <oracle-xsl-mapper:schema>
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DJJGetInvoiceV1.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateListOfInvoicesRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/InvoiceABM/1.0"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DJJGetInvoiceV1.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateInvoiceRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/InvoiceABM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
  </oracle-xsl-mapper:schema>
  <xsl:template match="/">
    <ns0:CreateInvoiceRequestMessage>
      <ns9:HeaderRq>
        <ns9:TransactionRequestID>
          <xsl:value-of select="/ns0:CreateListOfInvoicesRequestMessage/ns9:HeaderRq/ns9:TransactionRequestID"/>
        </ns9:TransactionRequestID>
        <ns9:Language>
          <xsl:value-of select="/ns0:CreateListOfInvoicesRequestMessage/ns9:HeaderRq/ns9:Language"/>
        </ns9:Language>
        <ns9:ComponentID>
          <xsl:value-of select="/ns0:CreateListOfInvoicesRequestMessage/ns9:HeaderRq/ns9:ComponentID"/>
        </ns9:ComponentID>
        <ns9:ServiceName>
          <xsl:value-of select="/ns0:CreateListOfInvoicesRequestMessage/ns9:HeaderRq/ns9:ServiceName"/>
        </ns9:ServiceName>
        <ns9:TransactionIDREF>
          <xsl:value-of select="/ns0:CreateListOfInvoicesRequestMessage/ns9:HeaderRq/ns9:TransactionIDREF"/>
        </ns9:TransactionIDREF>
        <ns9:TransactionName>
          <xsl:value-of select="/ns0:CreateListOfInvoicesRequestMessage/ns9:HeaderRq/ns9:TransactionName"/>
        </ns9:TransactionName>
        <ns9:Source>
          <xsl:value-of select="/ns0:CreateListOfInvoicesRequestMessage/ns9:HeaderRq/ns9:Source"/>
        </ns9:Source>
        <ns9:Target>
          <xsl:value-of select="/ns0:CreateListOfInvoicesRequestMessage/ns9:HeaderRq/ns9:Target"/>
        </ns9:Target>
        <ns9:TimeStamp>
          <xsl:value-of select="/ns0:CreateListOfInvoicesRequestMessage/ns9:HeaderRq/ns9:TimeStamp"/>
        </ns9:TimeStamp>
      </ns9:HeaderRq>
      <ns0:AppsContext>
        <ns10:UserName>
          <xsl:value-of select="/ns0:CreateListOfInvoicesRequestMessage/ns0:AppsContext/ns10:UserName"/>
        </ns10:UserName>
        <ns10:ResponsibilityName>
          <xsl:value-of select="/ns0:CreateListOfInvoicesRequestMessage/ns0:AppsContext/ns10:ResponsibilityName"/>
        </ns10:ResponsibilityName>
        <ns10:OrgId>
          <xsl:value-of select="/ns0:CreateListOfInvoicesRequestMessage/ns0:AppsContext/ns10:OrgId"/>
        </ns10:OrgId>
      </ns0:AppsContext>
      <xsl:for-each select="/ns0:CreateListOfInvoicesRequestMessage/ns0:Invoice/ns6:Invoice">
        <ns0:Invoice>
          <ns6:Gldate>
            <xsl:value-of select="ns6:Gldate"/>
          </ns6:Gldate>
          <ns6:Invoiceamount>
            <xsl:value-of select="ns6:Invoiceamount"/>
          </ns6:Invoiceamount>
          <ns6:Invoicecurrencycode>
            <xsl:value-of select="ns6:Invoicecurrencycode"/>
          </ns6:Invoicecurrencycode>
          <ns6:Invoicedate>
            <xsl:value-of select="ns6:Invoicedate"/>
          </ns6:Invoicedate>
          <ns6:Invoiceid>
            <xsl:value-of select="ns6:Invoiceid"/>
          </ns6:Invoiceid>
          <ns6:Invoicenum>
            <xsl:value-of select="ns6:Invoicenum"/>
          </ns6:Invoicenum>
          <ns6:Invoicetypelookupcode>
            <xsl:value-of select="ns6:Invoicetypelookupcode"/>
          </ns6:Invoicetypelookupcode>
          <ns6:Operatingunit>
            <xsl:value-of select="ns6:Operatingunit"/>
          </ns6:Operatingunit>
          <ns6:Orgid>
            <xsl:value-of select="ns6:Orgid"/>
          </ns6:Orgid>
          <ns6:Source>
            <xsl:value-of select="ns6:Source"/>
          </ns6:Source>
          <ns6:Vendorname>
            <xsl:value-of select="ns6:Vendorname"/>
          </ns6:Vendorname>
          <ns6:Vendorsitecode>
            <xsl:value-of select="ns6:Vendorsitecode"/>
          </ns6:Vendorsitecode>
          <ns6:ListOfInvoiceLines>
            <xsl:for-each select="ns6:ListOfInvoiceLines/ns6:InvoiceLines">
              <ns6:InvoiceLines>
                <ns6:Amount>
                  <xsl:value-of select="ns6:Amount"/>
                </ns6:Amount>
                <ns6:Costfactorid>
                  <xsl:value-of select="ns6:Costfactorid"/>
                </ns6:Costfactorid>
                <ns6:Invoiceid>
                  <xsl:value-of select="ns6:Invoiceid"/>
                </ns6:Invoiceid>
                <ns6:Invoicelineid>
                  <xsl:value-of select="ns6:Invoicelineid"/>
                </ns6:Invoicelineid>
                <ns6:Linenumber>
                  <xsl:value-of select="ns6:Linenumber"/>
                </ns6:Linenumber>
                <ns6:Linetypelookupcode>
                  <xsl:value-of select="ns6:Linetypelookupcode"/>
                </ns6:Linetypelookupcode>
                <ns6:Matchoption>
                  <xsl:value-of select="ns6:Matchoption"/>
                </ns6:Matchoption>
                <ns6:Orgid>
                  <xsl:value-of select="ns6:Orgid"/>
                </ns6:Orgid>
                <ns6:Poshipmentnum>
                  <xsl:value-of select="ns6:Poshipmentnum"/>
                </ns6:Poshipmentnum>
                <ns6:Rcvtransactionid>
                  <xsl:value-of select="ns6:Rcvtransactionid"/>
                </ns6:Rcvtransactionid>
                <ns6:Receiptnumber>
                  <xsl:value-of select="ns6:Receiptnumber"/>
                </ns6:Receiptnumber>
              </ns6:InvoiceLines>
            </xsl:for-each>
          </ns6:ListOfInvoiceLines>
        </ns0:Invoice>
      </xsl:for-each>
    </ns0:CreateInvoiceRequestMessage>
  </xsl:template>
</xsl:stylesheet>
