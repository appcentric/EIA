<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:eia="http://xmlns.eia.com/extensions/1.0" xmlns:tns="http://xmlns.eia.com/ABS/EBiz/PaymentABS/1.0"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ns12="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0"
                xmlns:ns1="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptAO/1.0"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:ns3="http://xmlns.eia.com/AO/EBiz/common/SupplierAO/1.0"
                xmlns:ns2="http://xmlns.eia.com/AO/EBiz/P2P/PaymentAO/1.0"
                xmlns:ns6="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:ns13="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ns14="http://xmlns.eia.com/AO/EBiz/common/CategoryAO/1.0"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns0="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns15="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ns4="http://xmlns.eia.com/AO/EBiz/P2P/InvoiceAO/1.0"
                xmlns:ns5="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ns10="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:ns9="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns8="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns11="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderAO/1.0"
                xmlns:paymentam="http://xmlns.eia.com/AO/EBiz/P2P/PaymentAM/1.0"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl tns ns12 ns1 ns2 ns6 ns13 soap12 soap wsdl mime ns14 core ns0 ns15 ns4 ns5 ns7 xsd ns10 ns9 ns8 ns11 paymentam bpws xp20 eia bpel bpm utl ora socket mhdr oraext dvm hwf med ids xdk xref ldap"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:ns18="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns19="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns20="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:ns16="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns17="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/PaymentABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryListOfPaymentResponseMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/PaymentAM/1.0"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/PaymentABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryListOfPaymentResponseMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/PaymentAM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <oracle-xsl-mapper:mapShowPrefixes type="true"/>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [TUE SEP 29 20:15:45 CDT 2015].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <paymentam:QueryListOfPaymentResponseMessage>
      <ns18:HeaderRs>
        <ns18:TransactionID>
          <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:TransactionID"/>
        </ns18:TransactionID>
        <ns18:RequestDetails>
          <ns18:TransactionRequestID>
            <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:TransactionRequestID"/>
          </ns18:TransactionRequestID>
          <ns18:Language>
            <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:Language"/>
          </ns18:Language>
          <ns18:ComponentID>
            <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:ComponentID"/>
          </ns18:ComponentID>
          <ns18:ServiceName>
            <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:ServiceName"/>
          </ns18:ServiceName>
          <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:TransactionIDREF">
            <ns18:TransactionIDREF>
              <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:TransactionIDREF"/>
            </ns18:TransactionIDREF>
          </xsl:if>
          <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:TransactionName">
            <ns18:TransactionName>
              <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:TransactionName"/>
            </ns18:TransactionName>
          </xsl:if>
          <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:FileName">
            <ns18:FileName>
              <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:FileName"/>
            </ns18:FileName>
          </xsl:if>
          <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:FileInstanceID">
            <ns18:FileInstanceID>
              <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:FileInstanceID"/>
            </ns18:FileInstanceID>
          </xsl:if>
          <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:Source">
            <ns18:Source>
              <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:Source"/>
            </ns18:Source>
          </xsl:if>
          <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:Target">
            <ns18:Target>
              <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:Target"/>
            </ns18:Target>
          </xsl:if>
          <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:HostName">
            <ns18:HostName>
              <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:HostName"/>
            </ns18:HostName>
          </xsl:if>
          <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:UserName">
            <ns18:UserName>
              <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:UserName"/>
            </ns18:UserName>
          </xsl:if>
          <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:UserRole">
            <ns18:UserRole>
              <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:UserRole"/>
            </ns18:UserRole>
          </xsl:if>
          <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:AdminEmail">
            <ns18:AdminEmail>
              <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:AdminEmail"/>
            </ns18:AdminEmail>
          </xsl:if>
          <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:ApplicationResponsibility">
            <ns18:ApplicationResponsibility>
              <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:ApplicationResponsibility"/>
            </ns18:ApplicationResponsibility>
          </xsl:if>
          <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:EOFFlag">
            <ns18:EOFFlag>
              <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:EOFFlag"/>
            </ns18:EOFFlag>
          </xsl:if>
          <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:SOFFlag">
            <ns18:SOFFlag>
              <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:SOFFlag"/>
            </ns18:SOFFlag>
          </xsl:if>
          <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:FileRecordCount">
            <ns18:FileRecordCount>
              <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:FileRecordCount"/>
            </ns18:FileRecordCount>
          </xsl:if>
          <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:TimeStamp">
            <ns18:TimeStamp>
              <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:RequestDetails/ns18:TimeStamp"/>
            </ns18:TimeStamp>
          </xsl:if>
        </ns18:RequestDetails>
        <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:ResultCount">
          <ns18:ResultCount>
            <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:ResultCount"/>
          </ns18:ResultCount>
        </xsl:if>
        <ns18:Status>
          <ns18:Status>
            <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:Status/ns18:Status"/>
          </ns18:Status>
          <ns18:StatusFreeText>
            <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:Status/ns18:StatusFreeText"/>
          </ns18:StatusFreeText>
          <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:Status/ns18:Exceptions">
            <ns18:Exceptions>
              <ns18:ObjectPath>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:Status/ns18:Exceptions/ns18:ObjectPath"/>
              </ns18:ObjectPath>
              <ns18:StatusCode>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:Status/ns18:Exceptions/ns18:StatusCode"/>
              </ns18:StatusCode>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:Status/ns18:Exceptions/ns18:StatusText">
                <ns18:StatusText>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:Status/ns18:Exceptions/ns18:StatusText"/>
                </ns18:StatusText>
              </xsl:if>
              <xsl:for-each select="/paymentam:QueryListOfPaymentResponseMessage/ns18:HeaderRs/ns18:Status/ns18:Exceptions/ns18:AdditionalStatus">
                <ns18:AdditionalStatus>
                  <ns18:ObjectPath>
                    <xsl:value-of select="ns18:ObjectPath"/>
                  </ns18:ObjectPath>
                  <ns18:StatusCode>
                    <xsl:value-of select="ns18:StatusCode"/>
                  </ns18:StatusCode>
                  <xsl:if test="ns18:StatusText">
                    <ns18:StatusText>
                      <xsl:value-of select="ns18:StatusText"/>
                    </ns18:StatusText>
                  </xsl:if>
                </ns18:AdditionalStatus>
              </xsl:for-each>
            </ns18:Exceptions>
          </xsl:if>
        </ns18:Status>
      </ns18:HeaderRs>
      <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment">
        <paymentam:Payment>
          <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment">
            <paymentam:Payment>
              <ns2:BasicPayment>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment/ns2:Identifier">
                  <ns2:Identifier>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment/ns2:Identifier"/>
                  </ns2:Identifier>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment/ns2:PaymentMethodCode">
                  <ns2:PaymentMethodCode>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment/ns2:PaymentMethodCode"/>
                  </ns2:PaymentMethodCode>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment/ns2:PaymentAmount">
                  <ns2:PaymentAmount>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment/ns2:PaymentAmount"/>
                  </ns2:PaymentAmount>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment/ns2:PaymentDate">
                  <ns2:PaymentDate>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment/ns2:PaymentDate"/>
                  </ns2:PaymentDate>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment/ns2:PaymentCurrencyCode">
                  <ns2:PaymentCurrencyCode>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment/ns2:PaymentCurrencyCode"/>
                  </ns2:PaymentCurrencyCode>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment/ns2:PaymentReferenceNumber">
                  <ns2:PaymentReferenceNumber>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment/ns2:PaymentReferenceNumber"/>
                  </ns2:PaymentReferenceNumber>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment/ns2:PaperDocumentNumber">
                  <ns2:PaperDocumentNumber>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment/ns2:PaperDocumentNumber"/>
                  </ns2:PaperDocumentNumber>
                </xsl:if>
              </ns2:BasicPayment>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentservicerequestid">
                <ns2:Paymentservicerequestid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentservicerequestid"/>
                </ns2:Paymentservicerequestid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Processtype">
                <ns2:Processtype>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Processtype"/>
                </ns2:Processtype>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentstatus">
                <ns2:Paymentstatus>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentstatus"/>
                </ns2:Paymentstatus>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentscompleteflag">
                <ns2:Paymentscompleteflag>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentscompleteflag"/>
                </ns2:Paymentscompleteflag>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentfunction">
                <ns2:Paymentfunction>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentfunction"/>
                </ns2:Paymentfunction>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentamount">
                <ns2:Paymentamount>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentamount"/>
                </ns2:Paymentamount>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Billpayableflag">
                <ns2:Billpayableflag>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Billpayableflag"/>
                </ns2:Billpayableflag>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Exclusivepaymentflag">
                <ns2:Exclusivepaymentflag>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Exclusivepaymentflag"/>
                </ns2:Exclusivepaymentflag>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Separateremitadvicereqflag">
                <ns2:Separateremitadvicereqflag>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Separateremitadvicereqflag"/>
                </ns2:Separateremitadvicereqflag>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Internalbankaccountid">
                <ns2:Internalbankaccountid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Internalbankaccountid"/>
                </ns2:Internalbankaccountid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Orgid">
                <ns2:Orgid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Orgid"/>
                </ns2:Orgid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Orgtype">
                <ns2:Orgtype>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Orgtype"/>
                </ns2:Orgtype>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Legalentityid">
                <ns2:Legalentityid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Legalentityid"/>
                </ns2:Legalentityid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Declarepaymentflag">
                <ns2:Declarepaymentflag>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Declarepaymentflag"/>
                </ns2:Declarepaymentflag>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Deliverychannelcode">
                <ns2:Deliverychannelcode>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Deliverychannelcode"/>
                </ns2:Deliverychannelcode>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extpayeeid">
                <ns2:Extpayeeid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extpayeeid"/>
                </ns2:Extpayeeid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentinstructionid">
                <ns2:Paymentinstructionid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentinstructionid"/>
                </ns2:Paymentinstructionid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentprofileid">
                <ns2:Paymentprofileid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentprofileid"/>
                </ns2:Paymentprofileid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Pregroupedpaymentflag">
                <ns2:Pregroupedpaymentflag>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Pregroupedpaymentflag"/>
                </ns2:Pregroupedpaymentflag>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopconfirmedflag">
                <ns2:Stopconfirmedflag>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopconfirmedflag"/>
                </ns2:Stopconfirmedflag>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopreleasedflag">
                <ns2:Stopreleasedflag>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopreleasedflag"/>
                </ns2:Stopreleasedflag>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stoprequestplacedflag">
                <ns2:Stoprequestplacedflag>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stoprequestplacedflag"/>
                </ns2:Stoprequestplacedflag>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Createdby">
                <ns2:Createdby>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Createdby"/>
                </ns2:Createdby>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Creationdate">
                <ns2:Creationdate>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Creationdate"/>
                </ns2:Creationdate>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Lastupdatedby">
                <ns2:Lastupdatedby>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Lastupdatedby"/>
                </ns2:Lastupdatedby>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Lastupdatelogin">
                <ns2:Lastupdatelogin>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Lastupdatelogin"/>
                </ns2:Lastupdatelogin>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Lastupdatedate">
                <ns2:Lastupdatedate>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Lastupdatedate"/>
                </ns2:Lastupdatedate>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Objectversionnumber">
                <ns2:Objectversionnumber>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Objectversionnumber"/>
                </ns2:Objectversionnumber>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeepartyid">
                <ns2:Payeepartyid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeepartyid"/>
                </ns2:Payeepartyid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Partysiteid">
                <ns2:Partysiteid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Partysiteid"/>
                </ns2:Partysiteid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Suppliersiteid">
                <ns2:Suppliersiteid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Suppliersiteid"/>
                </ns2:Suppliersiteid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentreasoncode">
                <ns2:Paymentreasoncode>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentreasoncode"/>
                </ns2:Paymentreasoncode>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentreasoncomments">
                <ns2:Paymentreasoncomments>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentreasoncomments"/>
                </ns2:Paymentreasoncomments>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Anticipatedvaluedate">
                <ns2:Anticipatedvaluedate>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Anticipatedvaluedate"/>
                </ns2:Anticipatedvaluedate>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Declarationamount">
                <ns2:Declarationamount>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Declarationamount"/>
                </ns2:Declarationamount>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Declarationcurrencycode">
                <ns2:Declarationcurrencycode>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Declarationcurrencycode"/>
                </ns2:Declarationcurrencycode>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Discountamounttaken">
                <ns2:Discountamounttaken>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Discountamounttaken"/>
                </ns2:Discountamounttaken>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentdetails">
                <ns2:Paymentdetails>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentdetails"/>
                </ns2:Paymentdetails>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankchargebearer">
                <ns2:Bankchargebearer>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankchargebearer"/>
                </ns2:Bankchargebearer>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankchargeamount">
                <ns2:Bankchargeamount>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankchargeamount"/>
                </ns2:Bankchargeamount>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Settlementpriority">
                <ns2:Settlementpriority>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Settlementpriority"/>
                </ns2:Settlementpriority>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Remittancemessage1">
                <ns2:Remittancemessage1>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Remittancemessage1"/>
                </ns2:Remittancemessage1>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Remittancemessage2">
                <ns2:Remittancemessage2>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Remittancemessage2"/>
                </ns2:Remittancemessage2>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Remittancemessage3">
                <ns2:Remittancemessage3>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Remittancemessage3"/>
                </ns2:Remittancemessage3>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankassignedrefcode">
                <ns2:Bankassignedrefcode>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankassignedrefcode"/>
                </ns2:Bankassignedrefcode>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Externalbankaccountid">
                <ns2:Externalbankaccountid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Externalbankaccountid"/>
                </ns2:Externalbankaccountid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Uniqueremittanceidentifier">
                <ns2:Uniqueremittanceidentifier>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Uniqueremittanceidentifier"/>
                </ns2:Uniqueremittanceidentifier>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Uricheckdigit">
                <ns2:Uricheckdigit>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Uricheckdigit"/>
                </ns2:Uricheckdigit>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankinstruction1code">
                <ns2:Bankinstruction1code>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankinstruction1code"/>
                </ns2:Bankinstruction1code>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankinstruction2code">
                <ns2:Bankinstruction2code>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankinstruction2code"/>
                </ns2:Bankinstruction2code>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankinstructiondetails">
                <ns2:Bankinstructiondetails>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankinstructiondetails"/>
                </ns2:Bankinstructiondetails>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymenttextmessage1">
                <ns2:Paymenttextmessage1>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymenttextmessage1"/>
                </ns2:Paymenttextmessage1>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymenttextmessage2">
                <ns2:Paymenttextmessage2>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymenttextmessage2"/>
                </ns2:Paymenttextmessage2>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymenttextmessage3">
                <ns2:Paymenttextmessage3>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymenttextmessage3"/>
                </ns2:Paymenttextmessage3>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Maturitydate">
                <ns2:Maturitydate>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Maturitydate"/>
                </ns2:Maturitydate>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentduedate">
                <ns2:Paymentduedate>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentduedate"/>
                </ns2:Paymentduedate>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Documentcategorycode">
                <ns2:Documentcategorycode>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Documentcategorycode"/>
                </ns2:Documentcategorycode>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Documentsequenceid">
                <ns2:Documentsequenceid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Documentsequenceid"/>
                </ns2:Documentsequenceid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Documentsequencevalue">
                <ns2:Documentsequencevalue>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Documentsequencevalue"/>
                </ns2:Documentsequencevalue>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Beneficiaryparty">
                <ns2:Beneficiaryparty>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Beneficiaryparty"/>
                </ns2:Beneficiaryparty>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopconfirmedby">
                <ns2:Stopconfirmedby>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopconfirmedby"/>
                </ns2:Stopconfirmedby>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopconfirmdate">
                <ns2:Stopconfirmdate>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopconfirmdate"/>
                </ns2:Stopconfirmdate>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopconfirmreason">
                <ns2:Stopconfirmreason>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopconfirmreason"/>
                </ns2:Stopconfirmreason>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopconfirmreference">
                <ns2:Stopconfirmreference>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopconfirmreference"/>
                </ns2:Stopconfirmreference>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopreleasedby">
                <ns2:Stopreleasedby>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopreleasedby"/>
                </ns2:Stopreleasedby>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopreleasedate">
                <ns2:Stopreleasedate>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopreleasedate"/>
                </ns2:Stopreleasedate>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopreleasereason">
                <ns2:Stopreleasereason>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopreleasereason"/>
                </ns2:Stopreleasereason>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopreleasereference">
                <ns2:Stopreleasereference>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopreleasereference"/>
                </ns2:Stopreleasereference>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stoprequestdate">
                <ns2:Stoprequestdate>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stoprequestdate"/>
                </ns2:Stoprequestdate>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stoprequestplacedby">
                <ns2:Stoprequestplacedby>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stoprequestplacedby"/>
                </ns2:Stoprequestplacedby>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stoprequestreason">
                <ns2:Stoprequestreason>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stoprequestreason"/>
                </ns2:Stoprequestreason>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stoprequestreference">
                <ns2:Stoprequestreference>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stoprequestreference"/>
                </ns2:Stoprequestreference>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Voidedby">
                <ns2:Voidedby>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Voidedby"/>
                </ns2:Voidedby>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Voiddate">
                <ns2:Voiddate>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Voiddate"/>
                </ns2:Voiddate>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Voidreason">
                <ns2:Voidreason>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Voidreason"/>
                </ns2:Voidreason>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Remittolocationid">
                <ns2:Remittolocationid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Remittolocationid"/>
                </ns2:Remittolocationid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Completedpmtsgroupid">
                <ns2:Completedpmtsgroupid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Completedpmtsgroupid"/>
                </ns2:Completedpmtsgroupid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbranchnumber">
                <ns2:Extbranchnumber>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbranchnumber"/>
                </ns2:Extbranchnumber>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbanknumber">
                <ns2:Extbanknumber>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbanknumber"/>
                </ns2:Extbanknumber>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankaccountname">
                <ns2:Extbankaccountname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankaccountname"/>
                </ns2:Extbankaccountname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankaccountnumber">
                <ns2:Extbankaccountnumber>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankaccountnumber"/>
                </ns2:Extbankaccountnumber>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankaccounttype">
                <ns2:Extbankaccounttype>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankaccounttype"/>
                </ns2:Extbankaccounttype>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankaccountibannumber">
                <ns2:Extbankaccountibannumber>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankaccountibannumber"/>
                </ns2:Extbankaccountibannumber>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeename">
                <ns2:Payeename>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeename"/>
                </ns2:Payeename>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeaddress1">
                <ns2:Payeeaddress1>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeaddress1"/>
                </ns2:Payeeaddress1>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeaddress2">
                <ns2:Payeeaddress2>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeaddress2"/>
                </ns2:Payeeaddress2>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeaddress3">
                <ns2:Payeeaddress3>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeaddress3"/>
                </ns2:Payeeaddress3>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeaddress4">
                <ns2:Payeeaddress4>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeaddress4"/>
                </ns2:Payeeaddress4>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeecity">
                <ns2:Payeecity>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeecity"/>
                </ns2:Payeecity>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeepostalcode">
                <ns2:Payeepostalcode>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeepostalcode"/>
                </ns2:Payeepostalcode>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeestate">
                <ns2:Payeestate>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeestate"/>
                </ns2:Payeestate>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeprovince">
                <ns2:Payeeprovince>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeprovince"/>
                </ns2:Payeeprovince>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeecounty">
                <ns2:Payeecounty>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeecounty"/>
                </ns2:Payeecounty>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeecountry">
                <ns2:Payeecountry>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeecountry"/>
                </ns2:Payeecountry>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Remitadvicedeliverymethod">
                <ns2:Remitadvicedeliverymethod>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Remitadvicedeliverymethod"/>
                </ns2:Remitadvicedeliverymethod>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Remitadviceemail">
                <ns2:Remitadviceemail>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Remitadviceemail"/>
                </ns2:Remitadviceemail>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Remitadvicefax">
                <ns2:Remitadvicefax>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Remitadvicefax"/>
                </ns2:Remitadvicefax>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentprofilesysname">
                <ns2:Paymentprofilesysname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentprofilesysname"/>
                </ns2:Paymentprofilesysname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentprofileacctname">
                <ns2:Paymentprofileacctname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentprofileacctname"/>
                </ns2:Paymentprofileacctname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentprocessrequestname">
                <ns2:Paymentprocessrequestname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentprocessrequestname"/>
                </ns2:Paymentprocessrequestname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Sourceproduct">
                <ns2:Sourceproduct>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Sourceproduct"/>
                </ns2:Sourceproduct>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentreasonformatvalue">
                <ns2:Paymentreasonformatvalue>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentreasonformatvalue"/>
                </ns2:Paymentreasonformatvalue>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Declarationexchratetype">
                <ns2:Declarationexchratetype>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Declarationexchratetype"/>
                </ns2:Declarationexchratetype>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Declarationformat">
                <ns2:Declarationformat>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Declarationformat"/>
                </ns2:Declarationformat>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Deliverychannelformatvalue">
                <ns2:Deliverychannelformatvalue>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Deliverychannelformatvalue"/>
                </ns2:Deliverychannelformatvalue>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankinstruction1formatvalue">
                <ns2:Bankinstruction1formatvalue>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankinstruction1formatvalue"/>
                </ns2:Bankinstruction1formatvalue>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankinstruction2formatvalue">
                <ns2:Bankinstruction2formatvalue>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankinstruction2formatvalue"/>
                </ns2:Bankinstruction2formatvalue>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Sradeliverymethod">
                <ns2:Sradeliverymethod>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Sradeliverymethod"/>
                </ns2:Sradeliverymethod>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankname">
                <ns2:Intbankname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankname"/>
                </ns2:Intbankname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbanknumber">
                <ns2:Intbanknumber>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbanknumber"/>
                </ns2:Intbanknumber>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Inteftswiftcode">
                <ns2:Inteftswiftcode>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Inteftswiftcode"/>
                </ns2:Inteftswiftcode>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankbranchname">
                <ns2:Intbankbranchname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankbranchname"/>
                </ns2:Intbankbranchname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankbranchnumber">
                <ns2:Intbankbranchnumber>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankbranchnumber"/>
                </ns2:Intbankbranchnumber>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankaccountname">
                <ns2:Intbankaccountname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankaccountname"/>
                </ns2:Intbankaccountname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankaccountnumber">
                <ns2:Intbankaccountnumber>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankaccountnumber"/>
                </ns2:Intbankaccountnumber>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankaccountiban">
                <ns2:Intbankaccountiban>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankaccountiban"/>
                </ns2:Intbankaccountiban>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankname">
                <ns2:Extbankname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankname"/>
                </ns2:Extbankname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Exteftswiftcode">
                <ns2:Exteftswiftcode>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Exteftswiftcode"/>
                </ns2:Exteftswiftcode>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankbranchname">
                <ns2:Extbankbranchname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankbranchname"/>
                </ns2:Extbankbranchname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Orgname">
                <ns2:Orgname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Orgname"/>
                </ns2:Orgname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerlegalentityname">
                <ns2:Payerlegalentityname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerlegalentityname"/>
                </ns2:Payerlegalentityname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerleregistrationnum">
                <ns2:Payerleregistrationnum>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerleregistrationnum"/>
                </ns2:Payerleregistrationnum>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payertaxregistrationnum">
                <ns2:Payertaxregistrationnum>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payertaxregistrationnum"/>
                </ns2:Payertaxregistrationnum>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeepartyname">
                <ns2:Payeepartyname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeepartyname"/>
                </ns2:Payeepartyname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeleregistrationnum">
                <ns2:Payeeleregistrationnum>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeleregistrationnum"/>
                </ns2:Payeeleregistrationnum>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeetaxregistrationnum">
                <ns2:Payeetaxregistrationnum>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeetaxregistrationnum"/>
                </ns2:Payeetaxregistrationnum>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerpartysitename">
                <ns2:Payerpartysitename>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerpartysitename"/>
                </ns2:Payerpartysitename>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeaddressconcat">
                <ns2:Payeeaddressconcat>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeaddressconcat"/>
                </ns2:Payeeaddressconcat>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Beneficiaryname">
                <ns2:Beneficiaryname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Beneficiaryname"/>
                </ns2:Beneficiaryname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerpartynumber">
                <ns2:Payerpartynumber>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerpartynumber"/>
                </ns2:Payerpartynumber>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeepartynumber">
                <ns2:Payeepartynumber>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeepartynumber"/>
                </ns2:Payeepartynumber>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeealternatename">
                <ns2:Payeealternatename>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeealternatename"/>
                </ns2:Payeealternatename>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeesitealternatename">
                <ns2:Payeesitealternatename>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeesitealternatename"/>
                </ns2:Payeesitealternatename>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeesuppliernumber">
                <ns2:Payeesuppliernumber>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeesuppliernumber"/>
                </ns2:Payeesuppliernumber>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeefirstpartyreference">
                <ns2:Payeefirstpartyreference>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeefirstpartyreference"/>
                </ns2:Payeefirstpartyreference>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankbranchrfcidentifier">
                <ns2:Intbankbranchrfcidentifier>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankbranchrfcidentifier"/>
                </ns2:Intbankbranchrfcidentifier>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankacctagencyloccode">
                <ns2:Intbankacctagencyloccode>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankacctagencyloccode"/>
                </ns2:Intbankacctagencyloccode>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerabbreviatedagencycode">
                <ns2:Payerabbreviatedagencycode>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerabbreviatedagencycode"/>
                </ns2:Payerabbreviatedagencycode>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerfederalusemployerid">
                <ns2:Payerfederalusemployerid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerfederalusemployerid"/>
                </ns2:Payerfederalusemployerid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankacctownerpartyid">
                <ns2:Extbankacctownerpartyid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankacctownerpartyid"/>
                </ns2:Extbankacctownerpartyid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankacctpmtfactorflag">
                <ns2:Extbankacctpmtfactorflag>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankacctpmtfactorflag"/>
                </ns2:Extbankacctpmtfactorflag>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Addresssource">
                <ns2:Addresssource>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Addresssource"/>
                </ns2:Addresssource>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Employeeaddresscode">
                <ns2:Employeeaddresscode>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Employeeaddresscode"/>
                </ns2:Employeeaddresscode>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Employeepersonid">
                <ns2:Employeepersonid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Employeepersonid"/>
                </ns2:Employeepersonid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Employeepaymentflag">
                <ns2:Employeepaymentflag>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Employeepaymentflag"/>
                </ns2:Employeepaymentflag>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Employeeaddressid">
                <ns2:Employeeaddressid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Employeeaddressid"/>
                </ns2:Employeeaddressid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Requestid">
                <ns2:Requestid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Requestid"/>
                </ns2:Requestid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankbranchpartyid">
                <ns2:Extbankbranchpartyid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankbranchpartyid"/>
                </ns2:Extbankbranchpartyid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankaltname">
                <ns2:Extbankaltname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankaltname"/>
                </ns2:Extbankaltname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankbranchaltname">
                <ns2:Extbankbranchaltname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankbranchaltname"/>
                </ns2:Extbankbranchaltname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankaccountaltname">
                <ns2:Extbankaccountaltname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankaccountaltname"/>
                </ns2:Extbankaccountaltname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankaccountnumelec">
                <ns2:Extbankaccountnumelec>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankaccountnumelec"/>
                </ns2:Extbankaccountnumelec>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankbranchlocationid">
                <ns2:Extbankbranchlocationid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankbranchlocationid"/>
                </ns2:Extbankbranchlocationid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankacctownerpartyname">
                <ns2:Extbankacctownerpartyname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankacctownerpartyname"/>
                </ns2:Extbankacctownerpartyname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankbranchpartyid">
                <ns2:Intbankbranchpartyid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankbranchpartyid"/>
                </ns2:Intbankbranchpartyid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankaltname">
                <ns2:Intbankaltname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankaltname"/>
                </ns2:Intbankaltname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankbranchaltname">
                <ns2:Intbankbranchaltname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankbranchaltname"/>
                </ns2:Intbankbranchaltname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankaccountaltname">
                <ns2:Intbankaccountaltname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankaccountaltname"/>
                </ns2:Intbankaccountaltname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankaccountnumelec">
                <ns2:Intbankaccountnumelec>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankaccountnumelec"/>
                </ns2:Intbankaccountnumelec>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankbranchlocationid">
                <ns2:Intbankbranchlocationid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankbranchlocationid"/>
                </ns2:Intbankbranchlocationid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankbrancheftusernum">
                <ns2:Intbankbrancheftusernum>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankbrancheftusernum"/>
                </ns2:Intbankbrancheftusernum>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerpartyid">
                <ns2:Payerpartyid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerpartyid"/>
                </ns2:Payerpartyid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerlocationid">
                <ns2:Payerlocationid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerlocationid"/>
                </ns2:Payerlocationid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerpartyattrcategory">
                <ns2:Payerpartyattrcategory>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerpartyattrcategory"/>
                </ns2:Payerpartyattrcategory>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerleattrcategory">
                <ns2:Payerleattrcategory>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerleattrcategory"/>
                </ns2:Payerleattrcategory>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeepartyattrcategory">
                <ns2:Payeepartyattrcategory>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeepartyattrcategory"/>
                </ns2:Payeepartyattrcategory>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeesupplierattrcategory">
                <ns2:Payeesupplierattrcategory>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeesupplierattrcategory"/>
                </ns2:Payeesupplierattrcategory>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeespplrsiteattrcategory">
                <ns2:Payeespplrsiteattrcategory>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeespplrsiteattrcategory"/>
                </ns2:Payeespplrsiteattrcategory>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeesuppliersitename">
                <ns2:Payeesuppliersitename>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeesuppliersitename"/>
                </ns2:Payeesuppliersitename>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeesuppliersitealtname">
                <ns2:Payeesuppliersitealtname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeesuppliersitealtname"/>
                </ns2:Payeesuppliersitealtname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeesupplierid">
                <ns2:Payeesupplierid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeesupplierid"/>
                </ns2:Payeesupplierid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Logicalgroupreference">
                <ns2:Logicalgroupreference>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Logicalgroupreference"/>
                </ns2:Logicalgroupreference>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Positivepayfilecreatedflag">
                <ns2:Positivepayfilecreatedflag>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Positivepayfilecreatedflag"/>
                </ns2:Positivepayfilecreatedflag>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extinvpayeeid">
                <ns2:Extinvpayeeid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extinvpayeeid"/>
                </ns2:Extinvpayeeid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeepartyid">
                <ns2:Invpayeepartyid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeepartyid"/>
                </ns2:Invpayeepartyid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpartysiteid">
                <ns2:Invpartysiteid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpartysiteid"/>
                </ns2:Invpartysiteid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invsuppliersiteid">
                <ns2:Invsuppliersiteid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invsuppliersiteid"/>
                </ns2:Invsuppliersiteid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invbeneficiaryparty">
                <ns2:Invbeneficiaryparty>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invbeneficiaryparty"/>
                </ns2:Invbeneficiaryparty>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeename">
                <ns2:Invpayeename>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeename"/>
                </ns2:Invpayeename>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeeaddress1">
                <ns2:Invpayeeaddress1>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeeaddress1"/>
                </ns2:Invpayeeaddress1>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeeaddress2">
                <ns2:Invpayeeaddress2>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeeaddress2"/>
                </ns2:Invpayeeaddress2>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeeaddress3">
                <ns2:Invpayeeaddress3>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeeaddress3"/>
                </ns2:Invpayeeaddress3>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeeaddress4">
                <ns2:Invpayeeaddress4>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeeaddress4"/>
                </ns2:Invpayeeaddress4>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeecity">
                <ns2:Invpayeecity>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeecity"/>
                </ns2:Invpayeecity>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeepostalcode">
                <ns2:Invpayeepostalcode>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeepostalcode"/>
                </ns2:Invpayeepostalcode>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeestate">
                <ns2:Invpayeestate>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeestate"/>
                </ns2:Invpayeestate>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeeprovince">
                <ns2:Invpayeeprovince>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeeprovince"/>
                </ns2:Invpayeeprovince>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeecounty">
                <ns2:Invpayeecounty>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeecounty"/>
                </ns2:Invpayeecounty>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeecountry">
                <ns2:Invpayeecountry>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeecountry"/>
                </ns2:Invpayeecountry>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeepartyname">
                <ns2:Invpayeepartyname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeepartyname"/>
                </ns2:Invpayeepartyname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeeleregnum">
                <ns2:Invpayeeleregnum>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeeleregnum"/>
                </ns2:Invpayeeleregnum>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeetaxregnum">
                <ns2:Invpayeetaxregnum>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeetaxregnum"/>
                </ns2:Invpayeetaxregnum>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeeaddressconcat">
                <ns2:Invpayeeaddressconcat>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeeaddressconcat"/>
                </ns2:Invpayeeaddressconcat>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invbeneficiaryname">
                <ns2:Invbeneficiaryname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invbeneficiaryname"/>
                </ns2:Invbeneficiaryname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeepartynumber">
                <ns2:Invpayeepartynumber>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeepartynumber"/>
                </ns2:Invpayeepartynumber>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeealternatename">
                <ns2:Invpayeealternatename>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeealternatename"/>
                </ns2:Invpayeealternatename>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeesitealtname">
                <ns2:Invpayeesitealtname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeesitealtname"/>
                </ns2:Invpayeesitealtname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeesuppliernumber">
                <ns2:Invpayeesuppliernumber>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeesuppliernumber"/>
                </ns2:Invpayeesuppliernumber>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeefirstpartyref">
                <ns2:Invpayeefirstpartyref>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeefirstpartyref"/>
                </ns2:Invpayeefirstpartyref>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbnkacctownrinvprtyid">
                <ns2:Extbnkacctownrinvprtyid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbnkacctownrinvprtyid"/>
                </ns2:Extbnkacctownrinvprtyid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbnkbranchinvprtyid">
                <ns2:Extbnkbranchinvprtyid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbnkbranchinvprtyid"/>
                </ns2:Extbnkbranchinvprtyid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbnkacctownrinvprtynme">
                <ns2:Extbnkacctownrinvprtynme>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbnkacctownrinvprtynme"/>
                </ns2:Extbnkacctownrinvprtynme>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeepartyattrcat">
                <ns2:Invpayeepartyattrcat>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeepartyattrcat"/>
                </ns2:Invpayeepartyattrcat>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeesupplierattrcat">
                <ns2:Invpayeesupplierattrcat>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeesupplierattrcat"/>
                </ns2:Invpayeesupplierattrcat>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeespplrsiteattrcat">
                <ns2:Invpayeespplrsiteattrcat>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeespplrsiteattrcat"/>
                </ns2:Invpayeespplrsiteattrcat>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeesuppliersitename">
                <ns2:Invpayeesuppliersitename>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeesuppliersitename"/>
                </ns2:Invpayeesuppliersitename>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeespplrsitealtname">
                <ns2:Invpayeespplrsitealtname>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeespplrsitealtname"/>
                </ns2:Invpayeespplrsitealtname>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeesupplierid">
                <ns2:Invpayeesupplierid>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeesupplierid"/>
                </ns2:Invpayeesupplierid>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeaddressee">
                <ns2:Payeeaddressee>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeaddressee"/>
                </ns2:Payeeaddressee>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeepartysitename">
                <ns2:Payeepartysitename>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeepartysitename"/>
                </ns2:Payeepartysitename>
              </xsl:if>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeepartysitename">
                <ns2:Invpayeepartysitename>
                  <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeepartysitename"/>
                </ns2:Invpayeepartysitename>
              </xsl:if>
              <ns2:PaymentDFF>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:AttributeCategory">
                  <ns10:AttributeCategory>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:AttributeCategory/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:AttributeCategory/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:AttributeCategory"/>
                  </ns10:AttributeCategory>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute1">
                  <ns10:Attribute1>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute1/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute1/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute1"/>
                  </ns10:Attribute1>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute2">
                  <ns10:Attribute2>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute2/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute2/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute2"/>
                  </ns10:Attribute2>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute3">
                  <ns10:Attribute3>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute3/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute3/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute3"/>
                  </ns10:Attribute3>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute4">
                  <ns10:Attribute4>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute4/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute4/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute4"/>
                  </ns10:Attribute4>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute5">
                  <ns10:Attribute5>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute5/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute5/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute5"/>
                  </ns10:Attribute5>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute6">
                  <ns10:Attribute6>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute6/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute6/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute6"/>
                  </ns10:Attribute6>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute7">
                  <ns10:Attribute7>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute7/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute7/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute7"/>
                  </ns10:Attribute7>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute8">
                  <ns10:Attribute8>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute8/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute8/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute8"/>
                  </ns10:Attribute8>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute9">
                  <ns10:Attribute9>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute9/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute9/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute9"/>
                  </ns10:Attribute9>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute10">
                  <ns10:Attribute10>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute10/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute10/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute10"/>
                  </ns10:Attribute10>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute11">
                  <ns10:Attribute11>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute11/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute11/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute11"/>
                  </ns10:Attribute11>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute12">
                  <ns10:Attribute12>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute12/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute12/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute12"/>
                  </ns10:Attribute12>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute13">
                  <ns10:Attribute13>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute13/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute13/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute13"/>
                  </ns10:Attribute13>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute14">
                  <ns10:Attribute14>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute14/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute14/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute14"/>
                  </ns10:Attribute14>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute15">
                  <ns10:Attribute15>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute15/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute15/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute15"/>
                  </ns10:Attribute15>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute16">
                  <ns10:Attribute16>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute16/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute16/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute16"/>
                  </ns10:Attribute16>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute17">
                  <ns10:Attribute17>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute17/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute17/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute17"/>
                  </ns10:Attribute17>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute18">
                  <ns10:Attribute18>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute18/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute18/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute18"/>
                  </ns10:Attribute18>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute19">
                  <ns10:Attribute19>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute19/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute19/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute19"/>
                  </ns10:Attribute19>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute20">
                  <ns10:Attribute20>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute20/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute20/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute20"/>
                  </ns10:Attribute20>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute21">
                  <ns10:Attribute21>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute21/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute21/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute21"/>
                  </ns10:Attribute21>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute22">
                  <ns10:Attribute22>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute22/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute22/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute22"/>
                  </ns10:Attribute22>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute23">
                  <ns10:Attribute23>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute23/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute23/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute23"/>
                  </ns10:Attribute23>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute24">
                  <ns10:Attribute24>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute24/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute24/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute24"/>
                  </ns10:Attribute24>
                </xsl:if>
                <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute25">
                  <ns10:Attribute25>
                    <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute25/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute25/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:PaymentDFF/ns10:Attribute25"/>
                  </ns10:Attribute25>
                </xsl:if>
              </ns2:PaymentDFF>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo">
                <ns2:SupplierInfo>
                  <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/@xsi:nil">
                    <xsl:attribute name="xsi:nil">
                      <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/@xsi:nil"/>
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:Identifier">
                    <ns8:Identifier>
                      <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:Identifier"/>
                    </ns8:Identifier>
                  </xsl:if>
                  <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:SupplierName">
                    <ns8:SupplierName>
                      <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:SupplierName"/>
                    </ns8:SupplierName>
                  </xsl:if>
                  <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:SupplierNumber">
                    <ns8:SupplierNumber>
                      <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:SupplierNumber"/>
                    </ns8:SupplierNumber>
                  </xsl:if>
                  <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:SupplierNameAlt">
                    <ns8:SupplierNameAlt>
                      <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:SupplierNameAlt"/>
                    </ns8:SupplierNameAlt>
                  </xsl:if>
                  <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:SupplierTypeCode">
                    <ns8:SupplierTypeCode>
                      <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:SupplierTypeCode"/>
                    </ns8:SupplierTypeCode>
                  </xsl:if>
                  <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:StartDate">
                    <ns8:StartDate>
                      <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:StartDate"/>
                    </ns8:StartDate>
                  </xsl:if>
                  <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:EndDate">
                    <ns8:EndDate>
                      <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:EndDate"/>
                    </ns8:EndDate>
                  </xsl:if>
                  <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:ObjectVersionNumber">
                    <ns8:ObjectVersionNumber>
                      <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:ObjectVersionNumber"/>
                    </ns8:ObjectVersionNumber>
                  </xsl:if>
                  <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:OrgName">
                    <ns8:OrgName>
                      <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:OrgName"/>
                    </ns8:OrgName>
                  </xsl:if>
                  <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:PayGroupookupCode">
                    <ns8:PayGroupookupCode>
                      <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:PayGroupookupCode"/>
                    </ns8:PayGroupookupCode>
                  </xsl:if>
                  <ns8:ListOfBasicSupplierSiteInfo>
                    <xsl:for-each select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:ListOfBasicSupplierSiteInfo/ns9:BasicSupplierSiteInfo">
                      <ns9:BasicSupplierSiteInfo>
                        <xsl:if test="ns9:Identifier">
                          <ns9:Identifier>
                            <xsl:value-of select="ns9:Identifier"/>
                          </ns9:Identifier>
                        </xsl:if>
                        <xsl:if test="ns9:SupplierSiteCode">
                          <ns9:SupplierSiteCode>
                            <xsl:value-of select="ns9:SupplierSiteCode"/>
                          </ns9:SupplierSiteCode>
                        </xsl:if>
                        <xsl:if test="ns9:SupplierSiteCodeAlt">
                          <ns9:SupplierSiteCodeAlt>
                            <xsl:value-of select="ns9:SupplierSiteCodeAlt"/>
                          </ns9:SupplierSiteCodeAlt>
                        </xsl:if>
                        <xsl:if test="ns9:SupplierTypeCode">
                          <ns9:SupplierTypeCode>
                            <xsl:value-of select="ns9:SupplierTypeCode"/>
                          </ns9:SupplierTypeCode>
                        </xsl:if>
                        <xsl:if test="ns9:ObjectVersionNumber">
                          <ns9:ObjectVersionNumber>
                            <xsl:value-of select="ns9:ObjectVersionNumber"/>
                          </ns9:ObjectVersionNumber>
                        </xsl:if>
                        <xsl:if test="ns9:OrgName">
                          <ns9:OrgName>
                            <xsl:value-of select="ns9:OrgName"/>
                          </ns9:OrgName>
                        </xsl:if>
                        <xsl:if test="ns9:OrigSystem">
                          <ns9:OrigSystem>
                            <xsl:value-of select="ns9:OrigSystem"/>
                          </ns9:OrigSystem>
                        </xsl:if>
                        <xsl:if test="ns9:OrigSystemReference">
                          <ns9:OrigSystemReference>
                            <xsl:value-of select="ns9:OrigSystemReference"/>
                          </ns9:OrigSystemReference>
                        </xsl:if>
                        <xsl:if test="ns9:ShipViaLookupCode">
                          <ns9:ShipViaLookupCode>
                            <xsl:value-of select="ns9:ShipViaLookupCode"/>
                          </ns9:ShipViaLookupCode>
                        </xsl:if>
                        <xsl:if test="ns9:FreightTermsLookupCode">
                          <ns9:FreightTermsLookupCode>
                            <xsl:value-of select="ns9:FreightTermsLookupCode"/>
                          </ns9:FreightTermsLookupCode>
                        </xsl:if>
                        <xsl:if test="ns9:FOBLookupCode">
                          <ns9:FOBLookupCode>
                            <xsl:value-of select="ns9:FOBLookupCode"/>
                          </ns9:FOBLookupCode>
                        </xsl:if>
                        <xsl:if test="ns9:PaySiteFlag">
                          <ns9:PaySiteFlag>
                            <xsl:value-of select="ns9:PaySiteFlag"/>
                          </ns9:PaySiteFlag>
                        </xsl:if>
                        <xsl:if test="ns9:PurchasingSiteFlag">
                          <ns9:PurchasingSiteFlag>
                            <xsl:value-of select="ns9:PurchasingSiteFlag"/>
                          </ns9:PurchasingSiteFlag>
                        </xsl:if>
                        <xsl:if test="ns9:RFQonlySiteFlag">
                          <ns9:RFQonlySiteFlag>
                            <xsl:value-of select="ns9:RFQonlySiteFlag"/>
                          </ns9:RFQonlySiteFlag>
                        </xsl:if>
                        <xsl:if test="ns9:AttentionARFlag">
                          <ns9:AttentionARFlag>
                            <xsl:value-of select="ns9:AttentionARFlag"/>
                          </ns9:AttentionARFlag>
                        </xsl:if>
                        <xsl:if test="ns9:HoldAllPaymentsFlag">
                          <ns9:HoldAllPaymentsFlag>
                            <xsl:value-of select="ns9:HoldAllPaymentsFlag"/>
                          </ns9:HoldAllPaymentsFlag>
                        </xsl:if>
                        <xsl:if test="ns9:HoldFuturePaymentsFlag">
                          <ns9:HoldFuturePaymentsFlag>
                            <xsl:value-of select="ns9:HoldFuturePaymentsFlag"/>
                          </ns9:HoldFuturePaymentsFlag>
                        </xsl:if>
                        <xsl:if test="ns9:HoldUnmatchedInvoicesFlag">
                          <ns9:HoldUnmatchedInvoicesFlag>
                            <xsl:value-of select="ns9:HoldUnmatchedInvoicesFlag"/>
                          </ns9:HoldUnmatchedInvoicesFlag>
                        </xsl:if>
                        <xsl:if test="ns9:ExcludeFreightFromDiscount">
                          <ns9:ExcludeFreightFromDiscount>
                            <xsl:value-of select="ns9:ExcludeFreightFromDiscount"/>
                          </ns9:ExcludeFreightFromDiscount>
                        </xsl:if>
                        <xsl:if test="ns9:OrgId">
                          <ns9:OrgId>
                            <xsl:value-of select="ns9:OrgId"/>
                          </ns9:OrgId>
                        </xsl:if>
                        <xsl:if test="ns9:VendorId">
                          <ns9:VendorId>
                            <xsl:value-of select="ns9:VendorId"/>
                          </ns9:VendorId>
                        </xsl:if>
                        <ns9:ListOrigSystemReferences>
                          <xsl:for-each select="ns9:ListOrigSystemReferences/ns9:OrigSystem">
                            <ns9:OrigSystem>
                              <xsl:if test="ns9:Identifier">
                                <ns9:Identifier>
                                  <xsl:value-of select="ns9:Identifier"/>
                                </ns9:Identifier>
                              </xsl:if>
                              <xsl:if test="ns9:TableName">
                                <ns9:TableName>
                                  <xsl:value-of select="ns9:TableName"/>
                                </ns9:TableName>
                              </xsl:if>
                              <xsl:if test="ns9:TableIdentifier">
                                <ns9:TableIdentifier>
                                  <xsl:value-of select="ns9:TableIdentifier"/>
                                </ns9:TableIdentifier>
                              </xsl:if>
                              <xsl:if test="ns9:OrigSystem">
                                <ns9:OrigSystem>
                                  <xsl:value-of select="ns9:OrigSystem"/>
                                </ns9:OrigSystem>
                              </xsl:if>
                              <xsl:if test="ns9:OrigSystemReference">
                                <ns9:OrigSystemReference>
                                  <xsl:value-of select="ns9:OrigSystemReference"/>
                                </ns9:OrigSystemReference>
                              </xsl:if>
                              <xsl:if test="ns9:ObjectVersionNumber">
                                <ns9:ObjectVersionNumber>
                                  <xsl:value-of select="ns9:ObjectVersionNumber"/>
                                </ns9:ObjectVersionNumber>
                              </xsl:if>
                              <xsl:if test="ns9:Status">
                                <ns9:Status>
                                  <xsl:value-of select="ns9:Status"/>
                                </ns9:Status>
                              </xsl:if>
                              <xsl:if test="ns9:StartDate">
                                <ns9:StartDate>
                                  <xsl:value-of select="ns9:StartDate"/>
                                </ns9:StartDate>
                              </xsl:if>
                              <xsl:if test="ns9:EndDate">
                                <ns9:EndDate>
                                  <xsl:value-of select="ns9:EndDate"/>
                                </ns9:EndDate>
                              </xsl:if>
                            </ns9:OrigSystem>
                          </xsl:for-each>
                        </ns9:ListOrigSystemReferences>
                      </ns9:BasicSupplierSiteInfo>
                    </xsl:for-each>
                  </ns8:ListOfBasicSupplierSiteInfo>
                  <ns8:ListOrigSystemReferences>
                    <xsl:for-each select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:SupplierInfo/ns8:ListOrigSystemReferences/ns8:OrigSystem">
                      <ns8:OrigSystem>
                        <xsl:if test="ns8:Identifier">
                          <ns8:Identifier>
                            <xsl:value-of select="ns8:Identifier"/>
                          </ns8:Identifier>
                        </xsl:if>
                        <xsl:if test="ns8:TableName">
                          <ns8:TableName>
                            <xsl:value-of select="ns8:TableName"/>
                          </ns8:TableName>
                        </xsl:if>
                        <xsl:if test="ns8:TableIdentifier">
                          <ns8:TableIdentifier>
                            <xsl:value-of select="ns8:TableIdentifier"/>
                          </ns8:TableIdentifier>
                        </xsl:if>
                        <xsl:if test="ns8:OrigSystem">
                          <ns8:OrigSystem>
                            <xsl:value-of select="ns8:OrigSystem"/>
                          </ns8:OrigSystem>
                        </xsl:if>
                        <xsl:if test="ns8:OrigSystemReference">
                          <ns8:OrigSystemReference>
                            <xsl:value-of select="ns8:OrigSystemReference"/>
                          </ns8:OrigSystemReference>
                        </xsl:if>
                        <xsl:if test="ns8:ObjectVersionNumber">
                          <ns8:ObjectVersionNumber>
                            <xsl:value-of select="ns8:ObjectVersionNumber"/>
                          </ns8:ObjectVersionNumber>
                        </xsl:if>
                        <xsl:if test="ns8:Status">
                          <ns8:Status>
                            <xsl:value-of select="ns8:Status"/>
                          </ns8:Status>
                        </xsl:if>
                        <xsl:if test="ns8:StartDate">
                          <ns8:StartDate>
                            <xsl:value-of select="ns8:StartDate"/>
                          </ns8:StartDate>
                        </xsl:if>
                        <xsl:if test="ns8:EndDate">
                          <ns8:EndDate>
                            <xsl:value-of select="ns8:EndDate"/>
                          </ns8:EndDate>
                        </xsl:if>
                      </ns8:OrigSystem>
                    </xsl:for-each>
                  </ns8:ListOrigSystemReferences>
                </ns2:SupplierInfo>
              </xsl:if>
            </paymentam:Payment>
          </xsl:if>
          <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:ListOfInvoices">
            <paymentam:ListOfInvoices>
              <xsl:for-each select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:ListOfInvoices/ns4:Invoice">
                <ns4:Invoice>
                  <xsl:if test="@xsi:nil">
                    <xsl:attribute name="xsi:nil">
                      <xsl:value-of select="@xsi:nil"/>
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="ns4:BasicInvoice">
                    <ns4:BasicInvoice>
                      <ns4:InvoiceNumber>
                        <xsl:value-of select="ns4:BasicInvoice/ns4:InvoiceNumber"/>
                      </ns4:InvoiceNumber>
                      <ns4:InvoiceDate>
                        <xsl:value-of select="ns4:BasicInvoice/ns4:InvoiceDate"/>
                      </ns4:InvoiceDate>
                      <ns4:InvoiceAmount>
                        <xsl:if test="ns4:BasicInvoice/ns4:InvoiceAmount/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:BasicInvoice/ns4:InvoiceAmount/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="ns4:BasicInvoice/ns4:InvoiceAmount/ns5:Value">
                          <ns5:Value>
                            <xsl:if test="ns4:BasicInvoice/ns4:InvoiceAmount/ns5:Value/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                <xsl:value-of select="ns4:BasicInvoice/ns4:InvoiceAmount/ns5:Value/@xsi:nil"/>
                              </xsl:attribute>
                            </xsl:if>
                            <xsl:value-of select="ns4:BasicInvoice/ns4:InvoiceAmount/ns5:Value"/>
                          </ns5:Value>
                        </xsl:if>
                        <xsl:if test="ns4:BasicInvoice/ns4:InvoiceAmount/ns5:CurrencyCode">
                          <ns5:CurrencyCode>
                            <xsl:if test="ns4:BasicInvoice/ns4:InvoiceAmount/ns5:CurrencyCode/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                <xsl:value-of select="ns4:BasicInvoice/ns4:InvoiceAmount/ns5:CurrencyCode/@xsi:nil"/>
                              </xsl:attribute>
                            </xsl:if>
                            <xsl:value-of select="ns4:BasicInvoice/ns4:InvoiceAmount/ns5:CurrencyCode"/>
                          </ns5:CurrencyCode>
                        </xsl:if>
                      </ns4:InvoiceAmount>
                    </ns4:BasicInvoice>
                  </xsl:if>
                  <xsl:if test="ns4:Acctspaycodecombinationid">
                    <ns4:Acctspaycodecombinationid>
                      <xsl:if test="ns4:Acctspaycodecombinationid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Acctspaycodecombinationid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Acctspaycodecombinationid"/>
                    </ns4:Acctspaycodecombinationid>
                  </xsl:if>
                  <xsl:if test="ns4:Acctspaycodeconcatenated">
                    <ns4:Acctspaycodeconcatenated>
                      <xsl:if test="ns4:Acctspaycodeconcatenated/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Acctspaycodeconcatenated/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Acctspaycodeconcatenated"/>
                    </ns4:Acctspaycodeconcatenated>
                  </xsl:if>
                  <xsl:if test="ns4:Addtaxtoinvamtflag">
                    <ns4:Addtaxtoinvamtflag>
                      <xsl:if test="ns4:Addtaxtoinvamtflag/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Addtaxtoinvamtflag/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Addtaxtoinvamtflag"/>
                    </ns4:Addtaxtoinvamtflag>
                  </xsl:if>
                  <xsl:if test="ns4:Amountapplicabletodiscount">
                    <ns4:Amountapplicabletodiscount>
                      <xsl:if test="ns4:Amountapplicabletodiscount/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Amountapplicabletodiscount/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Amountapplicabletodiscount"/>
                    </ns4:Amountapplicabletodiscount>
                  </xsl:if>
                  <xsl:if test="ns4:Applicationid">
                    <ns4:Applicationid>
                      <xsl:if test="ns4:Applicationid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Applicationid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Applicationid"/>
                    </ns4:Applicationid>
                  </xsl:if>
                  <xsl:if test="ns4:AmountPaid">
                    <ns4:AmountPaid>
                      <xsl:if test="ns4:AmountPaid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:AmountPaid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:AmountPaid"/>
                    </ns4:AmountPaid>
                  </xsl:if>
                  <xsl:if test="ns4:DiscountAmountTaken">
                    <ns4:DiscountAmountTaken>
                      <xsl:if test="ns4:DiscountAmountTaken/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:DiscountAmountTaken/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:DiscountAmountTaken"/>
                    </ns4:DiscountAmountTaken>
                  </xsl:if>
                  <xsl:if test="ns4:TaxAmount">
                    <ns4:TaxAmount>
                      <xsl:if test="ns4:TaxAmount/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:TaxAmount/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:TaxAmount"/>
                    </ns4:TaxAmount>
                  </xsl:if>
                  <xsl:if test="ns4:FreightAmount">
                    <ns4:FreightAmount>
                      <xsl:if test="ns4:FreightAmount/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:FreightAmount/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:FreightAmount"/>
                    </ns4:FreightAmount>
                  </xsl:if>
                  <xsl:if test="ns4:Applyadvancesflag">
                    <ns4:Applyadvancesflag>
                      <xsl:if test="ns4:Applyadvancesflag/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Applyadvancesflag/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Applyadvancesflag"/>
                    </ns4:Applyadvancesflag>
                  </xsl:if>
                  <xsl:if test="ns4:Awtgroupid">
                    <ns4:Awtgroupid>
                      <xsl:if test="ns4:Awtgroupid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Awtgroupid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Awtgroupid"/>
                    </ns4:Awtgroupid>
                  </xsl:if>
                  <xsl:if test="ns4:Awtgroupname">
                    <ns4:Awtgroupname>
                      <xsl:if test="ns4:Awtgroupname/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Awtgroupname/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Awtgroupname"/>
                    </ns4:Awtgroupname>
                  </xsl:if>
                  <xsl:if test="ns4:Bankchargebearer">
                    <ns4:Bankchargebearer>
                      <xsl:if test="ns4:Bankchargebearer/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Bankchargebearer/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Bankchargebearer"/>
                    </ns4:Bankchargebearer>
                  </xsl:if>
                  <xsl:if test="ns4:Calctaxduringimportflag">
                    <ns4:Calctaxduringimportflag>
                      <xsl:if test="ns4:Calctaxduringimportflag/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Calctaxduringimportflag/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Calctaxduringimportflag"/>
                    </ns4:Calctaxduringimportflag>
                  </xsl:if>
                  <xsl:if test="ns4:Controlamount">
                    <ns4:Controlamount>
                      <xsl:if test="ns4:Controlamount/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Controlamount/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Controlamount"/>
                    </ns4:Controlamount>
                  </xsl:if>
                  <xsl:if test="ns4:Custregistrationcode">
                    <ns4:Custregistrationcode>
                      <xsl:if test="ns4:Custregistrationcode/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Custregistrationcode/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Custregistrationcode"/>
                    </ns4:Custregistrationcode>
                  </xsl:if>
                  <xsl:if test="ns4:Custregistrationnumber">
                    <ns4:Custregistrationnumber>
                      <xsl:if test="ns4:Custregistrationnumber/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Custregistrationnumber/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Custregistrationnumber"/>
                    </ns4:Custregistrationnumber>
                  </xsl:if>
                  <xsl:if test="ns4:Deliverychannelcode">
                    <ns4:Deliverychannelcode>
                      <xsl:if test="ns4:Deliverychannelcode/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Deliverychannelcode/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Deliverychannelcode"/>
                    </ns4:Deliverychannelcode>
                  </xsl:if>
                  <xsl:if test="ns4:Description">
                    <ns4:Description>
                      <xsl:if test="ns4:Description/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Description/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Description"/>
                    </ns4:Description>
                  </xsl:if>
                  <xsl:if test="ns4:Disputereason">
                    <ns4:Disputereason>
                      <xsl:if test="ns4:Disputereason/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Disputereason/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Disputereason"/>
                    </ns4:Disputereason>
                  </xsl:if>
                  <xsl:if test="ns4:Documentsubtype">
                    <ns4:Documentsubtype>
                      <xsl:if test="ns4:Documentsubtype/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Documentsubtype/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Documentsubtype"/>
                    </ns4:Documentsubtype>
                  </xsl:if>
                  <xsl:if test="ns4:Doccategorycode">
                    <ns4:Doccategorycode>
                      <xsl:if test="ns4:Doccategorycode/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Doccategorycode/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Doccategorycode"/>
                    </ns4:Doccategorycode>
                  </xsl:if>
                  <xsl:if test="ns4:Exchangedate">
                    <ns4:Exchangedate>
                      <xsl:if test="ns4:Exchangedate/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Exchangedate/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Exchangedate"/>
                    </ns4:Exchangedate>
                  </xsl:if>
                  <xsl:if test="ns4:Exchangerate">
                    <ns4:Exchangerate>
                      <xsl:if test="ns4:Exchangerate/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Exchangerate/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Exchangerate"/>
                    </ns4:Exchangerate>
                  </xsl:if>
                  <xsl:if test="ns4:Exchangeratetype">
                    <ns4:Exchangeratetype>
                      <xsl:if test="ns4:Exchangeratetype/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Exchangeratetype/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Exchangeratetype"/>
                    </ns4:Exchangeratetype>
                  </xsl:if>
                  <xsl:if test="ns4:Exclusivepaymentflag">
                    <ns4:Exclusivepaymentflag>
                      <xsl:if test="ns4:Exclusivepaymentflag/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Exclusivepaymentflag/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Exclusivepaymentflag"/>
                    </ns4:Exclusivepaymentflag>
                  </xsl:if>
                  <xsl:if test="ns4:Externalbankaccountid">
                    <ns4:Externalbankaccountid>
                      <xsl:if test="ns4:Externalbankaccountid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Externalbankaccountid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Externalbankaccountid"/>
                    </ns4:Externalbankaccountid>
                  </xsl:if>
                  <xsl:if test="ns4:Externaldocref">
                    <ns4:Externaldocref>
                      <xsl:if test="ns4:Externaldocref/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Externaldocref/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Externaldocref"/>
                    </ns4:Externaldocref>
                  </xsl:if>
                  <xsl:if test="ns4:Gldate">
                    <ns4:Gldate>
                      <xsl:if test="ns4:Gldate/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Gldate/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Gldate"/>
                    </ns4:Gldate>
                  </xsl:if>
                  <xsl:if test="ns4:Goodsreceiveddate">
                    <ns4:Goodsreceiveddate>
                      <xsl:if test="ns4:Goodsreceiveddate/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Goodsreceiveddate/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Goodsreceiveddate"/>
                    </ns4:Goodsreceiveddate>
                  </xsl:if>
                  <xsl:if test="ns4:Groupid">
                    <ns4:Groupid>
                      <xsl:if test="ns4:Groupid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Groupid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Groupid"/>
                    </ns4:Groupid>
                  </xsl:if>
                  <xsl:if test="ns4:Invoiceamount">
                    <ns4:Invoiceamount>
                      <xsl:if test="ns4:Invoiceamount/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Invoiceamount/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Invoiceamount"/>
                    </ns4:Invoiceamount>
                  </xsl:if>
                  <xsl:if test="ns4:Invoicecurrencycode">
                    <ns4:Invoicecurrencycode>
                      <xsl:if test="ns4:Invoicecurrencycode/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Invoicecurrencycode/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Invoicecurrencycode"/>
                    </ns4:Invoicecurrencycode>
                  </xsl:if>
                  <xsl:if test="ns4:Invoicedate">
                    <ns4:Invoicedate>
                      <xsl:if test="ns4:Invoicedate/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Invoicedate/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Invoicedate"/>
                    </ns4:Invoicedate>
                  </xsl:if>
                  <xsl:if test="ns4:Invoiceid">
                    <ns4:Invoiceid>
                      <xsl:if test="ns4:Invoiceid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Invoiceid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Invoiceid"/>
                    </ns4:Invoiceid>
                  </xsl:if>
                  <xsl:if test="ns4:Invoiceincludesprepayflag">
                    <ns4:Invoiceincludesprepayflag>
                      <xsl:if test="ns4:Invoiceincludesprepayflag/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Invoiceincludesprepayflag/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Invoiceincludesprepayflag"/>
                    </ns4:Invoiceincludesprepayflag>
                  </xsl:if>
                  <xsl:if test="ns4:Invoicenum">
                    <ns4:Invoicenum>
                      <xsl:if test="ns4:Invoicenum/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Invoicenum/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Invoicenum"/>
                    </ns4:Invoicenum>
                  </xsl:if>
                  <xsl:if test="ns4:Invoicereceiveddate">
                    <ns4:Invoicereceiveddate>
                      <xsl:if test="ns4:Invoicereceiveddate/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Invoicereceiveddate/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Invoicereceiveddate"/>
                    </ns4:Invoicereceiveddate>
                  </xsl:if>
                  <xsl:if test="ns4:Invoicetypelookupcode">
                    <ns4:Invoicetypelookupcode>
                      <xsl:if test="ns4:Invoicetypelookupcode/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Invoicetypelookupcode/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Invoicetypelookupcode"/>
                    </ns4:Invoicetypelookupcode>
                  </xsl:if>
                  <xsl:if test="ns4:Legalentityid">
                    <ns4:Legalentityid>
                      <xsl:if test="ns4:Legalentityid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Legalentityid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Legalentityid"/>
                    </ns4:Legalentityid>
                  </xsl:if>
                  <xsl:if test="ns4:Legalentityname">
                    <ns4:Legalentityname>
                      <xsl:if test="ns4:Legalentityname/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Legalentityname/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Legalentityname"/>
                    </ns4:Legalentityname>
                  </xsl:if>
                  <xsl:if test="ns4:Netofretainageflag">
                    <ns4:Netofretainageflag>
                      <xsl:if test="ns4:Netofretainageflag/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Netofretainageflag/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Netofretainageflag"/>
                    </ns4:Netofretainageflag>
                  </xsl:if>
                  <xsl:if test="ns4:Noxratebaseamount">
                    <ns4:Noxratebaseamount>
                      <xsl:if test="ns4:Noxratebaseamount/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Noxratebaseamount/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Noxratebaseamount"/>
                    </ns4:Noxratebaseamount>
                  </xsl:if>
                  <xsl:if test="ns4:Operatingunit">
                    <ns4:Operatingunit>
                      <xsl:if test="ns4:Operatingunit/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Operatingunit/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Operatingunit"/>
                    </ns4:Operatingunit>
                  </xsl:if>
                  <xsl:if test="ns4:Orgid">
                    <ns4:Orgid>
                      <xsl:if test="ns4:Orgid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Orgid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Orgid"/>
                    </ns4:Orgid>
                  </xsl:if>
                  <xsl:if test="ns4:Originalinvoiceamount">
                    <ns4:Originalinvoiceamount>
                      <xsl:if test="ns4:Originalinvoiceamount/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Originalinvoiceamount/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Originalinvoiceamount"/>
                    </ns4:Originalinvoiceamount>
                  </xsl:if>
                  <xsl:if test="ns4:Paidonbehalfemployeeid">
                    <ns4:Paidonbehalfemployeeid>
                      <xsl:if test="ns4:Paidonbehalfemployeeid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Paidonbehalfemployeeid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Paidonbehalfemployeeid"/>
                    </ns4:Paidonbehalfemployeeid>
                  </xsl:if>
                  <xsl:if test="ns4:Partyid">
                    <ns4:Partyid>
                      <xsl:if test="ns4:Partyid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Partyid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Partyid"/>
                    </ns4:Partyid>
                  </xsl:if>
                  <xsl:if test="ns4:Partysiteid">
                    <ns4:Partysiteid>
                      <xsl:if test="ns4:Partysiteid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Partysiteid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Partysiteid"/>
                    </ns4:Partysiteid>
                  </xsl:if>
                  <xsl:if test="ns4:Paymentcrossrate">
                    <ns4:Paymentcrossrate>
                      <xsl:if test="ns4:Paymentcrossrate/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Paymentcrossrate/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Paymentcrossrate"/>
                    </ns4:Paymentcrossrate>
                  </xsl:if>
                  <xsl:if test="ns4:Paymentcrossratedate">
                    <ns4:Paymentcrossratedate>
                      <xsl:if test="ns4:Paymentcrossratedate/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Paymentcrossratedate/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Paymentcrossratedate"/>
                    </ns4:Paymentcrossratedate>
                  </xsl:if>
                  <xsl:if test="ns4:Paymentcrossratetype">
                    <ns4:Paymentcrossratetype>
                      <xsl:if test="ns4:Paymentcrossratetype/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Paymentcrossratetype/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Paymentcrossratetype"/>
                    </ns4:Paymentcrossratetype>
                  </xsl:if>
                  <xsl:if test="ns4:Paymentcurrencycode">
                    <ns4:Paymentcurrencycode>
                      <xsl:if test="ns4:Paymentcurrencycode/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Paymentcurrencycode/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Paymentcurrencycode"/>
                    </ns4:Paymentcurrencycode>
                  </xsl:if>
                  <xsl:if test="ns4:Paymentfunction">
                    <ns4:Paymentfunction>
                      <xsl:if test="ns4:Paymentfunction/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Paymentfunction/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Paymentfunction"/>
                    </ns4:Paymentfunction>
                  </xsl:if>
                  <xsl:if test="ns4:Paymentmethodcode">
                    <ns4:Paymentmethodcode>
                      <xsl:if test="ns4:Paymentmethodcode/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Paymentmethodcode/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Paymentmethodcode"/>
                    </ns4:Paymentmethodcode>
                  </xsl:if>
                  <xsl:if test="ns4:Paymentmethodlookupcode">
                    <ns4:Paymentmethodlookupcode>
                      <xsl:if test="ns4:Paymentmethodlookupcode/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Paymentmethodlookupcode/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Paymentmethodlookupcode"/>
                    </ns4:Paymentmethodlookupcode>
                  </xsl:if>
                  <xsl:if test="ns4:Paymentpriority">
                    <ns4:Paymentpriority>
                      <xsl:if test="ns4:Paymentpriority/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Paymentpriority/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Paymentpriority"/>
                    </ns4:Paymentpriority>
                  </xsl:if>
                  <xsl:if test="ns4:Paymentreasoncode">
                    <ns4:Paymentreasoncode>
                      <xsl:if test="ns4:Paymentreasoncode/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Paymentreasoncode/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Paymentreasoncode"/>
                    </ns4:Paymentreasoncode>
                  </xsl:if>
                  <xsl:if test="ns4:Paymentreasoncomments">
                    <ns4:Paymentreasoncomments>
                      <xsl:if test="ns4:Paymentreasoncomments/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Paymentreasoncomments/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Paymentreasoncomments"/>
                    </ns4:Paymentreasoncomments>
                  </xsl:if>
                  <xsl:if test="ns4:Payawtgroupid">
                    <ns4:Payawtgroupid>
                      <xsl:if test="ns4:Payawtgroupid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Payawtgroupid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Payawtgroupid"/>
                    </ns4:Payawtgroupid>
                  </xsl:if>
                  <xsl:if test="ns4:Payawtgroupname">
                    <ns4:Payawtgroupname>
                      <xsl:if test="ns4:Payawtgroupname/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Payawtgroupname/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Payawtgroupname"/>
                    </ns4:Payawtgroupname>
                  </xsl:if>
                  <xsl:if test="ns4:Paygrouplookupcode">
                    <ns4:Paygrouplookupcode>
                      <xsl:if test="ns4:Paygrouplookupcode/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Paygrouplookupcode/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Paygrouplookupcode"/>
                    </ns4:Paygrouplookupcode>
                  </xsl:if>
                  <xsl:if test="ns4:Payproctrxntypecode">
                    <ns4:Payproctrxntypecode>
                      <xsl:if test="ns4:Payproctrxntypecode/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Payproctrxntypecode/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Payproctrxntypecode"/>
                    </ns4:Payproctrxntypecode>
                  </xsl:if>
                  <xsl:if test="ns4:Portofentrycode">
                    <ns4:Portofentrycode>
                      <xsl:if test="ns4:Portofentrycode/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Portofentrycode/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Portofentrycode"/>
                    </ns4:Portofentrycode>
                  </xsl:if>
                  <xsl:if test="ns4:Ponumber">
                    <ns4:Ponumber>
                      <xsl:if test="ns4:Ponumber/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Ponumber/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Ponumber"/>
                    </ns4:Ponumber>
                  </xsl:if>
                  <xsl:if test="ns4:Prepayapplyamount">
                    <ns4:Prepayapplyamount>
                      <xsl:if test="ns4:Prepayapplyamount/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Prepayapplyamount/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Prepayapplyamount"/>
                    </ns4:Prepayapplyamount>
                  </xsl:if>
                  <xsl:if test="ns4:Prepaydistnum">
                    <ns4:Prepaydistnum>
                      <xsl:if test="ns4:Prepaydistnum/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Prepaydistnum/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Prepaydistnum"/>
                    </ns4:Prepaydistnum>
                  </xsl:if>
                  <xsl:if test="ns4:Prepaygldate">
                    <ns4:Prepaygldate>
                      <xsl:if test="ns4:Prepaygldate/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Prepaygldate/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Prepaygldate"/>
                    </ns4:Prepaygldate>
                  </xsl:if>
                  <xsl:if test="ns4:Prepaylinenum">
                    <ns4:Prepaylinenum>
                      <xsl:if test="ns4:Prepaylinenum/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Prepaylinenum/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Prepaylinenum"/>
                    </ns4:Prepaylinenum>
                  </xsl:if>
                  <xsl:if test="ns4:Prepaynum">
                    <ns4:Prepaynum>
                      <xsl:if test="ns4:Prepaynum/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Prepaynum/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Prepaynum"/>
                    </ns4:Prepaynum>
                  </xsl:if>
                  <xsl:if test="ns4:Producttable">
                    <ns4:Producttable>
                      <xsl:if test="ns4:Producttable/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Producttable/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Producttable"/>
                    </ns4:Producttable>
                  </xsl:if>
                  <xsl:if test="ns4:Reference1">
                    <ns4:Reference1>
                      <xsl:if test="ns4:Reference1/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Reference1/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Reference1"/>
                    </ns4:Reference1>
                  </xsl:if>
                  <xsl:if test="ns4:Reference2">
                    <ns4:Reference2>
                      <xsl:if test="ns4:Reference2/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Reference2/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Reference2"/>
                    </ns4:Reference2>
                  </xsl:if>
                  <xsl:if test="ns4:Referencekey1">
                    <ns4:Referencekey1>
                      <xsl:if test="ns4:Referencekey1/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Referencekey1/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Referencekey1"/>
                    </ns4:Referencekey1>
                  </xsl:if>
                  <xsl:if test="ns4:Referencekey2">
                    <ns4:Referencekey2>
                      <xsl:if test="ns4:Referencekey2/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Referencekey2/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Referencekey2"/>
                    </ns4:Referencekey2>
                  </xsl:if>
                  <xsl:if test="ns4:Referencekey3">
                    <ns4:Referencekey3>
                      <xsl:if test="ns4:Referencekey3/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Referencekey3/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Referencekey3"/>
                    </ns4:Referencekey3>
                  </xsl:if>
                  <xsl:if test="ns4:Referencekey4">
                    <ns4:Referencekey4>
                      <xsl:if test="ns4:Referencekey4/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Referencekey4/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Referencekey4"/>
                    </ns4:Referencekey4>
                  </xsl:if>
                  <xsl:if test="ns4:Referencekey5">
                    <ns4:Referencekey5>
                      <xsl:if test="ns4:Referencekey5/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Referencekey5/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Referencekey5"/>
                    </ns4:Referencekey5>
                  </xsl:if>
                  <xsl:if test="ns4:Relationshipid">
                    <ns4:Relationshipid>
                      <xsl:if test="ns4:Relationshipid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Relationshipid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Relationshipid"/>
                    </ns4:Relationshipid>
                  </xsl:if>
                  <xsl:if test="ns4:Remittancemessage1">
                    <ns4:Remittancemessage1>
                      <xsl:if test="ns4:Remittancemessage1/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Remittancemessage1/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Remittancemessage1"/>
                    </ns4:Remittancemessage1>
                  </xsl:if>
                  <xsl:if test="ns4:Remittancemessage2">
                    <ns4:Remittancemessage2>
                      <xsl:if test="ns4:Remittancemessage2/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Remittancemessage2/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Remittancemessage2"/>
                    </ns4:Remittancemessage2>
                  </xsl:if>
                  <xsl:if test="ns4:Remittancemessage3">
                    <ns4:Remittancemessage3>
                      <xsl:if test="ns4:Remittancemessage3/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Remittancemessage3/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Remittancemessage3"/>
                    </ns4:Remittancemessage3>
                  </xsl:if>
                  <xsl:if test="ns4:Remittosupplierid">
                    <ns4:Remittosupplierid>
                      <xsl:if test="ns4:Remittosupplierid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Remittosupplierid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Remittosupplierid"/>
                    </ns4:Remittosupplierid>
                  </xsl:if>
                  <xsl:if test="ns4:Remittosuppliersite">
                    <ns4:Remittosuppliersite>
                      <xsl:if test="ns4:Remittosuppliersite/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Remittosuppliersite/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Remittosuppliersite"/>
                    </ns4:Remittosuppliersite>
                  </xsl:if>
                  <xsl:if test="ns4:Remittosuppliersiteid">
                    <ns4:Remittosuppliersiteid>
                      <xsl:if test="ns4:Remittosuppliersiteid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Remittosuppliersiteid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Remittosuppliersiteid"/>
                    </ns4:Remittosuppliersiteid>
                  </xsl:if>
                  <xsl:if test="ns4:Requesteremployeenum">
                    <ns4:Requesteremployeenum>
                      <xsl:if test="ns4:Requesteremployeenum/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Requesteremployeenum/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Requesteremployeenum"/>
                    </ns4:Requesteremployeenum>
                  </xsl:if>
                  <xsl:if test="ns4:Requesterfirstname">
                    <ns4:Requesterfirstname>
                      <xsl:if test="ns4:Requesterfirstname/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Requesterfirstname/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Requesterfirstname"/>
                    </ns4:Requesterfirstname>
                  </xsl:if>
                  <xsl:if test="ns4:Requesterid">
                    <ns4:Requesterid>
                      <xsl:if test="ns4:Requesterid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Requesterid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Requesterid"/>
                    </ns4:Requesterid>
                  </xsl:if>
                  <xsl:if test="ns4:Requesterlastname">
                    <ns4:Requesterlastname>
                      <xsl:if test="ns4:Requesterlastname/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Requesterlastname/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Requesterlastname"/>
                    </ns4:Requesterlastname>
                  </xsl:if>
                  <xsl:if test="ns4:Requestid">
                    <ns4:Requestid>
                      <xsl:if test="ns4:Requestid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Requestid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Requestid"/>
                    </ns4:Requestid>
                  </xsl:if>
                  <xsl:if test="ns4:Settlementpriority">
                    <ns4:Settlementpriority>
                      <xsl:if test="ns4:Settlementpriority/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Settlementpriority/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Settlementpriority"/>
                    </ns4:Settlementpriority>
                  </xsl:if>
                  <xsl:if test="ns4:Shiptolocation">
                    <ns4:Shiptolocation>
                      <xsl:if test="ns4:Shiptolocation/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Shiptolocation/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Shiptolocation"/>
                    </ns4:Shiptolocation>
                  </xsl:if>
                  <xsl:if test="ns4:Source">
                    <ns4:Source>
                      <xsl:if test="ns4:Source/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Source/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Source"/>
                    </ns4:Source>
                  </xsl:if>
                  <xsl:if test="ns4:Status">
                    <ns4:Status>
                      <xsl:if test="ns4:Status/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Status/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Status"/>
                    </ns4:Status>
                  </xsl:if>
                  <xsl:if test="ns4:Suppliertaxexchangerate">
                    <ns4:Suppliertaxexchangerate>
                      <xsl:if test="ns4:Suppliertaxexchangerate/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Suppliertaxexchangerate/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Suppliertaxexchangerate"/>
                    </ns4:Suppliertaxexchangerate>
                  </xsl:if>
                  <xsl:if test="ns4:Suppliertaxinvoicedate">
                    <ns4:Suppliertaxinvoicedate>
                      <xsl:if test="ns4:Suppliertaxinvoicedate/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Suppliertaxinvoicedate/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Suppliertaxinvoicedate"/>
                    </ns4:Suppliertaxinvoicedate>
                  </xsl:if>
                  <xsl:if test="ns4:Suppliertaxinvoicenumber">
                    <ns4:Suppliertaxinvoicenumber>
                      <xsl:if test="ns4:Suppliertaxinvoicenumber/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Suppliertaxinvoicenumber/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Suppliertaxinvoicenumber"/>
                    </ns4:Suppliertaxinvoicenumber>
                  </xsl:if>
                  <xsl:if test="ns4:Taxationcountry">
                    <ns4:Taxationcountry>
                      <xsl:if test="ns4:Taxationcountry/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Taxationcountry/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Taxationcountry"/>
                    </ns4:Taxationcountry>
                  </xsl:if>
                  <xsl:if test="ns4:Taxinvoiceinternalseq">
                    <ns4:Taxinvoiceinternalseq>
                      <xsl:if test="ns4:Taxinvoiceinternalseq/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Taxinvoiceinternalseq/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Taxinvoiceinternalseq"/>
                    </ns4:Taxinvoiceinternalseq>
                  </xsl:if>
                  <xsl:if test="ns4:Taxinvoicerecordingdate">
                    <ns4:Taxinvoicerecordingdate>
                      <xsl:if test="ns4:Taxinvoicerecordingdate/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Taxinvoicerecordingdate/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Taxinvoicerecordingdate"/>
                    </ns4:Taxinvoicerecordingdate>
                  </xsl:if>
                  <xsl:if test="ns4:Taxrelatedinvoiceid">
                    <ns4:Taxrelatedinvoiceid>
                      <xsl:if test="ns4:Taxrelatedinvoiceid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Taxrelatedinvoiceid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Taxrelatedinvoiceid"/>
                    </ns4:Taxrelatedinvoiceid>
                  </xsl:if>
                  <xsl:if test="ns4:Termsdate">
                    <ns4:Termsdate>
                      <xsl:if test="ns4:Termsdate/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Termsdate/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Termsdate"/>
                    </ns4:Termsdate>
                  </xsl:if>
                  <xsl:if test="ns4:Termsid">
                    <ns4:Termsid>
                      <xsl:if test="ns4:Termsid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Termsid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Termsid"/>
                    </ns4:Termsid>
                  </xsl:if>
                  <xsl:if test="ns4:Termsname">
                    <ns4:Termsname>
                      <xsl:if test="ns4:Termsname/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Termsname/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Termsname"/>
                    </ns4:Termsname>
                  </xsl:if>
                  <xsl:if test="ns4:Uniqueremittanceidentifier">
                    <ns4:Uniqueremittanceidentifier>
                      <xsl:if test="ns4:Uniqueremittanceidentifier/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Uniqueremittanceidentifier/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Uniqueremittanceidentifier"/>
                    </ns4:Uniqueremittanceidentifier>
                  </xsl:if>
                  <xsl:if test="ns4:Uricheckdigit">
                    <ns4:Uricheckdigit>
                      <xsl:if test="ns4:Uricheckdigit/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Uricheckdigit/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Uricheckdigit"/>
                    </ns4:Uricheckdigit>
                  </xsl:if>
                  <xsl:if test="ns4:Ussgltransactioncode">
                    <ns4:Ussgltransactioncode>
                      <xsl:if test="ns4:Ussgltransactioncode/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Ussgltransactioncode/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Ussgltransactioncode"/>
                    </ns4:Ussgltransactioncode>
                  </xsl:if>
                  <xsl:if test="ns4:Vendoremailaddress">
                    <ns4:Vendoremailaddress>
                      <xsl:if test="ns4:Vendoremailaddress/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Vendoremailaddress/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Vendoremailaddress"/>
                    </ns4:Vendoremailaddress>
                  </xsl:if>
                  <xsl:if test="ns4:Vendorid">
                    <ns4:Vendorid>
                      <xsl:if test="ns4:Vendorid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Vendorid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Vendorid"/>
                    </ns4:Vendorid>
                  </xsl:if>
                  <xsl:if test="ns4:Vendorname">
                    <ns4:Vendorname>
                      <xsl:if test="ns4:Vendorname/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Vendorname/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Vendorname"/>
                    </ns4:Vendorname>
                  </xsl:if>
                  <xsl:if test="ns4:Vendornum">
                    <ns4:Vendornum>
                      <xsl:if test="ns4:Vendornum/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Vendornum/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Vendornum"/>
                    </ns4:Vendornum>
                  </xsl:if>
                  <xsl:if test="ns4:Vendorsitecode">
                    <ns4:Vendorsitecode>
                      <xsl:if test="ns4:Vendorsitecode/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Vendorsitecode/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Vendorsitecode"/>
                    </ns4:Vendorsitecode>
                  </xsl:if>
                  <xsl:if test="ns4:Vendorsiteid">
                    <ns4:Vendorsiteid>
                      <xsl:if test="ns4:Vendorsiteid/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Vendorsiteid/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Vendorsiteid"/>
                    </ns4:Vendorsiteid>
                  </xsl:if>
                  <xsl:if test="ns4:Vouchernum">
                    <ns4:Vouchernum>
                      <xsl:if test="ns4:Vouchernum/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Vouchernum/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Vouchernum"/>
                    </ns4:Vouchernum>
                  </xsl:if>
                  <xsl:if test="ns4:Workflowflag">
                    <ns4:Workflowflag>
                      <xsl:if test="ns4:Workflowflag/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:Workflowflag/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="ns4:Workflowflag"/>
                    </ns4:Workflowflag>
                  </xsl:if>
                  <ns4:HeaderDFF>
                    <xsl:if test="ns4:HeaderDFF/@xsi:nil">
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="ns4:HeaderDFF/@xsi:nil"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:AttributeCategory">
                      <ns10:AttributeCategory>
                        <xsl:if test="ns4:HeaderDFF/ns10:AttributeCategory/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:AttributeCategory/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:AttributeCategory"/>
                      </ns10:AttributeCategory>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute1">
                      <ns10:Attribute1>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute1/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute1/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute1"/>
                      </ns10:Attribute1>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute2">
                      <ns10:Attribute2>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute2/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute2/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute2"/>
                      </ns10:Attribute2>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute3">
                      <ns10:Attribute3>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute3/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute3/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute3"/>
                      </ns10:Attribute3>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute4">
                      <ns10:Attribute4>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute4/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute4/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute4"/>
                      </ns10:Attribute4>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute5">
                      <ns10:Attribute5>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute5/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute5/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute5"/>
                      </ns10:Attribute5>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute6">
                      <ns10:Attribute6>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute6/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute6/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute6"/>
                      </ns10:Attribute6>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute7">
                      <ns10:Attribute7>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute7/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute7/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute7"/>
                      </ns10:Attribute7>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute8">
                      <ns10:Attribute8>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute8/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute8/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute8"/>
                      </ns10:Attribute8>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute9">
                      <ns10:Attribute9>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute9/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute9/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute9"/>
                      </ns10:Attribute9>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute10">
                      <ns10:Attribute10>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute10/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute10/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute10"/>
                      </ns10:Attribute10>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute11">
                      <ns10:Attribute11>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute11/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute11/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute11"/>
                      </ns10:Attribute11>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute12">
                      <ns10:Attribute12>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute12/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute12/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute12"/>
                      </ns10:Attribute12>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute13">
                      <ns10:Attribute13>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute13/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute13/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute13"/>
                      </ns10:Attribute13>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute14">
                      <ns10:Attribute14>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute14/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute14/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute14"/>
                      </ns10:Attribute14>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute15">
                      <ns10:Attribute15>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute15/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute15/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute15"/>
                      </ns10:Attribute15>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute16">
                      <ns10:Attribute16>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute16/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute16/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute16"/>
                      </ns10:Attribute16>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute17">
                      <ns10:Attribute17>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute17/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute17/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute17"/>
                      </ns10:Attribute17>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute18">
                      <ns10:Attribute18>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute18/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute18/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute18"/>
                      </ns10:Attribute18>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute19">
                      <ns10:Attribute19>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute19/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute19/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute19"/>
                      </ns10:Attribute19>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute20">
                      <ns10:Attribute20>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute20/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute20/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute20"/>
                      </ns10:Attribute20>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute21">
                      <ns10:Attribute21>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute21/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute21/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute21"/>
                      </ns10:Attribute21>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute22">
                      <ns10:Attribute22>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute22/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute22/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute22"/>
                      </ns10:Attribute22>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute23">
                      <ns10:Attribute23>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute23/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute23/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute23"/>
                      </ns10:Attribute23>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute24">
                      <ns10:Attribute24>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute24/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute24/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute24"/>
                      </ns10:Attribute24>
                    </xsl:if>
                    <xsl:if test="ns4:HeaderDFF/ns10:Attribute25">
                      <ns10:Attribute25>
                        <xsl:if test="ns4:HeaderDFF/ns10:Attribute25/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute25/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns4:HeaderDFF/ns10:Attribute25"/>
                      </ns10:Attribute25>
                    </xsl:if>
                  </ns4:HeaderDFF>
                  <xsl:if test="ns4:RemitToSupplier">
                    <ns4:RemitToSupplier>
                      <xsl:if test="ns4:RemitToSupplier/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                          <xsl:value-of select="ns4:RemitToSupplier/@xsi:nil"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:if test="ns4:RemitToSupplier/ns8:Identifier">
                        <ns8:Identifier>
                          <xsl:value-of select="ns4:RemitToSupplier/ns8:Identifier"/>
                        </ns8:Identifier>
                      </xsl:if>
                      <xsl:if test="ns4:RemitToSupplier/ns8:SupplierName">
                        <ns8:SupplierName>
                          <xsl:value-of select="ns4:RemitToSupplier/ns8:SupplierName"/>
                        </ns8:SupplierName>
                      </xsl:if>
                      <xsl:if test="ns4:RemitToSupplier/ns8:SupplierNumber">
                        <ns8:SupplierNumber>
                          <xsl:value-of select="ns4:RemitToSupplier/ns8:SupplierNumber"/>
                        </ns8:SupplierNumber>
                      </xsl:if>
                      <xsl:if test="ns4:RemitToSupplier/ns8:SupplierNameAlt">
                        <ns8:SupplierNameAlt>
                          <xsl:value-of select="ns4:RemitToSupplier/ns8:SupplierNameAlt"/>
                        </ns8:SupplierNameAlt>
                      </xsl:if>
                      <xsl:if test="ns4:RemitToSupplier/ns8:SupplierTypeCode">
                        <ns8:SupplierTypeCode>
                          <xsl:value-of select="ns4:RemitToSupplier/ns8:SupplierTypeCode"/>
                        </ns8:SupplierTypeCode>
                      </xsl:if>
                      <xsl:if test="ns4:RemitToSupplier/ns8:StartDate">
                        <ns8:StartDate>
                          <xsl:value-of select="ns4:RemitToSupplier/ns8:StartDate"/>
                        </ns8:StartDate>
                      </xsl:if>
                      <xsl:if test="ns4:RemitToSupplier/ns8:EndDate">
                        <ns8:EndDate>
                          <xsl:value-of select="ns4:RemitToSupplier/ns8:EndDate"/>
                        </ns8:EndDate>
                      </xsl:if>
                      <xsl:if test="ns4:RemitToSupplier/ns8:ObjectVersionNumber">
                        <ns8:ObjectVersionNumber>
                          <xsl:value-of select="ns4:RemitToSupplier/ns8:ObjectVersionNumber"/>
                        </ns8:ObjectVersionNumber>
                      </xsl:if>
                      <xsl:if test="ns4:RemitToSupplier/ns8:OrgName">
                        <ns8:OrgName>
                          <xsl:value-of select="ns4:RemitToSupplier/ns8:OrgName"/>
                        </ns8:OrgName>
                      </xsl:if>
                      <xsl:if test="ns4:RemitToSupplier/ns8:PayGroupookupCode">
                        <ns8:PayGroupookupCode>
                          <xsl:value-of select="ns4:RemitToSupplier/ns8:PayGroupookupCode"/>
                        </ns8:PayGroupookupCode>
                      </xsl:if>
                      <ns8:ListOfBasicSupplierSiteInfo>
                        <xsl:for-each select="ns4:RemitToSupplier/ns8:ListOfBasicSupplierSiteInfo/ns9:BasicSupplierSiteInfo">
                          <ns9:BasicSupplierSiteInfo>
                            <xsl:if test="ns9:Identifier">
                              <ns9:Identifier>
                                <xsl:value-of select="ns9:Identifier"/>
                              </ns9:Identifier>
                            </xsl:if>
                            <xsl:if test="ns9:SupplierSiteCode">
                              <ns9:SupplierSiteCode>
                                <xsl:value-of select="ns9:SupplierSiteCode"/>
                              </ns9:SupplierSiteCode>
                            </xsl:if>
                            <xsl:if test="ns9:SupplierSiteCodeAlt">
                              <ns9:SupplierSiteCodeAlt>
                                <xsl:value-of select="ns9:SupplierSiteCodeAlt"/>
                              </ns9:SupplierSiteCodeAlt>
                            </xsl:if>
                            <xsl:if test="ns9:SupplierTypeCode">
                              <ns9:SupplierTypeCode>
                                <xsl:value-of select="ns9:SupplierTypeCode"/>
                              </ns9:SupplierTypeCode>
                            </xsl:if>
                            <xsl:if test="ns9:ObjectVersionNumber">
                              <ns9:ObjectVersionNumber>
                                <xsl:value-of select="ns9:ObjectVersionNumber"/>
                              </ns9:ObjectVersionNumber>
                            </xsl:if>
                            <xsl:if test="ns9:OrgName">
                              <ns9:OrgName>
                                <xsl:value-of select="ns9:OrgName"/>
                              </ns9:OrgName>
                            </xsl:if>
                            <xsl:if test="ns9:OrigSystem">
                              <ns9:OrigSystem>
                                <xsl:value-of select="ns9:OrigSystem"/>
                              </ns9:OrigSystem>
                            </xsl:if>
                            <xsl:if test="ns9:OrigSystemReference">
                              <ns9:OrigSystemReference>
                                <xsl:value-of select="ns9:OrigSystemReference"/>
                              </ns9:OrigSystemReference>
                            </xsl:if>
                            <xsl:if test="ns9:ShipViaLookupCode">
                              <ns9:ShipViaLookupCode>
                                <xsl:value-of select="ns9:ShipViaLookupCode"/>
                              </ns9:ShipViaLookupCode>
                            </xsl:if>
                            <xsl:if test="ns9:FreightTermsLookupCode">
                              <ns9:FreightTermsLookupCode>
                                <xsl:value-of select="ns9:FreightTermsLookupCode"/>
                              </ns9:FreightTermsLookupCode>
                            </xsl:if>
                            <xsl:if test="ns9:FOBLookupCode">
                              <ns9:FOBLookupCode>
                                <xsl:value-of select="ns9:FOBLookupCode"/>
                              </ns9:FOBLookupCode>
                            </xsl:if>
                            <xsl:if test="ns9:PaySiteFlag">
                              <ns9:PaySiteFlag>
                                <xsl:value-of select="ns9:PaySiteFlag"/>
                              </ns9:PaySiteFlag>
                            </xsl:if>
                            <xsl:if test="ns9:PurchasingSiteFlag">
                              <ns9:PurchasingSiteFlag>
                                <xsl:value-of select="ns9:PurchasingSiteFlag"/>
                              </ns9:PurchasingSiteFlag>
                            </xsl:if>
                            <xsl:if test="ns9:RFQonlySiteFlag">
                              <ns9:RFQonlySiteFlag>
                                <xsl:value-of select="ns9:RFQonlySiteFlag"/>
                              </ns9:RFQonlySiteFlag>
                            </xsl:if>
                            <xsl:if test="ns9:AttentionARFlag">
                              <ns9:AttentionARFlag>
                                <xsl:value-of select="ns9:AttentionARFlag"/>
                              </ns9:AttentionARFlag>
                            </xsl:if>
                            <xsl:if test="ns9:HoldAllPaymentsFlag">
                              <ns9:HoldAllPaymentsFlag>
                                <xsl:value-of select="ns9:HoldAllPaymentsFlag"/>
                              </ns9:HoldAllPaymentsFlag>
                            </xsl:if>
                            <xsl:if test="ns9:HoldFuturePaymentsFlag">
                              <ns9:HoldFuturePaymentsFlag>
                                <xsl:value-of select="ns9:HoldFuturePaymentsFlag"/>
                              </ns9:HoldFuturePaymentsFlag>
                            </xsl:if>
                            <xsl:if test="ns9:HoldUnmatchedInvoicesFlag">
                              <ns9:HoldUnmatchedInvoicesFlag>
                                <xsl:value-of select="ns9:HoldUnmatchedInvoicesFlag"/>
                              </ns9:HoldUnmatchedInvoicesFlag>
                            </xsl:if>
                            <xsl:if test="ns9:ExcludeFreightFromDiscount">
                              <ns9:ExcludeFreightFromDiscount>
                                <xsl:value-of select="ns9:ExcludeFreightFromDiscount"/>
                              </ns9:ExcludeFreightFromDiscount>
                            </xsl:if>
                            <xsl:if test="ns9:OrgId">
                              <ns9:OrgId>
                                <xsl:value-of select="ns9:OrgId"/>
                              </ns9:OrgId>
                            </xsl:if>
                            <xsl:if test="ns9:VendorId">
                              <ns9:VendorId>
                                <xsl:value-of select="ns9:VendorId"/>
                              </ns9:VendorId>
                            </xsl:if>
                            <ns9:ListOrigSystemReferences>
                              <xsl:for-each select="ns9:ListOrigSystemReferences/ns9:OrigSystem">
                                <ns9:OrigSystem>
                                  <xsl:if test="ns9:Identifier">
                                    <ns9:Identifier>
                                      <xsl:value-of select="ns9:Identifier"/>
                                    </ns9:Identifier>
                                  </xsl:if>
                                  <xsl:if test="ns9:TableName">
                                    <ns9:TableName>
                                      <xsl:value-of select="ns9:TableName"/>
                                    </ns9:TableName>
                                  </xsl:if>
                                  <xsl:if test="ns9:TableIdentifier">
                                    <ns9:TableIdentifier>
                                      <xsl:value-of select="ns9:TableIdentifier"/>
                                    </ns9:TableIdentifier>
                                  </xsl:if>
                                  <xsl:if test="ns9:OrigSystem">
                                    <ns9:OrigSystem>
                                      <xsl:value-of select="ns9:OrigSystem"/>
                                    </ns9:OrigSystem>
                                  </xsl:if>
                                  <xsl:if test="ns9:OrigSystemReference">
                                    <ns9:OrigSystemReference>
                                      <xsl:value-of select="ns9:OrigSystemReference"/>
                                    </ns9:OrigSystemReference>
                                  </xsl:if>
                                  <xsl:if test="ns9:ObjectVersionNumber">
                                    <ns9:ObjectVersionNumber>
                                      <xsl:value-of select="ns9:ObjectVersionNumber"/>
                                    </ns9:ObjectVersionNumber>
                                  </xsl:if>
                                  <xsl:if test="ns9:Status">
                                    <ns9:Status>
                                      <xsl:value-of select="ns9:Status"/>
                                    </ns9:Status>
                                  </xsl:if>
                                  <xsl:if test="ns9:StartDate">
                                    <ns9:StartDate>
                                      <xsl:value-of select="ns9:StartDate"/>
                                    </ns9:StartDate>
                                  </xsl:if>
                                  <xsl:if test="ns9:EndDate">
                                    <ns9:EndDate>
                                      <xsl:value-of select="ns9:EndDate"/>
                                    </ns9:EndDate>
                                  </xsl:if>
                                </ns9:OrigSystem>
                              </xsl:for-each>
                            </ns9:ListOrigSystemReferences>
                          </ns9:BasicSupplierSiteInfo>
                        </xsl:for-each>
                      </ns8:ListOfBasicSupplierSiteInfo>
                      <ns8:ListOrigSystemReferences>
                        <xsl:for-each select="ns4:RemitToSupplier/ns8:ListOrigSystemReferences/ns8:OrigSystem">
                          <ns8:OrigSystem>
                            <xsl:if test="ns8:Identifier">
                              <ns8:Identifier>
                                <xsl:value-of select="ns8:Identifier"/>
                              </ns8:Identifier>
                            </xsl:if>
                            <xsl:if test="ns8:TableName">
                              <ns8:TableName>
                                <xsl:value-of select="ns8:TableName"/>
                              </ns8:TableName>
                            </xsl:if>
                            <xsl:if test="ns8:TableIdentifier">
                              <ns8:TableIdentifier>
                                <xsl:value-of select="ns8:TableIdentifier"/>
                              </ns8:TableIdentifier>
                            </xsl:if>
                            <xsl:if test="ns8:OrigSystem">
                              <ns8:OrigSystem>
                                <xsl:value-of select="ns8:OrigSystem"/>
                              </ns8:OrigSystem>
                            </xsl:if>
                            <xsl:if test="ns8:OrigSystemReference">
                              <ns8:OrigSystemReference>
                                <xsl:value-of select="ns8:OrigSystemReference"/>
                              </ns8:OrigSystemReference>
                            </xsl:if>
                            <xsl:if test="ns8:ObjectVersionNumber">
                              <ns8:ObjectVersionNumber>
                                <xsl:value-of select="ns8:ObjectVersionNumber"/>
                              </ns8:ObjectVersionNumber>
                            </xsl:if>
                            <xsl:if test="ns8:Status">
                              <ns8:Status>
                                <xsl:value-of select="ns8:Status"/>
                              </ns8:Status>
                            </xsl:if>
                            <xsl:if test="ns8:StartDate">
                              <ns8:StartDate>
                                <xsl:value-of select="ns8:StartDate"/>
                              </ns8:StartDate>
                            </xsl:if>
                            <xsl:if test="ns8:EndDate">
                              <ns8:EndDate>
                                <xsl:value-of select="ns8:EndDate"/>
                              </ns8:EndDate>
                            </xsl:if>
                          </ns8:OrigSystem>
                        </xsl:for-each>
                      </ns8:ListOrigSystemReferences>
                    </ns4:RemitToSupplier>
                  </xsl:if>
                  <xsl:if test="ns4:ListOfInvoiceLines">
                    <ns4:ListOfInvoiceLines>
                      <xsl:for-each select="ns4:ListOfInvoiceLines/ns4:InvoiceLines">
                        <ns4:InvoiceLines>
                          <xsl:if test="ns4:Accountingdate">
                            <ns4:Accountingdate>
                              <xsl:if test="ns4:Accountingdate/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Accountingdate/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Accountingdate"/>
                            </ns4:Accountingdate>
                          </xsl:if>
                          <xsl:if test="ns4:Accountsegment">
                            <ns4:Accountsegment>
                              <xsl:if test="ns4:Accountsegment/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Accountsegment/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Accountsegment"/>
                            </ns4:Accountsegment>
                          </xsl:if>
                          <xsl:if test="ns4:Amount">
                            <ns4:Amount>
                              <xsl:if test="ns4:Amount/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Amount/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Amount"/>
                            </ns4:Amount>
                          </xsl:if>
                          <xsl:if test="ns4:Amountincludestaxflag">
                            <ns4:Amountincludestaxflag>
                              <xsl:if test="ns4:Amountincludestaxflag/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Amountincludestaxflag/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Amountincludestaxflag"/>
                            </ns4:Amountincludestaxflag>
                          </xsl:if>
                          <xsl:if test="ns4:Applicationid">
                            <ns4:Applicationid>
                              <xsl:if test="ns4:Applicationid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Applicationid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Applicationid"/>
                            </ns4:Applicationid>
                          </xsl:if>
                          <xsl:if test="ns4:Assessablevalue">
                            <ns4:Assessablevalue>
                              <xsl:if test="ns4:Assessablevalue/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Assessablevalue/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Assessablevalue"/>
                            </ns4:Assessablevalue>
                          </xsl:if>
                          <xsl:if test="ns4:Assetstrackingflag">
                            <ns4:Assetstrackingflag>
                              <xsl:if test="ns4:Assetstrackingflag/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Assetstrackingflag/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Assetstrackingflag"/>
                            </ns4:Assetstrackingflag>
                          </xsl:if>
                          <xsl:if test="ns4:Assetbooktypecode">
                            <ns4:Assetbooktypecode>
                              <xsl:if test="ns4:Assetbooktypecode/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Assetbooktypecode/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Assetbooktypecode"/>
                            </ns4:Assetbooktypecode>
                          </xsl:if>
                          <xsl:if test="ns4:Assetcategoryid">
                            <ns4:Assetcategoryid>
                              <xsl:if test="ns4:Assetcategoryid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Assetcategoryid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Assetcategoryid"/>
                            </ns4:Assetcategoryid>
                          </xsl:if>
                          <xsl:if test="ns4:Awardid">
                            <ns4:Awardid>
                              <xsl:if test="ns4:Awardid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Awardid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Awardid"/>
                            </ns4:Awardid>
                          </xsl:if>
                          <xsl:if test="ns4:Awtgroupid">
                            <ns4:Awtgroupid>
                              <xsl:if test="ns4:Awtgroupid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Awtgroupid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Awtgroupid"/>
                            </ns4:Awtgroupid>
                          </xsl:if>
                          <xsl:if test="ns4:Awtgroupname">
                            <ns4:Awtgroupname>
                              <xsl:if test="ns4:Awtgroupname/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Awtgroupname/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Awtgroupname"/>
                            </ns4:Awtgroupname>
                          </xsl:if>
                          <xsl:if test="ns4:Balancingsegment">
                            <ns4:Balancingsegment>
                              <xsl:if test="ns4:Balancingsegment/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Balancingsegment/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Balancingsegment"/>
                            </ns4:Balancingsegment>
                          </xsl:if>
                          <xsl:if test="ns4:Ccreversalflag">
                            <ns4:Ccreversalflag>
                              <xsl:if test="ns4:Ccreversalflag/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Ccreversalflag/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Ccreversalflag"/>
                            </ns4:Ccreversalflag>
                          </xsl:if>
                          <xsl:if test="ns4:Companyprepaidinvoiceid">
                            <ns4:Companyprepaidinvoiceid>
                              <xsl:if test="ns4:Companyprepaidinvoiceid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Companyprepaidinvoiceid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Companyprepaidinvoiceid"/>
                            </ns4:Companyprepaidinvoiceid>
                          </xsl:if>
                          <xsl:if test="ns4:Controlamount">
                            <ns4:Controlamount>
                              <xsl:if test="ns4:Controlamount/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Controlamount/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Controlamount"/>
                            </ns4:Controlamount>
                          </xsl:if>
                          <xsl:if test="ns4:Costcentersegment">
                            <ns4:Costcentersegment>
                              <xsl:if test="ns4:Costcentersegment/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Costcentersegment/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Costcentersegment"/>
                            </ns4:Costcentersegment>
                          </xsl:if>
                          <xsl:if test="ns4:Costfactorid">
                            <ns4:Costfactorid>
                              <xsl:if test="ns4:Costfactorid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Costfactorid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Costfactorid"/>
                            </ns4:Costfactorid>
                          </xsl:if>
                          <xsl:if test="ns4:Costfactorname">
                            <ns4:Costfactorname>
                              <xsl:if test="ns4:Costfactorname/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Costfactorname/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Costfactorname"/>
                            </ns4:Costfactorname>
                          </xsl:if>
                          <xsl:if test="ns4:Countryofsupply">
                            <ns4:Countryofsupply>
                              <xsl:if test="ns4:Countryofsupply/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Countryofsupply/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Countryofsupply"/>
                            </ns4:Countryofsupply>
                          </xsl:if>
                          <xsl:if test="ns4:Creditcardtrxid">
                            <ns4:Creditcardtrxid>
                              <xsl:if test="ns4:Creditcardtrxid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Creditcardtrxid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Creditcardtrxid"/>
                            </ns4:Creditcardtrxid>
                          </xsl:if>
                          <xsl:if test="ns4:Defaultdistccid">
                            <ns4:Defaultdistccid>
                              <xsl:if test="ns4:Defaultdistccid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Defaultdistccid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Defaultdistccid"/>
                            </ns4:Defaultdistccid>
                          </xsl:if>
                          <xsl:if test="ns4:Deferredacctgflag">
                            <ns4:Deferredacctgflag>
                              <xsl:if test="ns4:Deferredacctgflag/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Deferredacctgflag/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Deferredacctgflag"/>
                            </ns4:Deferredacctgflag>
                          </xsl:if>
                          <xsl:if test="ns4:Defacctgenddate">
                            <ns4:Defacctgenddate>
                              <xsl:if test="ns4:Defacctgenddate/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Defacctgenddate/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Defacctgenddate"/>
                            </ns4:Defacctgenddate>
                          </xsl:if>
                          <xsl:if test="ns4:Defacctgnumberofperiods">
                            <ns4:Defacctgnumberofperiods>
                              <xsl:if test="ns4:Defacctgnumberofperiods/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Defacctgnumberofperiods/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Defacctgnumberofperiods"/>
                            </ns4:Defacctgnumberofperiods>
                          </xsl:if>
                          <xsl:if test="ns4:Defacctgperiodtype">
                            <ns4:Defacctgperiodtype>
                              <xsl:if test="ns4:Defacctgperiodtype/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Defacctgperiodtype/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Defacctgperiodtype"/>
                            </ns4:Defacctgperiodtype>
                          </xsl:if>
                          <xsl:if test="ns4:Defacctgstartdate">
                            <ns4:Defacctgstartdate>
                              <xsl:if test="ns4:Defacctgstartdate/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Defacctgstartdate/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Defacctgstartdate"/>
                            </ns4:Defacctgstartdate>
                          </xsl:if>
                          <xsl:if test="ns4:Description">
                            <ns4:Description>
                              <xsl:if test="ns4:Description/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Description/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Description"/>
                            </ns4:Description>
                          </xsl:if>
                          <xsl:if test="ns4:Distributionsetid">
                            <ns4:Distributionsetid>
                              <xsl:if test="ns4:Distributionsetid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Distributionsetid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Distributionsetid"/>
                            </ns4:Distributionsetid>
                          </xsl:if>
                          <xsl:if test="ns4:Distributionsetname">
                            <ns4:Distributionsetname>
                              <xsl:if test="ns4:Distributionsetname/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Distributionsetname/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Distributionsetname"/>
                            </ns4:Distributionsetname>
                          </xsl:if>
                          <xsl:if test="ns4:Distcodecombinationid">
                            <ns4:Distcodecombinationid>
                              <xsl:if test="ns4:Distcodecombinationid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Distcodecombinationid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Distcodecombinationid"/>
                            </ns4:Distcodecombinationid>
                          </xsl:if>
                          <xsl:if test="ns4:Distcodeconcatenated">
                            <ns4:Distcodeconcatenated>
                              <xsl:if test="ns4:Distcodeconcatenated/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Distcodeconcatenated/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Distcodeconcatenated"/>
                            </ns4:Distcodeconcatenated>
                          </xsl:if>
                          <xsl:if test="ns4:Expenditureitemdate">
                            <ns4:Expenditureitemdate>
                              <xsl:if test="ns4:Expenditureitemdate/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Expenditureitemdate/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Expenditureitemdate"/>
                            </ns4:Expenditureitemdate>
                          </xsl:if>
                          <xsl:if test="ns4:Expenditureorganizationid">
                            <ns4:Expenditureorganizationid>
                              <xsl:if test="ns4:Expenditureorganizationid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Expenditureorganizationid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Expenditureorganizationid"/>
                            </ns4:Expenditureorganizationid>
                          </xsl:if>
                          <xsl:if test="ns4:Expendituretype">
                            <ns4:Expendituretype>
                              <xsl:if test="ns4:Expendituretype/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Expendituretype/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Expendituretype"/>
                            </ns4:Expendituretype>
                          </xsl:if>
                          <xsl:if test="ns4:Expensegroup">
                            <ns4:Expensegroup>
                              <xsl:if test="ns4:Expensegroup/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Expensegroup/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Expensegroup"/>
                            </ns4:Expensegroup>
                          </xsl:if>
                          <xsl:if test="ns4:Externaldoclineref">
                            <ns4:Externaldoclineref>
                              <xsl:if test="ns4:Externaldoclineref/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Externaldoclineref/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Externaldoclineref"/>
                            </ns4:Externaldoclineref>
                          </xsl:if>
                          <xsl:if test="ns4:Finalmatchflag">
                            <ns4:Finalmatchflag>
                              <xsl:if test="ns4:Finalmatchflag/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Finalmatchflag/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Finalmatchflag"/>
                            </ns4:Finalmatchflag>
                          </xsl:if>
                          <xsl:if test="ns4:Globalattribute1">
                            <ns4:Globalattribute1>
                              <xsl:if test="ns4:Globalattribute1/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Globalattribute1/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Globalattribute1"/>
                            </ns4:Globalattribute1>
                          </xsl:if>
                          <xsl:if test="ns4:Globalattribute10">
                            <ns4:Globalattribute10>
                              <xsl:if test="ns4:Globalattribute10/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Globalattribute10/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Globalattribute10"/>
                            </ns4:Globalattribute10>
                          </xsl:if>
                          <xsl:if test="ns4:Globalattribute11">
                            <ns4:Globalattribute11>
                              <xsl:if test="ns4:Globalattribute11/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Globalattribute11/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Globalattribute11"/>
                            </ns4:Globalattribute11>
                          </xsl:if>
                          <xsl:if test="ns4:Globalattribute12">
                            <ns4:Globalattribute12>
                              <xsl:if test="ns4:Globalattribute12/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Globalattribute12/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Globalattribute12"/>
                            </ns4:Globalattribute12>
                          </xsl:if>
                          <xsl:if test="ns4:Globalattribute13">
                            <ns4:Globalattribute13>
                              <xsl:if test="ns4:Globalattribute13/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Globalattribute13/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Globalattribute13"/>
                            </ns4:Globalattribute13>
                          </xsl:if>
                          <xsl:if test="ns4:Globalattribute14">
                            <ns4:Globalattribute14>
                              <xsl:if test="ns4:Globalattribute14/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Globalattribute14/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Globalattribute14"/>
                            </ns4:Globalattribute14>
                          </xsl:if>
                          <xsl:if test="ns4:Globalattribute15">
                            <ns4:Globalattribute15>
                              <xsl:if test="ns4:Globalattribute15/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Globalattribute15/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Globalattribute15"/>
                            </ns4:Globalattribute15>
                          </xsl:if>
                          <xsl:if test="ns4:Globalattribute16">
                            <ns4:Globalattribute16>
                              <xsl:if test="ns4:Globalattribute16/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Globalattribute16/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Globalattribute16"/>
                            </ns4:Globalattribute16>
                          </xsl:if>
                          <xsl:if test="ns4:Globalattribute17">
                            <ns4:Globalattribute17>
                              <xsl:if test="ns4:Globalattribute17/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Globalattribute17/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Globalattribute17"/>
                            </ns4:Globalattribute17>
                          </xsl:if>
                          <xsl:if test="ns4:Globalattribute18">
                            <ns4:Globalattribute18>
                              <xsl:if test="ns4:Globalattribute18/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Globalattribute18/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Globalattribute18"/>
                            </ns4:Globalattribute18>
                          </xsl:if>
                          <xsl:if test="ns4:Globalattribute19">
                            <ns4:Globalattribute19>
                              <xsl:if test="ns4:Globalattribute19/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Globalattribute19/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Globalattribute19"/>
                            </ns4:Globalattribute19>
                          </xsl:if>
                          <xsl:if test="ns4:Globalattribute2">
                            <ns4:Globalattribute2>
                              <xsl:if test="ns4:Globalattribute2/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Globalattribute2/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Globalattribute2"/>
                            </ns4:Globalattribute2>
                          </xsl:if>
                          <xsl:if test="ns4:Globalattribute20">
                            <ns4:Globalattribute20>
                              <xsl:if test="ns4:Globalattribute20/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Globalattribute20/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Globalattribute20"/>
                            </ns4:Globalattribute20>
                          </xsl:if>
                          <xsl:if test="ns4:Globalattribute3">
                            <ns4:Globalattribute3>
                              <xsl:if test="ns4:Globalattribute3/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Globalattribute3/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Globalattribute3"/>
                            </ns4:Globalattribute3>
                          </xsl:if>
                          <xsl:if test="ns4:Globalattribute4">
                            <ns4:Globalattribute4>
                              <xsl:if test="ns4:Globalattribute4/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Globalattribute4/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Globalattribute4"/>
                            </ns4:Globalattribute4>
                          </xsl:if>
                          <xsl:if test="ns4:Globalattribute5">
                            <ns4:Globalattribute5>
                              <xsl:if test="ns4:Globalattribute5/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Globalattribute5/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Globalattribute5"/>
                            </ns4:Globalattribute5>
                          </xsl:if>
                          <xsl:if test="ns4:Globalattribute6">
                            <ns4:Globalattribute6>
                              <xsl:if test="ns4:Globalattribute6/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Globalattribute6/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Globalattribute6"/>
                            </ns4:Globalattribute6>
                          </xsl:if>
                          <xsl:if test="ns4:Globalattribute7">
                            <ns4:Globalattribute7>
                              <xsl:if test="ns4:Globalattribute7/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Globalattribute7/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Globalattribute7"/>
                            </ns4:Globalattribute7>
                          </xsl:if>
                          <xsl:if test="ns4:Globalattribute8">
                            <ns4:Globalattribute8>
                              <xsl:if test="ns4:Globalattribute8/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Globalattribute8/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Globalattribute8"/>
                            </ns4:Globalattribute8>
                          </xsl:if>
                          <xsl:if test="ns4:Globalattribute9">
                            <ns4:Globalattribute9>
                              <xsl:if test="ns4:Globalattribute9/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Globalattribute9/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Globalattribute9"/>
                            </ns4:Globalattribute9>
                          </xsl:if>
                          <xsl:if test="ns4:Globalattributecategory">
                            <ns4:Globalattributecategory>
                              <xsl:if test="ns4:Globalattributecategory/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Globalattributecategory/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Globalattributecategory"/>
                            </ns4:Globalattributecategory>
                          </xsl:if>
                          <xsl:if test="ns4:Inclintaxablelineflag">
                            <ns4:Inclintaxablelineflag>
                              <xsl:if test="ns4:Inclintaxablelineflag/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Inclintaxablelineflag/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Inclintaxablelineflag"/>
                            </ns4:Inclintaxablelineflag>
                          </xsl:if>
                          <xsl:if test="ns4:Incometaxregion">
                            <ns4:Incometaxregion>
                              <xsl:if test="ns4:Incometaxregion/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Incometaxregion/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Incometaxregion"/>
                            </ns4:Incometaxregion>
                          </xsl:if>
                          <xsl:if test="ns4:Inventoryitemid">
                            <ns4:Inventoryitemid>
                              <xsl:if test="ns4:Inventoryitemid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Inventoryitemid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Inventoryitemid"/>
                            </ns4:Inventoryitemid>
                          </xsl:if>
                          <xsl:if test="ns4:Invoiceid">
                            <ns4:Invoiceid>
                              <xsl:if test="ns4:Invoiceid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Invoiceid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Invoiceid"/>
                            </ns4:Invoiceid>
                          </xsl:if>
                          <xsl:if test="ns4:Invoicelineid">
                            <ns4:Invoicelineid>
                              <xsl:if test="ns4:Invoicelineid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Invoicelineid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Invoicelineid"/>
                            </ns4:Invoicelineid>
                          </xsl:if>
                          <xsl:if test="ns4:Itemdescription">
                            <ns4:Itemdescription>
                              <xsl:if test="ns4:Itemdescription/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Itemdescription/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Itemdescription"/>
                            </ns4:Itemdescription>
                          </xsl:if>
                          <xsl:if test="ns4:Justification">
                            <ns4:Justification>
                              <xsl:if test="ns4:Justification/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Justification/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Justification"/>
                            </ns4:Justification>
                          </xsl:if>
                          <xsl:if test="ns4:Linegroupnumber">
                            <ns4:Linegroupnumber>
                              <xsl:if test="ns4:Linegroupnumber/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Linegroupnumber/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Linegroupnumber"/>
                            </ns4:Linegroupnumber>
                          </xsl:if>
                          <xsl:if test="ns4:Linenumber">
                            <ns4:Linenumber>
                              <xsl:if test="ns4:Linenumber/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Linenumber/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Linenumber"/>
                            </ns4:Linenumber>
                          </xsl:if>
                          <xsl:if test="ns4:Linetypelookupcode">
                            <ns4:Linetypelookupcode>
                              <xsl:if test="ns4:Linetypelookupcode/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Linetypelookupcode/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Linetypelookupcode"/>
                            </ns4:Linetypelookupcode>
                          </xsl:if>
                          <xsl:if test="ns4:Manufacturer">
                            <ns4:Manufacturer>
                              <xsl:if test="ns4:Manufacturer/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Manufacturer/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Manufacturer"/>
                            </ns4:Manufacturer>
                          </xsl:if>
                          <xsl:if test="ns4:Matchoption">
                            <ns4:Matchoption>
                              <xsl:if test="ns4:Matchoption/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Matchoption/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Matchoption"/>
                            </ns4:Matchoption>
                          </xsl:if>
                          <xsl:if test="ns4:Merchantdocumentnumber">
                            <ns4:Merchantdocumentnumber>
                              <xsl:if test="ns4:Merchantdocumentnumber/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Merchantdocumentnumber/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Merchantdocumentnumber"/>
                            </ns4:Merchantdocumentnumber>
                          </xsl:if>
                          <xsl:if test="ns4:Merchantname">
                            <ns4:Merchantname>
                              <xsl:if test="ns4:Merchantname/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Merchantname/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Merchantname"/>
                            </ns4:Merchantname>
                          </xsl:if>
                          <xsl:if test="ns4:Merchantreference">
                            <ns4:Merchantreference>
                              <xsl:if test="ns4:Merchantreference/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Merchantreference/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Merchantreference"/>
                            </ns4:Merchantreference>
                          </xsl:if>
                          <xsl:if test="ns4:Merchanttaxpayerid">
                            <ns4:Merchanttaxpayerid>
                              <xsl:if test="ns4:Merchanttaxpayerid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Merchanttaxpayerid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Merchanttaxpayerid"/>
                            </ns4:Merchanttaxpayerid>
                          </xsl:if>
                          <xsl:if test="ns4:Merchanttaxregnumber">
                            <ns4:Merchanttaxregnumber>
                              <xsl:if test="ns4:Merchanttaxregnumber/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Merchanttaxregnumber/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Merchanttaxregnumber"/>
                            </ns4:Merchanttaxregnumber>
                          </xsl:if>
                          <xsl:if test="ns4:Modelnumber">
                            <ns4:Modelnumber>
                              <xsl:if test="ns4:Modelnumber/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Modelnumber/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Modelnumber"/>
                            </ns4:Modelnumber>
                          </xsl:if>
                          <xsl:if test="ns4:Orgid">
                            <ns4:Orgid>
                              <xsl:if test="ns4:Orgid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Orgid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Orgid"/>
                            </ns4:Orgid>
                          </xsl:if>
                          <xsl:if test="ns4:Packingslip">
                            <ns4:Packingslip>
                              <xsl:if test="ns4:Packingslip/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Packingslip/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Packingslip"/>
                            </ns4:Packingslip>
                          </xsl:if>
                          <xsl:if test="ns4:Payawtgroupid">
                            <ns4:Payawtgroupid>
                              <xsl:if test="ns4:Payawtgroupid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Payawtgroupid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Payawtgroupid"/>
                            </ns4:Payawtgroupid>
                          </xsl:if>
                          <xsl:if test="ns4:Payawtgroupname">
                            <ns4:Payawtgroupname>
                              <xsl:if test="ns4:Payawtgroupname/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Payawtgroupname/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Payawtgroupname"/>
                            </ns4:Payawtgroupname>
                          </xsl:if>
                          <xsl:if test="ns4:Paadditionflag">
                            <ns4:Paadditionflag>
                              <xsl:if test="ns4:Paadditionflag/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Paadditionflag/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Paadditionflag"/>
                            </ns4:Paadditionflag>
                          </xsl:if>
                          <xsl:if test="ns4:Paccarinvoiceid">
                            <ns4:Paccarinvoiceid>
                              <xsl:if test="ns4:Paccarinvoiceid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Paccarinvoiceid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Paccarinvoiceid"/>
                            </ns4:Paccarinvoiceid>
                          </xsl:if>
                          <xsl:if test="ns4:Paccarinvoicelinenum">
                            <ns4:Paccarinvoicelinenum>
                              <xsl:if test="ns4:Paccarinvoicelinenum/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Paccarinvoicelinenum/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Paccarinvoicelinenum"/>
                            </ns4:Paccarinvoicelinenum>
                          </xsl:if>
                          <xsl:if test="ns4:Paccprocessedcode">
                            <ns4:Paccprocessedcode>
                              <xsl:if test="ns4:Paccprocessedcode/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Paccprocessedcode/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Paccprocessedcode"/>
                            </ns4:Paccprocessedcode>
                          </xsl:if>
                          <xsl:if test="ns4:Paquantity">
                            <ns4:Paquantity>
                              <xsl:if test="ns4:Paquantity/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Paquantity/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Paquantity"/>
                            </ns4:Paquantity>
                          </xsl:if>
                          <xsl:if test="ns4:Podistributionid">
                            <ns4:Podistributionid>
                              <xsl:if test="ns4:Podistributionid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Podistributionid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Podistributionid"/>
                            </ns4:Podistributionid>
                          </xsl:if>
                          <xsl:if test="ns4:Podistributionnum">
                            <ns4:Podistributionnum>
                              <xsl:if test="ns4:Podistributionnum/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Podistributionnum/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Podistributionnum"/>
                            </ns4:Podistributionnum>
                          </xsl:if>
                          <xsl:if test="ns4:Poheaderid">
                            <ns4:Poheaderid>
                              <xsl:if test="ns4:Poheaderid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Poheaderid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Poheaderid"/>
                            </ns4:Poheaderid>
                          </xsl:if>
                          <xsl:if test="ns4:Polineid">
                            <ns4:Polineid>
                              <xsl:if test="ns4:Polineid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Polineid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Polineid"/>
                            </ns4:Polineid>
                          </xsl:if>
                          <xsl:if test="ns4:Polinelocationid">
                            <ns4:Polinelocationid>
                              <xsl:if test="ns4:Polinelocationid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Polinelocationid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Polinelocationid"/>
                            </ns4:Polinelocationid>
                          </xsl:if>
                          <xsl:if test="ns4:Polinenumber">
                            <ns4:Polinenumber>
                              <xsl:if test="ns4:Polinenumber/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Polinenumber/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Polinenumber"/>
                            </ns4:Polinenumber>
                          </xsl:if>
                          <xsl:if test="ns4:Ponumber">
                            <ns4:Ponumber>
                              <xsl:if test="ns4:Ponumber/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Ponumber/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Ponumber"/>
                            </ns4:Ponumber>
                          </xsl:if>
                          <xsl:if test="ns4:Poreleaseid">
                            <ns4:Poreleaseid>
                              <xsl:if test="ns4:Poreleaseid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Poreleaseid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Poreleaseid"/>
                            </ns4:Poreleaseid>
                          </xsl:if>
                          <xsl:if test="ns4:Poshipmentnum">
                            <ns4:Poshipmentnum>
                              <xsl:if test="ns4:Poshipmentnum/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Poshipmentnum/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Poshipmentnum"/>
                            </ns4:Poshipmentnum>
                          </xsl:if>
                          <xsl:if test="ns4:Pounitofmeasure">
                            <ns4:Pounitofmeasure>
                              <xsl:if test="ns4:Pounitofmeasure/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Pounitofmeasure/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Pounitofmeasure"/>
                            </ns4:Pounitofmeasure>
                          </xsl:if>
                          <xsl:if test="ns4:Pricecorrectionflag">
                            <ns4:Pricecorrectionflag>
                              <xsl:if test="ns4:Pricecorrectionflag/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Pricecorrectionflag/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Pricecorrectionflag"/>
                            </ns4:Pricecorrectionflag>
                          </xsl:if>
                          <xsl:if test="ns4:Pricecorrectinvlinenum">
                            <ns4:Pricecorrectinvlinenum>
                              <xsl:if test="ns4:Pricecorrectinvlinenum/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Pricecorrectinvlinenum/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Pricecorrectinvlinenum"/>
                            </ns4:Pricecorrectinvlinenum>
                          </xsl:if>
                          <xsl:if test="ns4:Pricecorrectinvnum">
                            <ns4:Pricecorrectinvnum>
                              <xsl:if test="ns4:Pricecorrectinvnum/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Pricecorrectinvnum/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Pricecorrectinvnum"/>
                            </ns4:Pricecorrectinvnum>
                          </xsl:if>
                          <xsl:if test="ns4:Primaryintendeduse">
                            <ns4:Primaryintendeduse>
                              <xsl:if test="ns4:Primaryintendeduse/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Primaryintendeduse/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Primaryintendeduse"/>
                            </ns4:Primaryintendeduse>
                          </xsl:if>
                          <xsl:if test="ns4:Productcategory">
                            <ns4:Productcategory>
                              <xsl:if test="ns4:Productcategory/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Productcategory/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Productcategory"/>
                            </ns4:Productcategory>
                          </xsl:if>
                          <xsl:if test="ns4:Productfiscclassification">
                            <ns4:Productfiscclassification>
                              <xsl:if test="ns4:Productfiscclassification/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Productfiscclassification/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Productfiscclassification"/>
                            </ns4:Productfiscclassification>
                          </xsl:if>
                          <xsl:if test="ns4:Producttable">
                            <ns4:Producttable>
                              <xsl:if test="ns4:Producttable/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Producttable/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Producttable"/>
                            </ns4:Producttable>
                          </xsl:if>
                          <xsl:if test="ns4:Producttype">
                            <ns4:Producttype>
                              <xsl:if test="ns4:Producttype/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Producttype/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Producttype"/>
                            </ns4:Producttype>
                          </xsl:if>
                          <xsl:if test="ns4:Projectaccountingcontext">
                            <ns4:Projectaccountingcontext>
                              <xsl:if test="ns4:Projectaccountingcontext/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Projectaccountingcontext/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Projectaccountingcontext"/>
                            </ns4:Projectaccountingcontext>
                          </xsl:if>
                          <xsl:if test="ns4:Projectid">
                            <ns4:Projectid>
                              <xsl:if test="ns4:Projectid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Projectid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Projectid"/>
                            </ns4:Projectid>
                          </xsl:if>
                          <xsl:if test="ns4:Prorateacrossflag">
                            <ns4:Prorateacrossflag>
                              <xsl:if test="ns4:Prorateacrossflag/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Prorateacrossflag/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Prorateacrossflag"/>
                            </ns4:Prorateacrossflag>
                          </xsl:if>
                          <xsl:if test="ns4:Purchasingcategory">
                            <ns4:Purchasingcategory>
                              <xsl:if test="ns4:Purchasingcategory/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Purchasingcategory/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Purchasingcategory"/>
                            </ns4:Purchasingcategory>
                          </xsl:if>
                          <xsl:if test="ns4:Purchasingcategoryid">
                            <ns4:Purchasingcategoryid>
                              <xsl:if test="ns4:Purchasingcategoryid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Purchasingcategoryid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Purchasingcategoryid"/>
                            </ns4:Purchasingcategoryid>
                          </xsl:if>
                          <xsl:if test="ns4:Quantityinvoiced">
                            <ns4:Quantityinvoiced>
                              <xsl:if test="ns4:Quantityinvoiced/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Quantityinvoiced/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Quantityinvoiced"/>
                            </ns4:Quantityinvoiced>
                          </xsl:if>
                          <xsl:if test="ns4:Rcvtransactionid">
                            <ns4:Rcvtransactionid>
                              <xsl:if test="ns4:Rcvtransactionid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Rcvtransactionid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Rcvtransactionid"/>
                            </ns4:Rcvtransactionid>
                          </xsl:if>
                          <xsl:if test="ns4:Receiptconversionrate">
                            <ns4:Receiptconversionrate>
                              <xsl:if test="ns4:Receiptconversionrate/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Receiptconversionrate/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Receiptconversionrate"/>
                            </ns4:Receiptconversionrate>
                          </xsl:if>
                          <xsl:if test="ns4:Receiptcurrencyamount">
                            <ns4:Receiptcurrencyamount>
                              <xsl:if test="ns4:Receiptcurrencyamount/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Receiptcurrencyamount/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Receiptcurrencyamount"/>
                            </ns4:Receiptcurrencyamount>
                          </xsl:if>
                          <xsl:if test="ns4:Receiptcurrencycode">
                            <ns4:Receiptcurrencycode>
                              <xsl:if test="ns4:Receiptcurrencycode/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Receiptcurrencycode/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Receiptcurrencycode"/>
                            </ns4:Receiptcurrencycode>
                          </xsl:if>
                          <xsl:if test="ns4:Receiptlinenumber">
                            <ns4:Receiptlinenumber>
                              <xsl:if test="ns4:Receiptlinenumber/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Receiptlinenumber/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Receiptlinenumber"/>
                            </ns4:Receiptlinenumber>
                          </xsl:if>
                          <xsl:if test="ns4:Receiptnumber">
                            <ns4:Receiptnumber>
                              <xsl:if test="ns4:Receiptnumber/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Receiptnumber/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Receiptnumber"/>
                            </ns4:Receiptnumber>
                          </xsl:if>
                          <xsl:if test="ns4:Reference1">
                            <ns4:Reference1>
                              <xsl:if test="ns4:Reference1/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Reference1/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Reference1"/>
                            </ns4:Reference1>
                          </xsl:if>
                          <xsl:if test="ns4:Reference2">
                            <ns4:Reference2>
                              <xsl:if test="ns4:Reference2/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Reference2/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Reference2"/>
                            </ns4:Reference2>
                          </xsl:if>
                          <xsl:if test="ns4:Referencekey1">
                            <ns4:Referencekey1>
                              <xsl:if test="ns4:Referencekey1/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Referencekey1/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Referencekey1"/>
                            </ns4:Referencekey1>
                          </xsl:if>
                          <xsl:if test="ns4:Referencekey2">
                            <ns4:Referencekey2>
                              <xsl:if test="ns4:Referencekey2/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Referencekey2/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Referencekey2"/>
                            </ns4:Referencekey2>
                          </xsl:if>
                          <xsl:if test="ns4:Referencekey3">
                            <ns4:Referencekey3>
                              <xsl:if test="ns4:Referencekey3/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Referencekey3/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Referencekey3"/>
                            </ns4:Referencekey3>
                          </xsl:if>
                          <xsl:if test="ns4:Referencekey4">
                            <ns4:Referencekey4>
                              <xsl:if test="ns4:Referencekey4/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Referencekey4/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Referencekey4"/>
                            </ns4:Referencekey4>
                          </xsl:if>
                          <xsl:if test="ns4:Referencekey5">
                            <ns4:Referencekey5>
                              <xsl:if test="ns4:Referencekey5/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Referencekey5/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Referencekey5"/>
                            </ns4:Referencekey5>
                          </xsl:if>
                          <xsl:if test="ns4:Releasenum">
                            <ns4:Releasenum>
                              <xsl:if test="ns4:Releasenum/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Releasenum/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Releasenum"/>
                            </ns4:Releasenum>
                          </xsl:if>
                          <xsl:if test="ns4:Requesteremployeenum">
                            <ns4:Requesteremployeenum>
                              <xsl:if test="ns4:Requesteremployeenum/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Requesteremployeenum/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Requesteremployeenum"/>
                            </ns4:Requesteremployeenum>
                          </xsl:if>
                          <xsl:if test="ns4:Requesterfirstname">
                            <ns4:Requesterfirstname>
                              <xsl:if test="ns4:Requesterfirstname/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Requesterfirstname/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Requesterfirstname"/>
                            </ns4:Requesterfirstname>
                          </xsl:if>
                          <xsl:if test="ns4:Requesterid">
                            <ns4:Requesterid>
                              <xsl:if test="ns4:Requesterid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Requesterid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Requesterid"/>
                            </ns4:Requesterid>
                          </xsl:if>
                          <xsl:if test="ns4:Requesterlastname">
                            <ns4:Requesterlastname>
                              <xsl:if test="ns4:Requesterlastname/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Requesterlastname/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Requesterlastname"/>
                            </ns4:Requesterlastname>
                          </xsl:if>
                          <xsl:if test="ns4:Serialnumber">
                            <ns4:Serialnumber>
                              <xsl:if test="ns4:Serialnumber/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Serialnumber/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Serialnumber"/>
                            </ns4:Serialnumber>
                          </xsl:if>
                          <xsl:if test="ns4:Shiptolocationcode">
                            <ns4:Shiptolocationcode>
                              <xsl:if test="ns4:Shiptolocationcode/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Shiptolocationcode/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Shiptolocationcode"/>
                            </ns4:Shiptolocationcode>
                          </xsl:if>
                          <xsl:if test="ns4:Shiptolocationid">
                            <ns4:Shiptolocationid>
                              <xsl:if test="ns4:Shiptolocationid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Shiptolocationid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Shiptolocationid"/>
                            </ns4:Shiptolocationid>
                          </xsl:if>
                          <xsl:if test="ns4:Sourceapplicationid">
                            <ns4:Sourceapplicationid>
                              <xsl:if test="ns4:Sourceapplicationid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Sourceapplicationid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Sourceapplicationid"/>
                            </ns4:Sourceapplicationid>
                          </xsl:if>
                          <xsl:if test="ns4:Sourceentitycode">
                            <ns4:Sourceentitycode>
                              <xsl:if test="ns4:Sourceentitycode/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Sourceentitycode/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Sourceentitycode"/>
                            </ns4:Sourceentitycode>
                          </xsl:if>
                          <xsl:if test="ns4:Sourceeventclasscode">
                            <ns4:Sourceeventclasscode>
                              <xsl:if test="ns4:Sourceeventclasscode/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Sourceeventclasscode/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Sourceeventclasscode"/>
                            </ns4:Sourceeventclasscode>
                          </xsl:if>
                          <xsl:if test="ns4:Sourcelineid">
                            <ns4:Sourcelineid>
                              <xsl:if test="ns4:Sourcelineid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Sourcelineid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Sourcelineid"/>
                            </ns4:Sourcelineid>
                          </xsl:if>
                          <xsl:if test="ns4:Sourcetrxid">
                            <ns4:Sourcetrxid>
                              <xsl:if test="ns4:Sourcetrxid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Sourcetrxid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Sourcetrxid"/>
                            </ns4:Sourcetrxid>
                          </xsl:if>
                          <xsl:if test="ns4:Sourcetrxleveltype">
                            <ns4:Sourcetrxleveltype>
                              <xsl:if test="ns4:Sourcetrxleveltype/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Sourcetrxleveltype/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Sourcetrxleveltype"/>
                            </ns4:Sourcetrxleveltype>
                          </xsl:if>
                          <xsl:if test="ns4:Statamount">
                            <ns4:Statamount>
                              <xsl:if test="ns4:Statamount/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Statamount/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Statamount"/>
                            </ns4:Statamount>
                          </xsl:if>
                          <xsl:if test="ns4:Taskid">
                            <ns4:Taskid>
                              <xsl:if test="ns4:Taskid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Taskid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Taskid"/>
                            </ns4:Taskid>
                          </xsl:if>
                          <xsl:if test="ns4:Tax">
                            <ns4:Tax>
                              <xsl:if test="ns4:Tax/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Tax/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Tax"/>
                            </ns4:Tax>
                          </xsl:if>
                          <xsl:if test="ns4:Taxableflag">
                            <ns4:Taxableflag>
                              <xsl:if test="ns4:Taxableflag/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Taxableflag/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Taxableflag"/>
                            </ns4:Taxableflag>
                          </xsl:if>
                          <xsl:if test="ns4:Taxclassificationcode">
                            <ns4:Taxclassificationcode>
                              <xsl:if test="ns4:Taxclassificationcode/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Taxclassificationcode/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Taxclassificationcode"/>
                            </ns4:Taxclassificationcode>
                          </xsl:if>
                          <xsl:if test="ns4:Taxcode">
                            <ns4:Taxcode>
                              <xsl:if test="ns4:Taxcode/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Taxcode/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Taxcode"/>
                            </ns4:Taxcode>
                          </xsl:if>
                          <xsl:if test="ns4:Taxcodeid">
                            <ns4:Taxcodeid>
                              <xsl:if test="ns4:Taxcodeid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Taxcodeid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Taxcodeid"/>
                            </ns4:Taxcodeid>
                          </xsl:if>
                          <xsl:if test="ns4:Taxcodeoverrideflag">
                            <ns4:Taxcodeoverrideflag>
                              <xsl:if test="ns4:Taxcodeoverrideflag/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Taxcodeoverrideflag/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Taxcodeoverrideflag"/>
                            </ns4:Taxcodeoverrideflag>
                          </xsl:if>
                          <xsl:if test="ns4:Taxjurisdictioncode">
                            <ns4:Taxjurisdictioncode>
                              <xsl:if test="ns4:Taxjurisdictioncode/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Taxjurisdictioncode/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Taxjurisdictioncode"/>
                            </ns4:Taxjurisdictioncode>
                          </xsl:if>
                          <xsl:if test="ns4:Taxrate">
                            <ns4:Taxrate>
                              <xsl:if test="ns4:Taxrate/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Taxrate/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Taxrate"/>
                            </ns4:Taxrate>
                          </xsl:if>
                          <xsl:if test="ns4:Taxratecode">
                            <ns4:Taxratecode>
                              <xsl:if test="ns4:Taxratecode/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Taxratecode/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Taxratecode"/>
                            </ns4:Taxratecode>
                          </xsl:if>
                          <xsl:if test="ns4:Taxrateid">
                            <ns4:Taxrateid>
                              <xsl:if test="ns4:Taxrateid/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Taxrateid/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Taxrateid"/>
                            </ns4:Taxrateid>
                          </xsl:if>
                          <xsl:if test="ns4:Taxrecoverableflag">
                            <ns4:Taxrecoverableflag>
                              <xsl:if test="ns4:Taxrecoverableflag/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Taxrecoverableflag/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Taxrecoverableflag"/>
                            </ns4:Taxrecoverableflag>
                          </xsl:if>
                          <xsl:if test="ns4:Taxrecoveryoverrideflag">
                            <ns4:Taxrecoveryoverrideflag>
                              <xsl:if test="ns4:Taxrecoveryoverrideflag/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Taxrecoveryoverrideflag/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Taxrecoveryoverrideflag"/>
                            </ns4:Taxrecoveryoverrideflag>
                          </xsl:if>
                          <xsl:if test="ns4:Taxrecoveryrate">
                            <ns4:Taxrecoveryrate>
                              <xsl:if test="ns4:Taxrecoveryrate/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Taxrecoveryrate/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Taxrecoveryrate"/>
                            </ns4:Taxrecoveryrate>
                          </xsl:if>
                          <xsl:if test="ns4:Taxregimecode">
                            <ns4:Taxregimecode>
                              <xsl:if test="ns4:Taxregimecode/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Taxregimecode/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Taxregimecode"/>
                            </ns4:Taxregimecode>
                          </xsl:if>
                          <xsl:if test="ns4:Taxstatuscode">
                            <ns4:Taxstatuscode>
                              <xsl:if test="ns4:Taxstatuscode/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Taxstatuscode/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Taxstatuscode"/>
                            </ns4:Taxstatuscode>
                          </xsl:if>
                          <xsl:if test="ns4:Trxbusinesscategory">
                            <ns4:Trxbusinesscategory>
                              <xsl:if test="ns4:Trxbusinesscategory/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Trxbusinesscategory/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Trxbusinesscategory"/>
                            </ns4:Trxbusinesscategory>
                          </xsl:if>
                          <xsl:if test="ns4:Type1099">
                            <ns4:Type1099>
                              <xsl:if test="ns4:Type1099/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Type1099/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Type1099"/>
                            </ns4:Type1099>
                          </xsl:if>
                          <xsl:if test="ns4:Unitofmeaslookupcode">
                            <ns4:Unitofmeaslookupcode>
                              <xsl:if test="ns4:Unitofmeaslookupcode/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Unitofmeaslookupcode/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Unitofmeaslookupcode"/>
                            </ns4:Unitofmeaslookupcode>
                          </xsl:if>
                          <xsl:if test="ns4:Unitprice">
                            <ns4:Unitprice>
                              <xsl:if test="ns4:Unitprice/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Unitprice/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Unitprice"/>
                            </ns4:Unitprice>
                          </xsl:if>
                          <xsl:if test="ns4:Userdefinedfiscclass">
                            <ns4:Userdefinedfiscclass>
                              <xsl:if test="ns4:Userdefinedfiscclass/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Userdefinedfiscclass/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Userdefinedfiscclass"/>
                            </ns4:Userdefinedfiscclass>
                          </xsl:if>
                          <xsl:if test="ns4:Ussgltransactioncode">
                            <ns4:Ussgltransactioncode>
                              <xsl:if test="ns4:Ussgltransactioncode/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Ussgltransactioncode/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Ussgltransactioncode"/>
                            </ns4:Ussgltransactioncode>
                          </xsl:if>
                          <xsl:if test="ns4:Vendoritemnum">
                            <ns4:Vendoritemnum>
                              <xsl:if test="ns4:Vendoritemnum/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Vendoritemnum/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Vendoritemnum"/>
                            </ns4:Vendoritemnum>
                          </xsl:if>
                          <xsl:if test="ns4:Warrantynumber">
                            <ns4:Warrantynumber>
                              <xsl:if test="ns4:Warrantynumber/@xsi:nil">
                                <xsl:attribute name="xsi:nil">
                                  <xsl:value-of select="ns4:Warrantynumber/@xsi:nil"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ns4:Warrantynumber"/>
                            </ns4:Warrantynumber>
                          </xsl:if>
                          <ns4:LineDFF>
                            <xsl:if test="ns4:LineDFF/ns10:AttributeCategory">
                              <ns10:AttributeCategory>
                                <xsl:if test="ns4:LineDFF/ns10:AttributeCategory/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:AttributeCategory/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:AttributeCategory"/>
                              </ns10:AttributeCategory>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute1">
                              <ns10:Attribute1>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute1/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute1/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute1"/>
                              </ns10:Attribute1>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute2">
                              <ns10:Attribute2>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute2/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute2/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute2"/>
                              </ns10:Attribute2>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute3">
                              <ns10:Attribute3>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute3/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute3/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute3"/>
                              </ns10:Attribute3>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute4">
                              <ns10:Attribute4>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute4/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute4/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute4"/>
                              </ns10:Attribute4>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute5">
                              <ns10:Attribute5>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute5/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute5/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute5"/>
                              </ns10:Attribute5>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute6">
                              <ns10:Attribute6>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute6/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute6/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute6"/>
                              </ns10:Attribute6>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute7">
                              <ns10:Attribute7>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute7/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute7/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute7"/>
                              </ns10:Attribute7>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute8">
                              <ns10:Attribute8>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute8/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute8/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute8"/>
                              </ns10:Attribute8>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute9">
                              <ns10:Attribute9>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute9/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute9/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute9"/>
                              </ns10:Attribute9>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute10">
                              <ns10:Attribute10>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute10/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute10/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute10"/>
                              </ns10:Attribute10>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute11">
                              <ns10:Attribute11>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute11/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute11/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute11"/>
                              </ns10:Attribute11>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute12">
                              <ns10:Attribute12>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute12/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute12/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute12"/>
                              </ns10:Attribute12>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute13">
                              <ns10:Attribute13>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute13/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute13/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute13"/>
                              </ns10:Attribute13>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute14">
                              <ns10:Attribute14>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute14/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute14/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute14"/>
                              </ns10:Attribute14>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute15">
                              <ns10:Attribute15>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute15/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute15/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute15"/>
                              </ns10:Attribute15>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute16">
                              <ns10:Attribute16>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute16/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute16/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute16"/>
                              </ns10:Attribute16>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute17">
                              <ns10:Attribute17>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute17/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute17/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute17"/>
                              </ns10:Attribute17>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute18">
                              <ns10:Attribute18>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute18/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute18/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute18"/>
                              </ns10:Attribute18>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute19">
                              <ns10:Attribute19>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute19/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute19/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute19"/>
                              </ns10:Attribute19>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute20">
                              <ns10:Attribute20>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute20/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute20/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute20"/>
                              </ns10:Attribute20>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute21">
                              <ns10:Attribute21>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute21/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute21/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute21"/>
                              </ns10:Attribute21>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute22">
                              <ns10:Attribute22>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute22/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute22/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute22"/>
                              </ns10:Attribute22>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute23">
                              <ns10:Attribute23>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute23/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute23/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute23"/>
                              </ns10:Attribute23>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute24">
                              <ns10:Attribute24>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute24/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute24/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute24"/>
                              </ns10:Attribute24>
                            </xsl:if>
                            <xsl:if test="ns4:LineDFF/ns10:Attribute25">
                              <ns10:Attribute25>
                                <xsl:if test="ns4:LineDFF/ns10:Attribute25/@xsi:nil">
                                  <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="ns4:LineDFF/ns10:Attribute25/@xsi:nil"/>
                                  </xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="ns4:LineDFF/ns10:Attribute25"/>
                              </ns10:Attribute25>
                            </xsl:if>
                          </ns4:LineDFF>
                          <ns4:ListOfInvoiceDistLines>
                            <xsl:for-each select="ns4:ListOfInvoiceDistLines/ns4:InvoiceDistLines">
                              <ns4:InvoiceDistLines>
                                <xsl:if test="ns4:Accountingdate">
                                  <ns4:Accountingdate>
                                    <xsl:if test="ns4:Accountingdate/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Accountingdate/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Accountingdate"/>
                                  </ns4:Accountingdate>
                                </xsl:if>
                                <xsl:if test="ns4:Accountingeventid">
                                  <ns4:Accountingeventid>
                                    <xsl:if test="ns4:Accountingeventid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Accountingeventid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Accountingeventid"/>
                                  </ns4:Accountingeventid>
                                </xsl:if>
                                <xsl:if test="ns4:Accrualpostedflag">
                                  <ns4:Accrualpostedflag>
                                    <xsl:if test="ns4:Accrualpostedflag/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Accrualpostedflag/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Accrualpostedflag"/>
                                  </ns4:Accrualpostedflag>
                                </xsl:if>
                                <xsl:if test="ns4:Acctspaycodecombinationid">
                                  <ns4:Acctspaycodecombinationid>
                                    <xsl:if test="ns4:Acctspaycodecombinationid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Acctspaycodecombinationid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Acctspaycodecombinationid"/>
                                  </ns4:Acctspaycodecombinationid>
                                </xsl:if>
                                <xsl:if test="ns4:Amount">
                                  <ns4:Amount>
                                    <xsl:if test="ns4:Amount/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Amount/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Amount"/>
                                  </ns4:Amount>
                                </xsl:if>
                                <xsl:if test="ns4:Assetsadditionflag">
                                  <ns4:Assetsadditionflag>
                                    <xsl:if test="ns4:Assetsadditionflag/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Assetsadditionflag/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Assetsadditionflag"/>
                                  </ns4:Assetsadditionflag>
                                </xsl:if>
                                <xsl:if test="ns4:Assetstrackingflag">
                                  <ns4:Assetstrackingflag>
                                    <xsl:if test="ns4:Assetstrackingflag/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Assetstrackingflag/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Assetstrackingflag"/>
                                  </ns4:Assetstrackingflag>
                                </xsl:if>
                                <xsl:if test="ns4:Assetbooktypecode">
                                  <ns4:Assetbooktypecode>
                                    <xsl:if test="ns4:Assetbooktypecode/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Assetbooktypecode/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Assetbooktypecode"/>
                                  </ns4:Assetbooktypecode>
                                </xsl:if>
                                <xsl:if test="ns4:Assetbooktypename">
                                  <ns4:Assetbooktypename>
                                    <xsl:if test="ns4:Assetbooktypename/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Assetbooktypename/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Assetbooktypename"/>
                                  </ns4:Assetbooktypename>
                                </xsl:if>
                                <xsl:if test="ns4:Assetcategoryid">
                                  <ns4:Assetcategoryid>
                                    <xsl:if test="ns4:Assetcategoryid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Assetcategoryid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Assetcategoryid"/>
                                  </ns4:Assetcategoryid>
                                </xsl:if>
                                <xsl:if test="ns4:Associatedcharges">
                                  <ns4:Associatedcharges>
                                    <xsl:if test="ns4:Associatedcharges/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Associatedcharges/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Associatedcharges"/>
                                  </ns4:Associatedcharges>
                                </xsl:if>
                                <xsl:if test="ns4:Awardid">
                                  <ns4:Awardid>
                                    <xsl:if test="ns4:Awardid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Awardid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Awardid"/>
                                  </ns4:Awardid>
                                </xsl:if>
                                <xsl:if test="ns4:Awtcreationmethod">
                                  <ns4:Awtcreationmethod>
                                    <xsl:if test="ns4:Awtcreationmethod/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Awtcreationmethod/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Awtcreationmethod"/>
                                  </ns4:Awtcreationmethod>
                                </xsl:if>
                                <xsl:if test="ns4:Awtflag">
                                  <ns4:Awtflag>
                                    <xsl:if test="ns4:Awtflag/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Awtflag/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Awtflag"/>
                                  </ns4:Awtflag>
                                </xsl:if>
                                <xsl:if test="ns4:Awtgrossamount">
                                  <ns4:Awtgrossamount>
                                    <xsl:if test="ns4:Awtgrossamount/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Awtgrossamount/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Awtgrossamount"/>
                                  </ns4:Awtgrossamount>
                                </xsl:if>
                                <xsl:if test="ns4:Awtgroupid">
                                  <ns4:Awtgroupid>
                                    <xsl:if test="ns4:Awtgroupid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Awtgroupid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Awtgroupid"/>
                                  </ns4:Awtgroupid>
                                </xsl:if>
                                <xsl:if test="ns4:Awtgroupname">
                                  <ns4:Awtgroupname>
                                    <xsl:if test="ns4:Awtgroupname/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Awtgroupname/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Awtgroupname"/>
                                  </ns4:Awtgroupname>
                                </xsl:if>
                                <xsl:if test="ns4:Awtinvoiceid">
                                  <ns4:Awtinvoiceid>
                                    <xsl:if test="ns4:Awtinvoiceid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Awtinvoiceid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Awtinvoiceid"/>
                                  </ns4:Awtinvoiceid>
                                </xsl:if>
                                <xsl:if test="ns4:Awtorigingroupid">
                                  <ns4:Awtorigingroupid>
                                    <xsl:if test="ns4:Awtorigingroupid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Awtorigingroupid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Awtorigingroupid"/>
                                  </ns4:Awtorigingroupid>
                                </xsl:if>
                                <xsl:if test="ns4:Awttaxrateid">
                                  <ns4:Awttaxrateid>
                                    <xsl:if test="ns4:Awttaxrateid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Awttaxrateid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Awttaxrateid"/>
                                  </ns4:Awttaxrateid>
                                </xsl:if>
                                <xsl:if test="ns4:Baseamount">
                                  <ns4:Baseamount>
                                    <xsl:if test="ns4:Baseamount/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Baseamount/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Baseamount"/>
                                  </ns4:Baseamount>
                                </xsl:if>
                                <xsl:if test="ns4:Basequantityvariance">
                                  <ns4:Basequantityvariance>
                                    <xsl:if test="ns4:Basequantityvariance/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Basequantityvariance/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Basequantityvariance"/>
                                  </ns4:Basequantityvariance>
                                </xsl:if>
                                <xsl:if test="ns4:Batchid">
                                  <ns4:Batchid>
                                    <xsl:if test="ns4:Batchid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Batchid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Batchid"/>
                                  </ns4:Batchid>
                                </xsl:if>
                                <xsl:if test="ns4:Batchname">
                                  <ns4:Batchname>
                                    <xsl:if test="ns4:Batchname/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Batchname/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Batchname"/>
                                  </ns4:Batchname>
                                </xsl:if>
                                <xsl:if test="ns4:Cancellationflag">
                                  <ns4:Cancellationflag>
                                    <xsl:if test="ns4:Cancellationflag/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Cancellationflag/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Cancellationflag"/>
                                  </ns4:Cancellationflag>
                                </xsl:if>
                                <xsl:if test="ns4:Cancelleddate">
                                  <ns4:Cancelleddate>
                                    <xsl:if test="ns4:Cancelleddate/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Cancelleddate/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Cancelleddate"/>
                                  </ns4:Cancelleddate>
                                </xsl:if>
                                <xsl:if test="ns4:Cashpostedflag">
                                  <ns4:Cashpostedflag>
                                    <xsl:if test="ns4:Cashpostedflag/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Cashpostedflag/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Cashpostedflag"/>
                                  </ns4:Cashpostedflag>
                                </xsl:if>
                                <xsl:if test="ns4:Chargeapplicabletodistid">
                                  <ns4:Chargeapplicabletodistid>
                                    <xsl:if test="ns4:Chargeapplicabletodistid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Chargeapplicabletodistid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Chargeapplicabletodistid"/>
                                  </ns4:Chargeapplicabletodistid>
                                </xsl:if>
                                <xsl:if test="ns4:Chargeapplicabletodistnum">
                                  <ns4:Chargeapplicabletodistnum>
                                    <xsl:if test="ns4:Chargeapplicabletodistnum/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Chargeapplicabletodistnum/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Chargeapplicabletodistnum"/>
                                  </ns4:Chargeapplicabletodistnum>
                                </xsl:if>
                                <xsl:if test="ns4:Chargeapplicabletolinenum">
                                  <ns4:Chargeapplicabletolinenum>
                                    <xsl:if test="ns4:Chargeapplicabletolinenum/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Chargeapplicabletolinenum/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Chargeapplicabletolinenum"/>
                                  </ns4:Chargeapplicabletolinenum>
                                </xsl:if>
                                <xsl:if test="ns4:Chartofaccountsid">
                                  <ns4:Chartofaccountsid>
                                    <xsl:if test="ns4:Chartofaccountsid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Chartofaccountsid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Chartofaccountsid"/>
                                  </ns4:Chartofaccountsid>
                                </xsl:if>
                                <xsl:if test="ns4:Correctedinvoicedistid">
                                  <ns4:Correctedinvoicedistid>
                                    <xsl:if test="ns4:Correctedinvoicedistid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Correctedinvoicedistid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Correctedinvoicedistid"/>
                                  </ns4:Correctedinvoicedistid>
                                </xsl:if>
                                <xsl:if test="ns4:Correctedinvoicedistnum">
                                  <ns4:Correctedinvoicedistnum>
                                    <xsl:if test="ns4:Correctedinvoicedistnum/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Correctedinvoicedistnum/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Correctedinvoicedistnum"/>
                                  </ns4:Correctedinvoicedistnum>
                                </xsl:if>
                                <xsl:if test="ns4:Correctedinvoicelinenum">
                                  <ns4:Correctedinvoicelinenum>
                                    <xsl:if test="ns4:Correctedinvoicelinenum/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Correctedinvoicelinenum/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Correctedinvoicelinenum"/>
                                  </ns4:Correctedinvoicelinenum>
                                </xsl:if>
                                <xsl:if test="ns4:Correctedinvoicenum">
                                  <ns4:Correctedinvoicenum>
                                    <xsl:if test="ns4:Correctedinvoicenum/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Correctedinvoicenum/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Correctedinvoicenum"/>
                                  </ns4:Correctedinvoicenum>
                                </xsl:if>
                                <xsl:if test="ns4:Correctedquantity">
                                  <ns4:Correctedquantity>
                                    <xsl:if test="ns4:Correctedquantity/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Correctedquantity/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Correctedquantity"/>
                                  </ns4:Correctedquantity>
                                </xsl:if>
                                <xsl:if test="ns4:Countryofsupply">
                                  <ns4:Countryofsupply>
                                    <xsl:if test="ns4:Countryofsupply/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Countryofsupply/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Countryofsupply"/>
                                  </ns4:Countryofsupply>
                                </xsl:if>
                                <xsl:if test="ns4:Description">
                                  <ns4:Description>
                                    <xsl:if test="ns4:Description/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Description/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Description"/>
                                  </ns4:Description>
                                </xsl:if>
                                <xsl:if test="ns4:Destinationtypecode">
                                  <ns4:Destinationtypecode>
                                    <xsl:if test="ns4:Destinationtypecode/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Destinationtypecode/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Destinationtypecode"/>
                                  </ns4:Destinationtypecode>
                                </xsl:if>
                                <xsl:if test="ns4:Detailtaxdistid">
                                  <ns4:Detailtaxdistid>
                                    <xsl:if test="ns4:Detailtaxdistid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Detailtaxdistid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Detailtaxdistid"/>
                                  </ns4:Detailtaxdistid>
                                </xsl:if>
                                <xsl:if test="ns4:Distributionclass">
                                  <ns4:Distributionclass>
                                    <xsl:if test="ns4:Distributionclass/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Distributionclass/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Distributionclass"/>
                                  </ns4:Distributionclass>
                                </xsl:if>
                                <xsl:if test="ns4:Distributionclassdsp">
                                  <ns4:Distributionclassdsp>
                                    <xsl:if test="ns4:Distributionclassdsp/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Distributionclassdsp/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Distributionclassdsp"/>
                                  </ns4:Distributionclassdsp>
                                </xsl:if>
                                <xsl:if test="ns4:Distributionlinenumber">
                                  <ns4:Distributionlinenumber>
                                    <xsl:if test="ns4:Distributionlinenumber/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Distributionlinenumber/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Distributionlinenumber"/>
                                  </ns4:Distributionlinenumber>
                                </xsl:if>
                                <xsl:if test="ns4:Distcodecombinationid">
                                  <ns4:Distcodecombinationid>
                                    <xsl:if test="ns4:Distcodecombinationid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Distcodecombinationid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Distcodecombinationid"/>
                                  </ns4:Distcodecombinationid>
                                </xsl:if>
                                <xsl:if test="ns4:Distmatchtype">
                                  <ns4:Distmatchtype>
                                    <xsl:if test="ns4:Distmatchtype/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Distmatchtype/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Distmatchtype"/>
                                  </ns4:Distmatchtype>
                                </xsl:if>
                                <xsl:if test="ns4:Distmatchtypedsp">
                                  <ns4:Distmatchtypedsp>
                                    <xsl:if test="ns4:Distmatchtypedsp/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Distmatchtypedsp/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Distmatchtypedsp"/>
                                  </ns4:Distmatchtypedsp>
                                </xsl:if>
                                <xsl:if test="ns4:Encumberedflag">
                                  <ns4:Encumberedflag>
                                    <xsl:if test="ns4:Encumberedflag/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Encumberedflag/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Encumberedflag"/>
                                  </ns4:Encumberedflag>
                                </xsl:if>
                                <xsl:if test="ns4:Expenditureitemdate">
                                  <ns4:Expenditureitemdate>
                                    <xsl:if test="ns4:Expenditureitemdate/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Expenditureitemdate/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Expenditureitemdate"/>
                                  </ns4:Expenditureitemdate>
                                </xsl:if>
                                <xsl:if test="ns4:Expenditureorganizationid">
                                  <ns4:Expenditureorganizationid>
                                    <xsl:if test="ns4:Expenditureorganizationid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Expenditureorganizationid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Expenditureorganizationid"/>
                                  </ns4:Expenditureorganizationid>
                                </xsl:if>
                                <xsl:if test="ns4:Expenditureorganizationname">
                                  <ns4:Expenditureorganizationname>
                                    <xsl:if test="ns4:Expenditureorganizationname/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Expenditureorganizationname/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Expenditureorganizationname"/>
                                  </ns4:Expenditureorganizationname>
                                </xsl:if>
                                <xsl:if test="ns4:Expendituretype">
                                  <ns4:Expendituretype>
                                    <xsl:if test="ns4:Expendituretype/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Expendituretype/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Expendituretype"/>
                                  </ns4:Expendituretype>
                                </xsl:if>
                                <xsl:if test="ns4:Finalmatchflag">
                                  <ns4:Finalmatchflag>
                                    <xsl:if test="ns4:Finalmatchflag/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Finalmatchflag/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Finalmatchflag"/>
                                  </ns4:Finalmatchflag>
                                </xsl:if>
                                <xsl:if test="ns4:Globalattributecategory">
                                  <ns4:Globalattributecategory>
                                    <xsl:if test="ns4:Globalattributecategory/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Globalattributecategory/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Globalattributecategory"/>
                                  </ns4:Globalattributecategory>
                                </xsl:if>
                                <xsl:if test="ns4:Gmsburdenablerawcost">
                                  <ns4:Gmsburdenablerawcost>
                                    <xsl:if test="ns4:Gmsburdenablerawcost/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Gmsburdenablerawcost/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Gmsburdenablerawcost"/>
                                  </ns4:Gmsburdenablerawcost>
                                </xsl:if>
                                <xsl:if test="ns4:Incometaxregion">
                                  <ns4:Incometaxregion>
                                    <xsl:if test="ns4:Incometaxregion/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Incometaxregion/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Incometaxregion"/>
                                  </ns4:Incometaxregion>
                                </xsl:if>
                                <xsl:if test="ns4:Incometaxregionname">
                                  <ns4:Incometaxregionname>
                                    <xsl:if test="ns4:Incometaxregionname/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Incometaxregionname/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Incometaxregionname"/>
                                  </ns4:Incometaxregionname>
                                </xsl:if>
                                <xsl:if test="ns4:Intendeduse">
                                  <ns4:Intendeduse>
                                    <xsl:if test="ns4:Intendeduse/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Intendeduse/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Intendeduse"/>
                                  </ns4:Intendeduse>
                                </xsl:if>
                                <xsl:if test="ns4:Invoicedistributionid">
                                  <ns4:Invoicedistributionid>
                                    <xsl:if test="ns4:Invoicedistributionid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Invoicedistributionid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Invoicedistributionid"/>
                                  </ns4:Invoicedistributionid>
                                </xsl:if>
                                <xsl:if test="ns4:Invoiceid">
                                  <ns4:Invoiceid>
                                    <xsl:if test="ns4:Invoiceid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Invoiceid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Invoiceid"/>
                                  </ns4:Invoiceid>
                                </xsl:if>
                                <xsl:if test="ns4:Invoicelinenumber">
                                  <ns4:Invoicelinenumber>
                                    <xsl:if test="ns4:Invoicelinenumber/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Invoicelinenumber/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Invoicelinenumber"/>
                                  </ns4:Invoicelinenumber>
                                </xsl:if>
                                <xsl:if test="ns4:Invoicenum">
                                  <ns4:Invoicenum>
                                    <xsl:if test="ns4:Invoicenum/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Invoicenum/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Invoicenum"/>
                                  </ns4:Invoicenum>
                                </xsl:if>
                                <xsl:if test="ns4:Linelocationid">
                                  <ns4:Linelocationid>
                                    <xsl:if test="ns4:Linelocationid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Linelocationid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Linelocationid"/>
                                  </ns4:Linelocationid>
                                </xsl:if>
                                <xsl:if test="ns4:Linetype">
                                  <ns4:Linetype>
                                    <xsl:if test="ns4:Linetype/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Linetype/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Linetype"/>
                                  </ns4:Linetype>
                                </xsl:if>
                                <xsl:if test="ns4:Linetypelookupcode">
                                  <ns4:Linetypelookupcode>
                                    <xsl:if test="ns4:Linetypelookupcode/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Linetypelookupcode/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Linetypelookupcode"/>
                                  </ns4:Linetypelookupcode>
                                </xsl:if>
                                <xsl:if test="ns4:Matcheduomlookupcode">
                                  <ns4:Matcheduomlookupcode>
                                    <xsl:if test="ns4:Matcheduomlookupcode/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Matcheduomlookupcode/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Matcheduomlookupcode"/>
                                  </ns4:Matcheduomlookupcode>
                                </xsl:if>
                                <xsl:if test="ns4:Matchstatusflag">
                                  <ns4:Matchstatusflag>
                                    <xsl:if test="ns4:Matchstatusflag/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Matchstatusflag/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Matchstatusflag"/>
                                  </ns4:Matchstatusflag>
                                </xsl:if>
                                <xsl:if test="ns4:Merchantdocumentnumber">
                                  <ns4:Merchantdocumentnumber>
                                    <xsl:if test="ns4:Merchantdocumentnumber/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Merchantdocumentnumber/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Merchantdocumentnumber"/>
                                  </ns4:Merchantdocumentnumber>
                                </xsl:if>
                                <xsl:if test="ns4:Merchantname">
                                  <ns4:Merchantname>
                                    <xsl:if test="ns4:Merchantname/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Merchantname/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Merchantname"/>
                                  </ns4:Merchantname>
                                </xsl:if>
                                <xsl:if test="ns4:Merchantreference">
                                  <ns4:Merchantreference>
                                    <xsl:if test="ns4:Merchantreference/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Merchantreference/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Merchantreference"/>
                                  </ns4:Merchantreference>
                                </xsl:if>
                                <xsl:if test="ns4:Merchanttaxpayerid">
                                  <ns4:Merchanttaxpayerid>
                                    <xsl:if test="ns4:Merchanttaxpayerid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Merchanttaxpayerid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Merchanttaxpayerid"/>
                                  </ns4:Merchanttaxpayerid>
                                </xsl:if>
                                <xsl:if test="ns4:Merchanttaxregnumber">
                                  <ns4:Merchanttaxregnumber>
                                    <xsl:if test="ns4:Merchanttaxregnumber/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Merchanttaxregnumber/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Merchanttaxregnumber"/>
                                  </ns4:Merchanttaxregnumber>
                                </xsl:if>
                                <xsl:if test="ns4:Orgid">
                                  <ns4:Orgid>
                                    <xsl:if test="ns4:Orgid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Orgid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Orgid"/>
                                  </ns4:Orgid>
                                </xsl:if>
                                <xsl:if test="ns4:Otherinvoiceid">
                                  <ns4:Otherinvoiceid>
                                    <xsl:if test="ns4:Otherinvoiceid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Otherinvoiceid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Otherinvoiceid"/>
                                  </ns4:Otherinvoiceid>
                                </xsl:if>
                                <xsl:if test="ns4:Packetid">
                                  <ns4:Packetid>
                                    <xsl:if test="ns4:Packetid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Packetid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Packetid"/>
                                  </ns4:Packetid>
                                </xsl:if>
                                <xsl:if test="ns4:Parentinvoiceid">
                                  <ns4:Parentinvoiceid>
                                    <xsl:if test="ns4:Parentinvoiceid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Parentinvoiceid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Parentinvoiceid"/>
                                  </ns4:Parentinvoiceid>
                                </xsl:if>
                                <xsl:if test="ns4:Parentinvoicenum">
                                  <ns4:Parentinvoicenum>
                                    <xsl:if test="ns4:Parentinvoicenum/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Parentinvoicenum/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Parentinvoicenum"/>
                                  </ns4:Parentinvoicenum>
                                </xsl:if>
                                <xsl:if test="ns4:Parentreversalid">
                                  <ns4:Parentreversalid>
                                    <xsl:if test="ns4:Parentreversalid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Parentreversalid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Parentreversalid"/>
                                  </ns4:Parentreversalid>
                                </xsl:if>
                                <xsl:if test="ns4:Payawtgroupid">
                                  <ns4:Payawtgroupid>
                                    <xsl:if test="ns4:Payawtgroupid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Payawtgroupid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Payawtgroupid"/>
                                  </ns4:Payawtgroupid>
                                </xsl:if>
                                <xsl:if test="ns4:Payawtgroupname">
                                  <ns4:Payawtgroupname>
                                    <xsl:if test="ns4:Payawtgroupname/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Payawtgroupname/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Payawtgroupname"/>
                                  </ns4:Payawtgroupname>
                                </xsl:if>
                                <xsl:if test="ns4:Paadditionflag">
                                  <ns4:Paadditionflag>
                                    <xsl:if test="ns4:Paadditionflag/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Paadditionflag/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Paadditionflag"/>
                                  </ns4:Paadditionflag>
                                </xsl:if>
                                <xsl:if test="ns4:Paquantity">
                                  <ns4:Paquantity>
                                    <xsl:if test="ns4:Paquantity/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Paquantity/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Paquantity"/>
                                  </ns4:Paquantity>
                                </xsl:if>
                                <xsl:if test="ns4:Periodname">
                                  <ns4:Periodname>
                                    <xsl:if test="ns4:Periodname/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Periodname/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Periodname"/>
                                  </ns4:Periodname>
                                </xsl:if>
                                <xsl:if test="ns4:Postedamount">
                                  <ns4:Postedamount>
                                    <xsl:if test="ns4:Postedamount/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Postedamount/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Postedamount"/>
                                  </ns4:Postedamount>
                                </xsl:if>
                                <xsl:if test="ns4:Postedbaseamount">
                                  <ns4:Postedbaseamount>
                                    <xsl:if test="ns4:Postedbaseamount/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Postedbaseamount/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Postedbaseamount"/>
                                  </ns4:Postedbaseamount>
                                </xsl:if>
                                <xsl:if test="ns4:Postedflag">
                                  <ns4:Postedflag>
                                    <xsl:if test="ns4:Postedflag/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Postedflag/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Postedflag"/>
                                  </ns4:Postedflag>
                                </xsl:if>
                                <xsl:if test="ns4:Postedstatus">
                                  <ns4:Postedstatus>
                                    <xsl:if test="ns4:Postedstatus/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Postedstatus/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Postedstatus"/>
                                  </ns4:Postedstatus>
                                </xsl:if>
                                <xsl:if test="ns4:Postedstatusdisp">
                                  <ns4:Postedstatusdisp>
                                    <xsl:if test="ns4:Postedstatusdisp/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Postedstatusdisp/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Postedstatusdisp"/>
                                  </ns4:Postedstatusdisp>
                                </xsl:if>
                                <xsl:if test="ns4:Poaccrueonreceiptflag">
                                  <ns4:Poaccrueonreceiptflag>
                                    <xsl:if test="ns4:Poaccrueonreceiptflag/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Poaccrueonreceiptflag/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Poaccrueonreceiptflag"/>
                                  </ns4:Poaccrueonreceiptflag>
                                </xsl:if>
                                <xsl:if test="ns4:Pocodecombinationid">
                                  <ns4:Pocodecombinationid>
                                    <xsl:if test="ns4:Pocodecombinationid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Pocodecombinationid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Pocodecombinationid"/>
                                  </ns4:Pocodecombinationid>
                                </xsl:if>
                                <xsl:if test="ns4:Podistributionid">
                                  <ns4:Podistributionid>
                                    <xsl:if test="ns4:Podistributionid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Podistributionid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Podistributionid"/>
                                  </ns4:Podistributionid>
                                </xsl:if>
                                <xsl:if test="ns4:Podistributionnumber">
                                  <ns4:Podistributionnumber>
                                    <xsl:if test="ns4:Podistributionnumber/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Podistributionnumber/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Podistributionnumber"/>
                                  </ns4:Podistributionnumber>
                                </xsl:if>
                                <xsl:if test="ns4:Poheaderid">
                                  <ns4:Poheaderid>
                                    <xsl:if test="ns4:Poheaderid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Poheaderid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Poheaderid"/>
                                  </ns4:Poheaderid>
                                </xsl:if>
                                <xsl:if test="ns4:Polineid">
                                  <ns4:Polineid>
                                    <xsl:if test="ns4:Polineid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Polineid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Polineid"/>
                                  </ns4:Polineid>
                                </xsl:if>
                                <xsl:if test="ns4:Polinelocationnumber">
                                  <ns4:Polinelocationnumber>
                                    <xsl:if test="ns4:Polinelocationnumber/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Polinelocationnumber/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Polinelocationnumber"/>
                                  </ns4:Polinelocationnumber>
                                </xsl:if>
                                <xsl:if test="ns4:Polinenumber">
                                  <ns4:Polinenumber>
                                    <xsl:if test="ns4:Polinenumber/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Polinenumber/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Polinenumber"/>
                                  </ns4:Polinenumber>
                                </xsl:if>
                                <xsl:if test="ns4:Ponumber">
                                  <ns4:Ponumber>
                                    <xsl:if test="ns4:Ponumber/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Ponumber/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Ponumber"/>
                                  </ns4:Ponumber>
                                </xsl:if>
                                <xsl:if test="ns4:Poreleaseid">
                                  <ns4:Poreleaseid>
                                    <xsl:if test="ns4:Poreleaseid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Poreleaseid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Poreleaseid"/>
                                  </ns4:Poreleaseid>
                                </xsl:if>
                                <xsl:if test="ns4:Poreleasenumber">
                                  <ns4:Poreleasenumber>
                                    <xsl:if test="ns4:Poreleasenumber/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Poreleasenumber/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Poreleasenumber"/>
                                  </ns4:Poreleasenumber>
                                </xsl:if>
                                <xsl:if test="ns4:Poshipmentclosedcode">
                                  <ns4:Poshipmentclosedcode>
                                    <xsl:if test="ns4:Poshipmentclosedcode/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Poshipmentclosedcode/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Poshipmentclosedcode"/>
                                  </ns4:Poshipmentclosedcode>
                                </xsl:if>
                                <xsl:if test="ns4:Prepayamountremaining">
                                  <ns4:Prepayamountremaining>
                                    <xsl:if test="ns4:Prepayamountremaining/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Prepayamountremaining/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Prepayamountremaining"/>
                                  </ns4:Prepayamountremaining>
                                </xsl:if>
                                <xsl:if test="ns4:Prepaydistributionid">
                                  <ns4:Prepaydistributionid>
                                    <xsl:if test="ns4:Prepaydistributionid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Prepaydistributionid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Prepaydistributionid"/>
                                  </ns4:Prepaydistributionid>
                                </xsl:if>
                                <xsl:if test="ns4:Prepaydistnumber">
                                  <ns4:Prepaydistnumber>
                                    <xsl:if test="ns4:Prepaydistnumber/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Prepaydistnumber/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Prepaydistnumber"/>
                                  </ns4:Prepaydistnumber>
                                </xsl:if>
                                <xsl:if test="ns4:Prepaylinenumber">
                                  <ns4:Prepaylinenumber>
                                    <xsl:if test="ns4:Prepaylinenumber/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Prepaylinenumber/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Prepaylinenumber"/>
                                  </ns4:Prepaylinenumber>
                                </xsl:if>
                                <xsl:if test="ns4:Prepaynumber">
                                  <ns4:Prepaynumber>
                                    <xsl:if test="ns4:Prepaynumber/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Prepaynumber/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Prepaynumber"/>
                                  </ns4:Prepaynumber>
                                </xsl:if>
                                <xsl:if test="ns4:Programapplicationid">
                                  <ns4:Programapplicationid>
                                    <xsl:if test="ns4:Programapplicationid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Programapplicationid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Programapplicationid"/>
                                  </ns4:Programapplicationid>
                                </xsl:if>
                                <xsl:if test="ns4:Programid">
                                  <ns4:Programid>
                                    <xsl:if test="ns4:Programid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Programid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Programid"/>
                                  </ns4:Programid>
                                </xsl:if>
                                <xsl:if test="ns4:Programupdatedate">
                                  <ns4:Programupdatedate>
                                    <xsl:if test="ns4:Programupdatedate/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Programupdatedate/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Programupdatedate"/>
                                  </ns4:Programupdatedate>
                                </xsl:if>
                                <xsl:if test="ns4:Project">
                                  <ns4:Project>
                                    <xsl:if test="ns4:Project/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Project/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Project"/>
                                  </ns4:Project>
                                </xsl:if>
                                <xsl:if test="ns4:Projectid">
                                  <ns4:Projectid>
                                    <xsl:if test="ns4:Projectid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Projectid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Projectid"/>
                                  </ns4:Projectid>
                                </xsl:if>
                                <xsl:if test="ns4:Quantityinvoiced">
                                  <ns4:Quantityinvoiced>
                                    <xsl:if test="ns4:Quantityinvoiced/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Quantityinvoiced/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Quantityinvoiced"/>
                                  </ns4:Quantityinvoiced>
                                </xsl:if>
                                <xsl:if test="ns4:Quantityvariance">
                                  <ns4:Quantityvariance>
                                    <xsl:if test="ns4:Quantityvariance/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Quantityvariance/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Quantityvariance"/>
                                  </ns4:Quantityvariance>
                                </xsl:if>
                                <xsl:if test="ns4:Rcvshipmentheaderid">
                                  <ns4:Rcvshipmentheaderid>
                                    <xsl:if test="ns4:Rcvshipmentheaderid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Rcvshipmentheaderid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Rcvshipmentheaderid"/>
                                  </ns4:Rcvshipmentheaderid>
                                </xsl:if>
                                <xsl:if test="ns4:Rcvshipmentlineid">
                                  <ns4:Rcvshipmentlineid>
                                    <xsl:if test="ns4:Rcvshipmentlineid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Rcvshipmentlineid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Rcvshipmentlineid"/>
                                  </ns4:Rcvshipmentlineid>
                                </xsl:if>
                                <xsl:if test="ns4:Rcvtransactionid">
                                  <ns4:Rcvtransactionid>
                                    <xsl:if test="ns4:Rcvtransactionid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Rcvtransactionid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Rcvtransactionid"/>
                                  </ns4:Rcvtransactionid>
                                </xsl:if>
                                <xsl:if test="ns4:Receiptlinenumber">
                                  <ns4:Receiptlinenumber>
                                    <xsl:if test="ns4:Receiptlinenumber/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Receiptlinenumber/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Receiptlinenumber"/>
                                  </ns4:Receiptlinenumber>
                                </xsl:if>
                                <xsl:if test="ns4:Receiptnumber">
                                  <ns4:Receiptnumber>
                                    <xsl:if test="ns4:Receiptnumber/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Receiptnumber/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Receiptnumber"/>
                                  </ns4:Receiptnumber>
                                </xsl:if>
                                <xsl:if test="ns4:Receipttxndate">
                                  <ns4:Receipttxndate>
                                    <xsl:if test="ns4:Receipttxndate/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Receipttxndate/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Receipttxndate"/>
                                  </ns4:Receipttxndate>
                                </xsl:if>
                                <xsl:if test="ns4:Recoveryrateid">
                                  <ns4:Recoveryrateid>
                                    <xsl:if test="ns4:Recoveryrateid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Recoveryrateid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Recoveryrateid"/>
                                  </ns4:Recoveryrateid>
                                </xsl:if>
                                <xsl:if test="ns4:Recoveryratename">
                                  <ns4:Recoveryratename>
                                    <xsl:if test="ns4:Recoveryratename/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Recoveryratename/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Recoveryratename"/>
                                  </ns4:Recoveryratename>
                                </xsl:if>
                                <xsl:if test="ns4:Recoverytypecode">
                                  <ns4:Recoverytypecode>
                                    <xsl:if test="ns4:Recoverytypecode/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Recoverytypecode/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Recoverytypecode"/>
                                  </ns4:Recoverytypecode>
                                </xsl:if>
                                <xsl:if test="ns4:Recnrecrate">
                                  <ns4:Recnrecrate>
                                    <xsl:if test="ns4:Recnrecrate/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Recnrecrate/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Recnrecrate"/>
                                  </ns4:Recnrecrate>
                                </xsl:if>
                                <xsl:if test="ns4:Reference1">
                                  <ns4:Reference1>
                                    <xsl:if test="ns4:Reference1/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Reference1/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Reference1"/>
                                  </ns4:Reference1>
                                </xsl:if>
                                <xsl:if test="ns4:Reference2">
                                  <ns4:Reference2>
                                    <xsl:if test="ns4:Reference2/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Reference2/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Reference2"/>
                                  </ns4:Reference2>
                                </xsl:if>
                                <xsl:if test="ns4:Relateddistnum">
                                  <ns4:Relateddistnum>
                                    <xsl:if test="ns4:Relateddistnum/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Relateddistnum/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Relateddistnum"/>
                                  </ns4:Relateddistnum>
                                </xsl:if>
                                <xsl:if test="ns4:Relatedid">
                                  <ns4:Relatedid>
                                    <xsl:if test="ns4:Relatedid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Relatedid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Relatedid"/>
                                  </ns4:Relatedid>
                                </xsl:if>
                                <xsl:if test="ns4:Relatedretainageinvdistnum">
                                  <ns4:Relatedretainageinvdistnum>
                                    <xsl:if test="ns4:Relatedretainageinvdistnum/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Relatedretainageinvdistnum/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Relatedretainageinvdistnum"/>
                                  </ns4:Relatedretainageinvdistnum>
                                </xsl:if>
                                <xsl:if test="ns4:Requestid">
                                  <ns4:Requestid>
                                    <xsl:if test="ns4:Requestid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Requestid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Requestid"/>
                                  </ns4:Requestid>
                                </xsl:if>
                                <xsl:if test="ns4:Retainedamountremaining">
                                  <ns4:Retainedamountremaining>
                                    <xsl:if test="ns4:Retainedamountremaining/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Retainedamountremaining/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Retainedamountremaining"/>
                                  </ns4:Retainedamountremaining>
                                </xsl:if>
                                <xsl:if test="ns4:Retainedinvoicedistnum">
                                  <ns4:Retainedinvoicedistnum>
                                    <xsl:if test="ns4:Retainedinvoicedistnum/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Retainedinvoicedistnum/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Retainedinvoicedistnum"/>
                                  </ns4:Retainedinvoicedistnum>
                                </xsl:if>
                                <xsl:if test="ns4:Reversalflag">
                                  <ns4:Reversalflag>
                                    <xsl:if test="ns4:Reversalflag/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Reversalflag/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Reversalflag"/>
                                  </ns4:Reversalflag>
                                </xsl:if>
                                <xsl:if test="ns4:Reverseddistributionnum">
                                  <ns4:Reverseddistributionnum>
                                    <xsl:if test="ns4:Reverseddistributionnum/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Reverseddistributionnum/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Reverseddistributionnum"/>
                                  </ns4:Reverseddistributionnum>
                                </xsl:if>
                                <xsl:if test="ns4:Reversingdistributionid">
                                  <ns4:Reversingdistributionid>
                                    <xsl:if test="ns4:Reversingdistributionid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Reversingdistributionid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Reversingdistributionid"/>
                                  </ns4:Reversingdistributionid>
                                </xsl:if>
                                <xsl:if test="ns4:Reversingdistributionnum">
                                  <ns4:Reversingdistributionnum>
                                    <xsl:if test="ns4:Reversingdistributionnum/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Reversingdistributionnum/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Reversingdistributionnum"/>
                                  </ns4:Reversingdistributionnum>
                                </xsl:if>
                                <xsl:if test="ns4:Roundingamt">
                                  <ns4:Roundingamt>
                                    <xsl:if test="ns4:Roundingamt/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Roundingamt/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Roundingamt"/>
                                  </ns4:Roundingamt>
                                </xsl:if>
                                <xsl:if test="ns4:Rowid">
                                  <ns4:Rowid>
                                    <xsl:if test="ns4:Rowid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Rowid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Rowid"/>
                                  </ns4:Rowid>
                                </xsl:if>
                                <xsl:if test="ns4:Setofbooksid">
                                  <ns4:Setofbooksid>
                                    <xsl:if test="ns4:Setofbooksid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Setofbooksid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Setofbooksid"/>
                                  </ns4:Setofbooksid>
                                </xsl:if>
                                <xsl:if test="ns4:Setofbooksname">
                                  <ns4:Setofbooksname>
                                    <xsl:if test="ns4:Setofbooksname/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Setofbooksname/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Setofbooksname"/>
                                  </ns4:Setofbooksname>
                                </xsl:if>
                                <xsl:if test="ns4:Setofbooksshortname">
                                  <ns4:Setofbooksshortname>
                                    <xsl:if test="ns4:Setofbooksshortname/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Setofbooksshortname/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Setofbooksshortname"/>
                                  </ns4:Setofbooksshortname>
                                </xsl:if>
                                <xsl:if test="ns4:Startexpensedate">
                                  <ns4:Startexpensedate>
                                    <xsl:if test="ns4:Startexpensedate/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Startexpensedate/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Startexpensedate"/>
                                  </ns4:Startexpensedate>
                                </xsl:if>
                                <xsl:if test="ns4:Status">
                                  <ns4:Status>
                                    <xsl:if test="ns4:Status/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Status/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Status"/>
                                  </ns4:Status>
                                </xsl:if>
                                <xsl:if test="ns4:Statamount">
                                  <ns4:Statamount>
                                    <xsl:if test="ns4:Statamount/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Statamount/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Statamount"/>
                                  </ns4:Statamount>
                                </xsl:if>
                                <xsl:if test="ns4:Task">
                                  <ns4:Task>
                                    <xsl:if test="ns4:Task/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Task/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Task"/>
                                  </ns4:Task>
                                </xsl:if>
                                <xsl:if test="ns4:Taskid">
                                  <ns4:Taskid>
                                    <xsl:if test="ns4:Taskid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Taskid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Taskid"/>
                                  </ns4:Taskid>
                                </xsl:if>
                                <xsl:if test="ns4:Taxrecoverableflag">
                                  <ns4:Taxrecoverableflag>
                                    <xsl:if test="ns4:Taxrecoverableflag/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Taxrecoverableflag/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Taxrecoverableflag"/>
                                  </ns4:Taxrecoverableflag>
                                </xsl:if>
                                <xsl:if test="ns4:Type1099">
                                  <ns4:Type1099>
                                    <xsl:if test="ns4:Type1099/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Type1099/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Type1099"/>
                                  </ns4:Type1099>
                                </xsl:if>
                                <xsl:if test="ns4:Unitmeaslookupcode">
                                  <ns4:Unitmeaslookupcode>
                                    <xsl:if test="ns4:Unitmeaslookupcode/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Unitmeaslookupcode/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Unitmeaslookupcode"/>
                                  </ns4:Unitmeaslookupcode>
                                </xsl:if>
                                <xsl:if test="ns4:Unitofmeasure">
                                  <ns4:Unitofmeasure>
                                    <xsl:if test="ns4:Unitofmeasure/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Unitofmeasure/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Unitofmeasure"/>
                                  </ns4:Unitofmeasure>
                                </xsl:if>
                                <xsl:if test="ns4:Unitprice">
                                  <ns4:Unitprice>
                                    <xsl:if test="ns4:Unitprice/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Unitprice/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Unitprice"/>
                                  </ns4:Unitprice>
                                </xsl:if>
                                <xsl:if test="ns4:Webparameterid">
                                  <ns4:Webparameterid>
                                    <xsl:if test="ns4:Webparameterid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Webparameterid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Webparameterid"/>
                                  </ns4:Webparameterid>
                                </xsl:if>
                                <xsl:if test="ns4:Withholdingtaxcode">
                                  <ns4:Withholdingtaxcode>
                                    <xsl:if test="ns4:Withholdingtaxcode/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Withholdingtaxcode/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Withholdingtaxcode"/>
                                  </ns4:Withholdingtaxcode>
                                </xsl:if>
                                <xsl:if test="ns4:Withholdingtaxcodeid">
                                  <ns4:Withholdingtaxcodeid>
                                    <xsl:if test="ns4:Withholdingtaxcodeid/@xsi:nil">
                                      <xsl:attribute name="xsi:nil">
                                        <xsl:value-of select="ns4:Withholdingtaxcodeid/@xsi:nil"/>
                                      </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="ns4:Withholdingtaxcodeid"/>
                                  </ns4:Withholdingtaxcodeid>
                                </xsl:if>
                              </ns4:InvoiceDistLines>
                            </xsl:for-each>
                          </ns4:ListOfInvoiceDistLines>
                        </ns4:InvoiceLines>
                      </xsl:for-each>
                    </ns4:ListOfInvoiceLines>
                  </xsl:if>
                </ns4:Invoice>
              </xsl:for-each>
            </paymentam:ListOfInvoices>
          </xsl:if>
        </paymentam:Payment>
      </xsl:if>
    </paymentam:QueryListOfPaymentResponseMessage>
  </xsl:template>
</xsl:stylesheet>