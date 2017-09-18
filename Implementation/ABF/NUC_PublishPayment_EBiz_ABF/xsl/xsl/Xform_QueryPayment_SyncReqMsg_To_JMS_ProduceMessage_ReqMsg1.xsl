<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:eia="http://xmlns.eia.com/extensions/1.0" xmlns:tns="http://xmlns.eia.com/ABS/EBiz/PaymentABS/1.0"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ns1="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptAO/1.0"
                xmlns:ns3="http://xmlns.eia.com/AO/EBiz/common/SupplierAO/1.0"
                xmlns:ns2="http://xmlns.eia.com/AO/EBiz/P2P/PaymentAO/1.0"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:ns6="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns0="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
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
                exclude-result-prefixes="xsi xsl tns ns1 ns3 ns2 ns6 soap12 soap wsdl mime core ns0 ns4 ns5 ns7 xsd ns10 ns9 ns8 ns11 paymentam bpws xp20 eia bpel bpm utl ora socket mhdr oraext dvm hwf med ids xdk xref ldap"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:ns14="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0"
                xmlns:ns17="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:ns20="http://xmlns.eia.com/AO/EBiz/common/CategoryAO/1.0"
                xmlns:ns12="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:ns13="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns15="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns16="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns18="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns19="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency">
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
      <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment">
        <paymentam:Payment>
          <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment">
            <paymentam:Payment>
              <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment">
                <ns2:BasicPayment>
                  <ns2:Identifier>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment/ns2:Identifier"/>
                  </ns2:Identifier>
                  <ns2:PaymentMethodCode>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment/ns2:PaymentMethodCode"/>
                  </ns2:PaymentMethodCode>
                  <ns2:PaymentAmount>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment/ns2:PaymentAmount"/>
                  </ns2:PaymentAmount>
                  <ns2:PaymentDate>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment/ns2:PaymentDate"/>
                  </ns2:PaymentDate>
                  <ns2:PaymentCurrencyCode>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment/ns2:PaymentCurrencyCode"/>
                  </ns2:PaymentCurrencyCode>
                  <ns2:PaymentReferenceNumber>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment/ns2:PaymentReferenceNumber"/>
                  </ns2:PaymentReferenceNumber>
                  <ns2:PaperDocumentNumber>
                    <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:BasicPayment/ns2:PaperDocumentNumber"/>
                  </ns2:PaperDocumentNumber>
                </ns2:BasicPayment>
              </xsl:if>
              <ns2:Paymentservicerequestid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentservicerequestid"/>
              </ns2:Paymentservicerequestid>
              <ns2:Processtype>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Processtype"/>
              </ns2:Processtype>
              <ns2:Paymentstatus>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentstatus"/>
              </ns2:Paymentstatus>
              <ns2:Paymentscompleteflag>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentscompleteflag"/>
              </ns2:Paymentscompleteflag>
              <ns2:Paymentfunction>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentfunction"/>
              </ns2:Paymentfunction>
              <ns2:Paymentamount>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentamount"/>
              </ns2:Paymentamount>
              <ns2:Billpayableflag>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Billpayableflag"/>
              </ns2:Billpayableflag>
              <ns2:Exclusivepaymentflag>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Exclusivepaymentflag"/>
              </ns2:Exclusivepaymentflag>
              <ns2:Separateremitadvicereqflag>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Separateremitadvicereqflag"/>
              </ns2:Separateremitadvicereqflag>
              <ns2:Internalbankaccountid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Internalbankaccountid"/>
              </ns2:Internalbankaccountid>
              <ns2:Orgid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Orgid"/>
              </ns2:Orgid>
              <ns2:Orgtype>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Orgtype"/>
              </ns2:Orgtype>
              <ns2:Legalentityid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Legalentityid"/>
              </ns2:Legalentityid>
              <ns2:Declarepaymentflag>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Declarepaymentflag"/>
              </ns2:Declarepaymentflag>
              <ns2:Deliverychannelcode>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Deliverychannelcode"/>
              </ns2:Deliverychannelcode>
              <ns2:Extpayeeid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extpayeeid"/>
              </ns2:Extpayeeid>
              <ns2:Paymentinstructionid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentinstructionid"/>
              </ns2:Paymentinstructionid>
              <ns2:Paymentprofileid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentprofileid"/>
              </ns2:Paymentprofileid>
              <ns2:Pregroupedpaymentflag>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Pregroupedpaymentflag"/>
              </ns2:Pregroupedpaymentflag>
              <ns2:Stopconfirmedflag>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopconfirmedflag"/>
              </ns2:Stopconfirmedflag>
              <ns2:Stopreleasedflag>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopreleasedflag"/>
              </ns2:Stopreleasedflag>
              <ns2:Stoprequestplacedflag>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stoprequestplacedflag"/>
              </ns2:Stoprequestplacedflag>
              <ns2:Createdby>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Createdby"/>
              </ns2:Createdby>
              <ns2:Creationdate>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Creationdate"/>
              </ns2:Creationdate>
              <ns2:Lastupdatedby>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Lastupdatedby"/>
              </ns2:Lastupdatedby>
              <ns2:Lastupdatelogin>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Lastupdatelogin"/>
              </ns2:Lastupdatelogin>
              <ns2:Lastupdatedate>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Lastupdatedate"/>
              </ns2:Lastupdatedate>
              <ns2:Objectversionnumber>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Objectversionnumber"/>
              </ns2:Objectversionnumber>
              <ns2:Payeepartyid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeepartyid"/>
              </ns2:Payeepartyid>
              <ns2:Partysiteid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Partysiteid"/>
              </ns2:Partysiteid>
              <ns2:Suppliersiteid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Suppliersiteid"/>
              </ns2:Suppliersiteid>
              <ns2:Paymentreasoncode>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentreasoncode"/>
              </ns2:Paymentreasoncode>
              <ns2:Paymentreasoncomments>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentreasoncomments"/>
              </ns2:Paymentreasoncomments>
              <ns2:Anticipatedvaluedate>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Anticipatedvaluedate"/>
              </ns2:Anticipatedvaluedate>
              <ns2:Declarationamount>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Declarationamount"/>
              </ns2:Declarationamount>
              <ns2:Declarationcurrencycode>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Declarationcurrencycode"/>
              </ns2:Declarationcurrencycode>
              <ns2:Discountamounttaken>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Discountamounttaken"/>
              </ns2:Discountamounttaken>
              <ns2:Paymentdetails>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentdetails"/>
              </ns2:Paymentdetails>
              <ns2:Bankchargebearer>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankchargebearer"/>
              </ns2:Bankchargebearer>
              <ns2:Bankchargeamount>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankchargeamount"/>
              </ns2:Bankchargeamount>
              <ns2:Settlementpriority>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Settlementpriority"/>
              </ns2:Settlementpriority>
              <ns2:Remittancemessage1>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Remittancemessage1"/>
              </ns2:Remittancemessage1>
              <ns2:Remittancemessage2>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Remittancemessage2"/>
              </ns2:Remittancemessage2>
              <ns2:Remittancemessage3>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Remittancemessage3"/>
              </ns2:Remittancemessage3>
              <ns2:Bankassignedrefcode>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankassignedrefcode"/>
              </ns2:Bankassignedrefcode>
              <ns2:Externalbankaccountid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Externalbankaccountid"/>
              </ns2:Externalbankaccountid>
              <ns2:Uniqueremittanceidentifier>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Uniqueremittanceidentifier"/>
              </ns2:Uniqueremittanceidentifier>
              <ns2:Uricheckdigit>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Uricheckdigit"/>
              </ns2:Uricheckdigit>
              <ns2:Bankinstruction1code>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankinstruction1code"/>
              </ns2:Bankinstruction1code>
              <ns2:Bankinstruction2code>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankinstruction2code"/>
              </ns2:Bankinstruction2code>
              <ns2:Bankinstructiondetails>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankinstructiondetails"/>
              </ns2:Bankinstructiondetails>
              <ns2:Paymenttextmessage1>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymenttextmessage1"/>
              </ns2:Paymenttextmessage1>
              <ns2:Paymenttextmessage2>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymenttextmessage2"/>
              </ns2:Paymenttextmessage2>
              <ns2:Paymenttextmessage3>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymenttextmessage3"/>
              </ns2:Paymenttextmessage3>
              <ns2:Maturitydate>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Maturitydate"/>
              </ns2:Maturitydate>
              <ns2:Paymentduedate>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentduedate"/>
              </ns2:Paymentduedate>
              <ns2:Documentcategorycode>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Documentcategorycode"/>
              </ns2:Documentcategorycode>
              <ns2:Documentsequenceid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Documentsequenceid"/>
              </ns2:Documentsequenceid>
              <ns2:Documentsequencevalue>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Documentsequencevalue"/>
              </ns2:Documentsequencevalue>
              <ns2:Beneficiaryparty>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Beneficiaryparty"/>
              </ns2:Beneficiaryparty>
              <ns2:Stopconfirmedby>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopconfirmedby"/>
              </ns2:Stopconfirmedby>
              <ns2:Stopconfirmdate>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopconfirmdate"/>
              </ns2:Stopconfirmdate>
              <ns2:Stopconfirmreason>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopconfirmreason"/>
              </ns2:Stopconfirmreason>
              <ns2:Stopconfirmreference>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopconfirmreference"/>
              </ns2:Stopconfirmreference>
              <ns2:Stopreleasedby>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopreleasedby"/>
              </ns2:Stopreleasedby>
              <ns2:Stopreleasedate>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopreleasedate"/>
              </ns2:Stopreleasedate>
              <ns2:Stopreleasereason>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopreleasereason"/>
              </ns2:Stopreleasereason>
              <ns2:Stopreleasereference>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stopreleasereference"/>
              </ns2:Stopreleasereference>
              <ns2:Stoprequestdate>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stoprequestdate"/>
              </ns2:Stoprequestdate>
              <ns2:Stoprequestplacedby>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stoprequestplacedby"/>
              </ns2:Stoprequestplacedby>
              <ns2:Stoprequestreason>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stoprequestreason"/>
              </ns2:Stoprequestreason>
              <ns2:Stoprequestreference>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Stoprequestreference"/>
              </ns2:Stoprequestreference>
              <ns2:Voidedby>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Voidedby"/>
              </ns2:Voidedby>
              <ns2:Voiddate>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Voiddate"/>
              </ns2:Voiddate>
              <ns2:Voidreason>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Voidreason"/>
              </ns2:Voidreason>
              <ns2:Remittolocationid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Remittolocationid"/>
              </ns2:Remittolocationid>
              <ns2:Completedpmtsgroupid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Completedpmtsgroupid"/>
              </ns2:Completedpmtsgroupid>
              <ns2:Extbranchnumber>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbranchnumber"/>
              </ns2:Extbranchnumber>
              <ns2:Extbanknumber>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbanknumber"/>
              </ns2:Extbanknumber>
              <ns2:Extbankaccountname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankaccountname"/>
              </ns2:Extbankaccountname>
              <ns2:Extbankaccountnumber>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankaccountnumber"/>
              </ns2:Extbankaccountnumber>
              <ns2:Extbankaccounttype>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankaccounttype"/>
              </ns2:Extbankaccounttype>
              <ns2:Extbankaccountibannumber>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankaccountibannumber"/>
              </ns2:Extbankaccountibannumber>
              <ns2:Payeename>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeename"/>
              </ns2:Payeename>
              <ns2:Payeeaddress1>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeaddress1"/>
              </ns2:Payeeaddress1>
              <ns2:Payeeaddress2>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeaddress2"/>
              </ns2:Payeeaddress2>
              <ns2:Payeeaddress3>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeaddress3"/>
              </ns2:Payeeaddress3>
              <ns2:Payeeaddress4>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeaddress4"/>
              </ns2:Payeeaddress4>
              <ns2:Payeecity>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeecity"/>
              </ns2:Payeecity>
              <ns2:Payeepostalcode>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeepostalcode"/>
              </ns2:Payeepostalcode>
              <ns2:Payeestate>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeestate"/>
              </ns2:Payeestate>
              <ns2:Payeeprovince>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeprovince"/>
              </ns2:Payeeprovince>
              <ns2:Payeecounty>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeecounty"/>
              </ns2:Payeecounty>
              <ns2:Payeecountry>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeecountry"/>
              </ns2:Payeecountry>
              <ns2:Remitadvicedeliverymethod>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Remitadvicedeliverymethod"/>
              </ns2:Remitadvicedeliverymethod>
              <ns2:Remitadviceemail>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Remitadviceemail"/>
              </ns2:Remitadviceemail>
              <ns2:Remitadvicefax>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Remitadvicefax"/>
              </ns2:Remitadvicefax>
              <ns2:Paymentprofilesysname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentprofilesysname"/>
              </ns2:Paymentprofilesysname>
              <ns2:Paymentprofileacctname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentprofileacctname"/>
              </ns2:Paymentprofileacctname>
              <ns2:Paymentprocessrequestname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentprocessrequestname"/>
              </ns2:Paymentprocessrequestname>
              <ns2:Sourceproduct>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Sourceproduct"/>
              </ns2:Sourceproduct>
              <ns2:Paymentreasonformatvalue>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Paymentreasonformatvalue"/>
              </ns2:Paymentreasonformatvalue>
              <ns2:Declarationexchratetype>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Declarationexchratetype"/>
              </ns2:Declarationexchratetype>
              <ns2:Declarationformat>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Declarationformat"/>
              </ns2:Declarationformat>
              <ns2:Deliverychannelformatvalue>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Deliverychannelformatvalue"/>
              </ns2:Deliverychannelformatvalue>
              <ns2:Bankinstruction1formatvalue>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankinstruction1formatvalue"/>
              </ns2:Bankinstruction1formatvalue>
              <ns2:Bankinstruction2formatvalue>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Bankinstruction2formatvalue"/>
              </ns2:Bankinstruction2formatvalue>
              <ns2:Sradeliverymethod>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Sradeliverymethod"/>
              </ns2:Sradeliverymethod>
              <ns2:Intbankname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankname"/>
              </ns2:Intbankname>
              <ns2:Intbanknumber>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbanknumber"/>
              </ns2:Intbanknumber>
              <ns2:Inteftswiftcode>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Inteftswiftcode"/>
              </ns2:Inteftswiftcode>
              <ns2:Intbankbranchname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankbranchname"/>
              </ns2:Intbankbranchname>
              <ns2:Intbankbranchnumber>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankbranchnumber"/>
              </ns2:Intbankbranchnumber>
              <ns2:Intbankaccountname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankaccountname"/>
              </ns2:Intbankaccountname>
              <ns2:Intbankaccountnumber>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankaccountnumber"/>
              </ns2:Intbankaccountnumber>
              <ns2:Intbankaccountiban>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankaccountiban"/>
              </ns2:Intbankaccountiban>
              <ns2:Extbankname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankname"/>
              </ns2:Extbankname>
              <ns2:Exteftswiftcode>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Exteftswiftcode"/>
              </ns2:Exteftswiftcode>
              <ns2:Extbankbranchname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankbranchname"/>
              </ns2:Extbankbranchname>
              <ns2:Orgname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Orgname"/>
              </ns2:Orgname>
              <ns2:Payerlegalentityname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerlegalentityname"/>
              </ns2:Payerlegalentityname>
              <ns2:Payerleregistrationnum>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerleregistrationnum"/>
              </ns2:Payerleregistrationnum>
              <ns2:Payertaxregistrationnum>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payertaxregistrationnum"/>
              </ns2:Payertaxregistrationnum>
              <ns2:Payeepartyname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeepartyname"/>
              </ns2:Payeepartyname>
              <ns2:Payeeleregistrationnum>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeleregistrationnum"/>
              </ns2:Payeeleregistrationnum>
              <ns2:Payeetaxregistrationnum>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeetaxregistrationnum"/>
              </ns2:Payeetaxregistrationnum>
              <ns2:Payerpartysitename>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerpartysitename"/>
              </ns2:Payerpartysitename>
              <ns2:Payeeaddressconcat>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeaddressconcat"/>
              </ns2:Payeeaddressconcat>
              <ns2:Beneficiaryname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Beneficiaryname"/>
              </ns2:Beneficiaryname>
              <ns2:Payerpartynumber>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerpartynumber"/>
              </ns2:Payerpartynumber>
              <ns2:Payeepartynumber>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeepartynumber"/>
              </ns2:Payeepartynumber>
              <ns2:Payeealternatename>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeealternatename"/>
              </ns2:Payeealternatename>
              <ns2:Payeesitealternatename>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeesitealternatename"/>
              </ns2:Payeesitealternatename>
              <ns2:Payeesuppliernumber>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeesuppliernumber"/>
              </ns2:Payeesuppliernumber>
              <ns2:Payeefirstpartyreference>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeefirstpartyreference"/>
              </ns2:Payeefirstpartyreference>
              <ns2:Intbankbranchrfcidentifier>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankbranchrfcidentifier"/>
              </ns2:Intbankbranchrfcidentifier>
              <ns2:Intbankacctagencyloccode>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankacctagencyloccode"/>
              </ns2:Intbankacctagencyloccode>
              <ns2:Payerabbreviatedagencycode>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerabbreviatedagencycode"/>
              </ns2:Payerabbreviatedagencycode>
              <ns2:Payerfederalusemployerid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerfederalusemployerid"/>
              </ns2:Payerfederalusemployerid>
              <ns2:Extbankacctownerpartyid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankacctownerpartyid"/>
              </ns2:Extbankacctownerpartyid>
              <ns2:Extbankacctpmtfactorflag>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankacctpmtfactorflag"/>
              </ns2:Extbankacctpmtfactorflag>
              <ns2:Addresssource>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Addresssource"/>
              </ns2:Addresssource>
              <ns2:Employeeaddresscode>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Employeeaddresscode"/>
              </ns2:Employeeaddresscode>
              <ns2:Employeepersonid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Employeepersonid"/>
              </ns2:Employeepersonid>
              <ns2:Employeepaymentflag>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Employeepaymentflag"/>
              </ns2:Employeepaymentflag>
              <ns2:Employeeaddressid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Employeeaddressid"/>
              </ns2:Employeeaddressid>
              <ns2:Requestid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Requestid"/>
              </ns2:Requestid>
              <ns2:Extbankbranchpartyid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankbranchpartyid"/>
              </ns2:Extbankbranchpartyid>
              <ns2:Extbankaltname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankaltname"/>
              </ns2:Extbankaltname>
              <ns2:Extbankbranchaltname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankbranchaltname"/>
              </ns2:Extbankbranchaltname>
              <ns2:Extbankaccountaltname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankaccountaltname"/>
              </ns2:Extbankaccountaltname>
              <ns2:Extbankaccountnumelec>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankaccountnumelec"/>
              </ns2:Extbankaccountnumelec>
              <ns2:Extbankbranchlocationid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankbranchlocationid"/>
              </ns2:Extbankbranchlocationid>
              <ns2:Extbankacctownerpartyname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbankacctownerpartyname"/>
              </ns2:Extbankacctownerpartyname>
              <ns2:Intbankbranchpartyid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankbranchpartyid"/>
              </ns2:Intbankbranchpartyid>
              <ns2:Intbankaltname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankaltname"/>
              </ns2:Intbankaltname>
              <ns2:Intbankbranchaltname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankbranchaltname"/>
              </ns2:Intbankbranchaltname>
              <ns2:Intbankaccountaltname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankaccountaltname"/>
              </ns2:Intbankaccountaltname>
              <ns2:Intbankaccountnumelec>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankaccountnumelec"/>
              </ns2:Intbankaccountnumelec>
              <ns2:Intbankbranchlocationid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankbranchlocationid"/>
              </ns2:Intbankbranchlocationid>
              <ns2:Intbankbrancheftusernum>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Intbankbrancheftusernum"/>
              </ns2:Intbankbrancheftusernum>
              <ns2:Payerpartyid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerpartyid"/>
              </ns2:Payerpartyid>
              <ns2:Payerlocationid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerlocationid"/>
              </ns2:Payerlocationid>
              <ns2:Payerpartyattrcategory>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerpartyattrcategory"/>
              </ns2:Payerpartyattrcategory>
              <ns2:Payerleattrcategory>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payerleattrcategory"/>
              </ns2:Payerleattrcategory>
              <ns2:Payeepartyattrcategory>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeepartyattrcategory"/>
              </ns2:Payeepartyattrcategory>
              <ns2:Payeesupplierattrcategory>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeesupplierattrcategory"/>
              </ns2:Payeesupplierattrcategory>
              <ns2:Payeespplrsiteattrcategory>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeespplrsiteattrcategory"/>
              </ns2:Payeespplrsiteattrcategory>
              <ns2:Payeesuppliersitename>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeesuppliersitename"/>
              </ns2:Payeesuppliersitename>
              <ns2:Payeesuppliersitealtname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeesuppliersitealtname"/>
              </ns2:Payeesuppliersitealtname>
              <ns2:Payeesupplierid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeesupplierid"/>
              </ns2:Payeesupplierid>
              <ns2:Logicalgroupreference>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Logicalgroupreference"/>
              </ns2:Logicalgroupreference>
              <ns2:Positivepayfilecreatedflag>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Positivepayfilecreatedflag"/>
              </ns2:Positivepayfilecreatedflag>
              <ns2:Extinvpayeeid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extinvpayeeid"/>
              </ns2:Extinvpayeeid>
              <ns2:Invpayeepartyid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeepartyid"/>
              </ns2:Invpayeepartyid>
              <ns2:Invpartysiteid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpartysiteid"/>
              </ns2:Invpartysiteid>
              <ns2:Invsuppliersiteid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invsuppliersiteid"/>
              </ns2:Invsuppliersiteid>
              <ns2:Invbeneficiaryparty>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invbeneficiaryparty"/>
              </ns2:Invbeneficiaryparty>
              <ns2:Invpayeename>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeename"/>
              </ns2:Invpayeename>
              <ns2:Invpayeeaddress1>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeeaddress1"/>
              </ns2:Invpayeeaddress1>
              <ns2:Invpayeeaddress2>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeeaddress2"/>
              </ns2:Invpayeeaddress2>
              <ns2:Invpayeeaddress3>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeeaddress3"/>
              </ns2:Invpayeeaddress3>
              <ns2:Invpayeeaddress4>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeeaddress4"/>
              </ns2:Invpayeeaddress4>
              <ns2:Invpayeecity>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeecity"/>
              </ns2:Invpayeecity>
              <ns2:Invpayeepostalcode>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeepostalcode"/>
              </ns2:Invpayeepostalcode>
              <ns2:Invpayeestate>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeestate"/>
              </ns2:Invpayeestate>
              <ns2:Invpayeeprovince>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeeprovince"/>
              </ns2:Invpayeeprovince>
              <ns2:Invpayeecounty>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeecounty"/>
              </ns2:Invpayeecounty>
              <ns2:Invpayeecountry>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeecountry"/>
              </ns2:Invpayeecountry>
              <ns2:Invpayeepartyname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeepartyname"/>
              </ns2:Invpayeepartyname>
              <ns2:Invpayeeleregnum>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeeleregnum"/>
              </ns2:Invpayeeleregnum>
              <ns2:Invpayeetaxregnum>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeetaxregnum"/>
              </ns2:Invpayeetaxregnum>
              <ns2:Invpayeeaddressconcat>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeeaddressconcat"/>
              </ns2:Invpayeeaddressconcat>
              <ns2:Invbeneficiaryname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invbeneficiaryname"/>
              </ns2:Invbeneficiaryname>
              <ns2:Invpayeepartynumber>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeepartynumber"/>
              </ns2:Invpayeepartynumber>
              <ns2:Invpayeealternatename>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeealternatename"/>
              </ns2:Invpayeealternatename>
              <ns2:Invpayeesitealtname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeesitealtname"/>
              </ns2:Invpayeesitealtname>
              <ns2:Invpayeesuppliernumber>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeesuppliernumber"/>
              </ns2:Invpayeesuppliernumber>
              <ns2:Invpayeefirstpartyref>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeefirstpartyref"/>
              </ns2:Invpayeefirstpartyref>
              <ns2:Extbnkacctownrinvprtyid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbnkacctownrinvprtyid"/>
              </ns2:Extbnkacctownrinvprtyid>
              <ns2:Extbnkbranchinvprtyid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbnkbranchinvprtyid"/>
              </ns2:Extbnkbranchinvprtyid>
              <ns2:Extbnkacctownrinvprtynme>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Extbnkacctownrinvprtynme"/>
              </ns2:Extbnkacctownrinvprtynme>
              <ns2:Invpayeepartyattrcat>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeepartyattrcat"/>
              </ns2:Invpayeepartyattrcat>
              <ns2:Invpayeesupplierattrcat>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeesupplierattrcat"/>
              </ns2:Invpayeesupplierattrcat>
              <ns2:Invpayeespplrsiteattrcat>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeespplrsiteattrcat"/>
              </ns2:Invpayeespplrsiteattrcat>
              <ns2:Invpayeesuppliersitename>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeesuppliersitename"/>
              </ns2:Invpayeesuppliersitename>
              <ns2:Invpayeespplrsitealtname>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeespplrsitealtname"/>
              </ns2:Invpayeespplrsitealtname>
              <ns2:Invpayeesupplierid>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeesupplierid"/>
              </ns2:Invpayeesupplierid>
              <ns2:Payeeaddressee>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeeaddressee"/>
              </ns2:Payeeaddressee>
              <ns2:Payeepartysitename>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Payeepartysitename"/>
              </ns2:Payeepartysitename>
              <ns2:Invpayeepartysitename>
                <xsl:value-of select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:Payment/ns2:Invpayeepartysitename"/>
              </ns2:Invpayeepartysitename>
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
            </paymentam:Payment>
          </xsl:if>
          <xsl:if test="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:ListOfBasicInvoicesPurchase">
            <paymentam:ListOfBasicInvoicesPurchase>
              <xsl:for-each select="/paymentam:QueryListOfPaymentResponseMessage/paymentam:Payment/paymentam:ListOfBasicInvoicesPurchase/paymentam:BasicInvoicePurchase">
                <paymentam:BasicInvoicePurchase>
                  <xsl:if test="paymentam:BasicInvoice">
                    <paymentam:BasicInvoice>
                      <ns4:InvoiceNumber>
                        <xsl:value-of select="paymentam:BasicInvoice/ns4:InvoiceNumber"/>
                      </ns4:InvoiceNumber>
                      <ns4:InvoiceDate>
                        <xsl:value-of select="paymentam:BasicInvoice/ns4:InvoiceDate"/>
                      </ns4:InvoiceDate>
                      <ns4:InvoiceAmount>
                        <xsl:if test="paymentam:BasicInvoice/ns4:InvoiceAmount/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="paymentam:BasicInvoice/ns4:InvoiceAmount/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="paymentam:BasicInvoice/ns4:InvoiceAmount/ns5:Value">
                          <ns5:Value>
                            <xsl:if test="paymentam:BasicInvoice/ns4:InvoiceAmount/ns5:Value/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                <xsl:value-of select="paymentam:BasicInvoice/ns4:InvoiceAmount/ns5:Value/@xsi:nil"/>
                              </xsl:attribute>
                            </xsl:if>
                            <xsl:value-of select="paymentam:BasicInvoice/ns4:InvoiceAmount/ns5:Value"/>
                          </ns5:Value>
                        </xsl:if>
                        <xsl:if test="paymentam:BasicInvoice/ns4:InvoiceAmount/ns5:CurrencyCode">
                          <ns5:CurrencyCode>
                            <xsl:if test="paymentam:BasicInvoice/ns4:InvoiceAmount/ns5:CurrencyCode/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                <xsl:value-of select="paymentam:BasicInvoice/ns4:InvoiceAmount/ns5:CurrencyCode/@xsi:nil"/>
                              </xsl:attribute>
                            </xsl:if>
                            <xsl:value-of select="paymentam:BasicInvoice/ns4:InvoiceAmount/ns5:CurrencyCode"/>
                          </ns5:CurrencyCode>
                        </xsl:if>
                      </ns4:InvoiceAmount>
                    </paymentam:BasicInvoice>
                  </xsl:if>
                  <xsl:if test="paymentam:ListOfBasicPurchaseOrder">
                    <paymentam:ListOfBasicPurchaseOrder>
                      <xsl:for-each select="paymentam:ListOfBasicPurchaseOrder/paymentam:BasicPurchaseReceipt">
                        <paymentam:BasicPurchaseReceipt>
                          <xsl:if test="paymentam:BasicPurchaseOrder">
                            <paymentam:BasicPurchaseOrder>
                              <ns11:POIndentfierID>
                                <xsl:value-of select="paymentam:BasicPurchaseOrder/ns11:POIndentfierID"/>
                              </ns11:POIndentfierID>
                              <ns11:PurchaseOrderNumber>
                                <xsl:value-of select="paymentam:BasicPurchaseOrder/ns11:PurchaseOrderNumber"/>
                              </ns11:PurchaseOrderNumber>
                              <ns11:PurchaseOrderDate>
                                <xsl:value-of select="paymentam:BasicPurchaseOrder/ns11:PurchaseOrderDate"/>
                              </ns11:PurchaseOrderDate>
                            </paymentam:BasicPurchaseOrder>
                          </xsl:if>
                          <xsl:if test="paymentam:ListOfBasicReceipts">
                            <paymentam:ListOfBasicReceipts>
                              <xsl:for-each select="paymentam:ListOfBasicReceipts/ns1:BasicReceipt">
                                <ns1:BasicReceipt>
                                  <ns1:IndentfierID>
                                    <xsl:value-of select="ns1:IndentfierID"/>
                                  </ns1:IndentfierID>
                                  <ns1:ReceiptNumber>
                                    <xsl:value-of select="ns1:ReceiptNumber"/>
                                  </ns1:ReceiptNumber>
                                  <ns1:ShipmentNumber>
                                    <xsl:value-of select="ns1:ShipmentNumber"/>
                                  </ns1:ShipmentNumber>
                                  <ns1:BillOfLAdding>
                                    <xsl:value-of select="ns1:BillOfLAdding"/>
                                  </ns1:BillOfLAdding>
                                  <ns1:Packing>
                                    <xsl:value-of select="ns1:Packing"/>
                                  </ns1:Packing>
                                  <ns1:ReceiptSource>
                                    <xsl:value-of select="ns1:ReceiptSource"/>
                                  </ns1:ReceiptSource>
                                </ns1:BasicReceipt>
                              </xsl:for-each>
                            </paymentam:ListOfBasicReceipts>
                          </xsl:if>
                        </paymentam:BasicPurchaseReceipt>
                      </xsl:for-each>
                    </paymentam:ListOfBasicPurchaseOrder>
                  </xsl:if>
                </paymentam:BasicInvoicePurchase>
              </xsl:for-each>
            </paymentam:ListOfBasicInvoicesPurchase>
          </xsl:if>
        </paymentam:Payment>
      </xsl:if>
    </paymentam:QueryListOfPaymentResponseMessage>
  </xsl:template>
</xsl:stylesheet>