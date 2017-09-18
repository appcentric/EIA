<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_QueryPaymentBy_Example"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ns1="http://xmlns.eia.com/AO/EBiz/P2P/PaymentAM/1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 ns1 oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/Nucor/NUC_EBizPayment_ABS/DB_QueryPaymentBy_Example"
                xmlns:ns2="http://xmlns.eia.com/ABS/EBiz/PaymentABS/1.0"
                xmlns:ns6="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0"
                xmlns:ns7="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptAO/1.0"
                xmlns:ns8="http://xmlns.eia.com/AO/EBiz/P2P/PaymentAO/1.0"
                xmlns:ns11="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0"
                xmlns:ns15="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:ns22="http://xmlns.eia.com/AO/EBiz/common/CategoryAO/1.0"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns3="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns4="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:ns5="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns10="http://xmlns.eia.com/AO/EBiz/P2P/InvoiceAO/1.0"
                xmlns:ns9="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns12="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:ns14="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:ns13="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:ns18="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:ns17="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns16="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns20="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderAO/1.0"
                xmlns:ns19="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns21="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../DB_QueryPaymentBy_Example.wsdl"/>
        <oracle-xsl-mapper:rootElement name="IbyPaymentsAllCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_QueryPaymentBy_Example"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/PaymentABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryListOfPaymentRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/PaymentAM/1.0"/>
        <oracle-xsl-mapper:param name="QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/PaymentABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryListOfPaymentResponseMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/PaymentAM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [TUE JAN 17 16:31:25 IST 2017].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage"/>
  <xsl:template match="/">
    <ns1:QueryListOfPaymentResponseMessage>
      <ns13:HeaderRs>
        <ns13:RequestDetails>
          <ns13:TransactionRequestID>
            <xsl:value-of select="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:TransactionRequestID"/>
          </ns13:TransactionRequestID>
          <ns13:Language>
            <xsl:value-of select="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:Language"/>
          </ns13:Language>
          <ns13:ComponentID>
            <xsl:value-of select="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:ComponentID"/>
          </ns13:ComponentID>
          <ns13:ServiceName>
            <xsl:value-of select="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:ServiceName"/>
          </ns13:ServiceName>
          <xsl:if test="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:TransactionIDREF">
            <ns13:TransactionIDREF>
              <xsl:value-of select="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:TransactionIDREF"/>
            </ns13:TransactionIDREF>
          </xsl:if>
          <xsl:if test="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:TransactionName">
            <ns13:TransactionName>
              <xsl:value-of select="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:TransactionName"/>
            </ns13:TransactionName>
          </xsl:if>
          <xsl:if test="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:FileName">
            <ns13:FileName>
              <xsl:value-of select="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:FileName"/>
            </ns13:FileName>
          </xsl:if>
          <xsl:if test="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:FileInstanceID">
            <ns13:FileInstanceID>
              <xsl:value-of select="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:FileInstanceID"/>
            </ns13:FileInstanceID>
          </xsl:if>
          <xsl:if test="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:Source">
            <ns13:Source>
              <xsl:value-of select="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:Source"/>
            </ns13:Source>
          </xsl:if>
          <xsl:if test="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:Target">
            <ns13:Target>
              <xsl:value-of select="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:Target"/>
            </ns13:Target>
          </xsl:if>
          <xsl:if test="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:HostName">
            <ns13:HostName>
              <xsl:value-of select="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:HostName"/>
            </ns13:HostName>
          </xsl:if>
          <xsl:if test="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:UserName">
            <ns13:UserName>
              <xsl:value-of select="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:UserName"/>
            </ns13:UserName>
          </xsl:if>
          <xsl:if test="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:UserRole">
            <ns13:UserRole>
              <xsl:value-of select="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:UserRole"/>
            </ns13:UserRole>
          </xsl:if>
          <xsl:if test="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:AdminEmail">
            <ns13:AdminEmail>
              <xsl:value-of select="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:AdminEmail"/>
            </ns13:AdminEmail>
          </xsl:if>
          <xsl:if test="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:ApplicationResponsibility">
            <ns13:ApplicationResponsibility>
              <xsl:value-of select="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:ApplicationResponsibility"/>
            </ns13:ApplicationResponsibility>
          </xsl:if>
          <xsl:if test="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:EOFFlag">
            <ns13:EOFFlag>
              <xsl:value-of select="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:EOFFlag"/>
            </ns13:EOFFlag>
          </xsl:if>
          <xsl:if test="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:SOFFlag">
            <ns13:SOFFlag>
              <xsl:value-of select="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:SOFFlag"/>
            </ns13:SOFFlag>
          </xsl:if>
          <xsl:if test="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:FileRecordCount">
            <ns13:FileRecordCount>
              <xsl:value-of select="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:FileRecordCount"/>
            </ns13:FileRecordCount>
          </xsl:if>
          <xsl:if test="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:TimeStamp">
            <ns13:TimeStamp>
              <xsl:value-of select="$QueryPaymentBy_Example_Sync_ReqMsg.QueryListOfPaymentRequestMessage/ns1:QueryListOfPaymentRequestMessage/ns13:HeaderRq/ns13:TimeStamp"/>
            </ns13:TimeStamp>
          </xsl:if>
        </ns13:RequestDetails>
      </ns13:HeaderRs>
      <ns1:Payment>
        <ns1:Payment>
          <ns8:BasicPayment>
            <ns8:Identifier>
              <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentId"/>
            </ns8:Identifier>
            <ns8:PaymentMethodCode>
              <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentMethodCode"/>
            </ns8:PaymentMethodCode>
            <ns8:PaymentAmount>
              <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentAmount"/>
            </ns8:PaymentAmount>
            <ns8:PaymentDate>
              <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentDate"/>
            </ns8:PaymentDate>
            <ns8:PaymentCurrencyCode>
              <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentCurrencyCode"/>
            </ns8:PaymentCurrencyCode>
            <ns8:PaymentReferenceNumber>
              <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentReferenceNumber"/>
            </ns8:PaymentReferenceNumber>
            <ns8:PaperDocumentNumber>
              <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paperDocumentNumber"/>
            </ns8:PaperDocumentNumber>
          </ns8:BasicPayment>
          <ns8:Paymentservicerequestid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentServiceRequestId"/>
          </ns8:Paymentservicerequestid>
          <ns8:Processtype>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:processType"/>
          </ns8:Processtype>
          <ns8:Paymentstatus>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentStatus"/>
          </ns8:Paymentstatus>
          <ns8:Paymentfunction>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentFunction"/>
          </ns8:Paymentfunction>
          <ns8:Paymentamount>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentAmount"/>
          </ns8:Paymentamount>
          <ns8:Billpayableflag>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:billPayableFlag"/>
          </ns8:Billpayableflag>
          <ns8:Exclusivepaymentflag>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:exclusivePaymentFlag"/>
          </ns8:Exclusivepaymentflag>
          <ns8:Separateremitadvicereqflag>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:separateRemitAdviceReqFlag"/>
          </ns8:Separateremitadvicereqflag>
          <ns8:Internalbankaccountid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:internalBankAccountId"/>
          </ns8:Internalbankaccountid>
          <ns8:Orgid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:orgId"/>
          </ns8:Orgid>
          <ns8:Orgtype>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:orgType"/>
          </ns8:Orgtype>
          <ns8:Legalentityid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:legalEntityId"/>
          </ns8:Legalentityid>
          <ns8:Declarepaymentflag>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:declarePaymentFlag"/>
          </ns8:Declarepaymentflag>
          <ns8:Deliverychannelcode>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:deliveryChannelCode"/>
          </ns8:Deliverychannelcode>
          <ns8:Extpayeeid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extPayeeId"/>
          </ns8:Extpayeeid>
          <ns8:Paymentinstructionid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentInstructionId"/>
          </ns8:Paymentinstructionid>
          <ns8:Paymentprofileid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentProfileId"/>
          </ns8:Paymentprofileid>
          <ns8:Pregroupedpaymentflag>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:pregroupedPaymentFlag"/>
          </ns8:Pregroupedpaymentflag>
          <ns8:Stopconfirmedflag>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:StopConfirmedFlag"/>
          </ns8:Stopconfirmedflag>
          <ns8:Stopreleasedflag>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:StopReleasedFlag"/>
          </ns8:Stopreleasedflag>
          <ns8:Stoprequestplacedflag>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:StopRequestPlacedFlag"/>
          </ns8:Stoprequestplacedflag>
          <ns8:Createdby>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:createdBy"/>
          </ns8:Createdby>
          <ns8:Creationdate>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:creationDate"/>
          </ns8:Creationdate>
          <ns8:Lastupdatedby>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:lastUpdatedBy"/>
          </ns8:Lastupdatedby>
          <ns8:Lastupdatelogin>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:lastUpdateLogin"/>
          </ns8:Lastupdatelogin>
          <ns8:Lastupdatedate>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:lastUpdateDate"/>
          </ns8:Lastupdatedate>
          <ns8:Objectversionnumber>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:objectVersionNumber"/>
          </ns8:Objectversionnumber>
          <ns8:Payeepartyid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeePartyId"/>
          </ns8:Payeepartyid>
          <ns8:Partysiteid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:partySiteId"/>
          </ns8:Partysiteid>
          <ns8:Suppliersiteid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:supplierSiteId"/>
          </ns8:Suppliersiteid>
          <ns8:Paymentreasoncode>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentReasonCode"/>
          </ns8:Paymentreasoncode>
          <ns8:Paymentreasoncomments>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentReasonComments"/>
          </ns8:Paymentreasoncomments>
          <ns8:Declarationamount>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:declarationAmount"/>
          </ns8:Declarationamount>
          <ns8:Declarationcurrencycode>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:declarationCurrencyCode"/>
          </ns8:Declarationcurrencycode>
          <ns8:Discountamounttaken>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:discountAmountTaken"/>
          </ns8:Discountamounttaken>
          <ns8:Paymentdetails>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentDetails"/>
          </ns8:Paymentdetails>
          <ns8:Bankchargebearer>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:bankChargeBearer"/>
          </ns8:Bankchargebearer>
          <ns8:Bankchargeamount>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:bankChargeAmount"/>
          </ns8:Bankchargeamount>
          <ns8:Settlementpriority>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:settlementPriority"/>
          </ns8:Settlementpriority>
          <ns8:Remittancemessage1>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:remittanceMessage1"/>
          </ns8:Remittancemessage1>
          <ns8:Remittancemessage2>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:remittanceMessage2"/>
          </ns8:Remittancemessage2>
          <ns8:Remittancemessage3>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:remittanceMessage3"/>
          </ns8:Remittancemessage3>
          <ns8:Externalbankaccountid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:externalBankAccountId"/>
          </ns8:Externalbankaccountid>
          <ns8:Uniqueremittanceidentifier>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:uniqueRemittanceIdentifier"/>
          </ns8:Uniqueremittanceidentifier>
          <ns8:Uricheckdigit>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:uriCheckDigit"/>
          </ns8:Uricheckdigit>
          <ns8:Bankinstruction1code>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:bankInstruction1Code"/>
          </ns8:Bankinstruction1code>
          <ns8:Bankinstruction2code>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:bankInstruction2Code"/>
          </ns8:Bankinstruction2code>
          <ns8:Bankinstructiondetails>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:bankInstructionDetails"/>
          </ns8:Bankinstructiondetails>
          <ns8:Paymenttextmessage1>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentTextMessage1"/>
          </ns8:Paymenttextmessage1>
          <ns8:Paymenttextmessage2>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentTextMessage2"/>
          </ns8:Paymenttextmessage2>
          <ns8:Paymenttextmessage3>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentTextMessage3"/>
          </ns8:Paymenttextmessage3>
          <ns8:Maturitydate>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:maturityDate"/>
          </ns8:Maturitydate>
          <ns8:Paymentduedate>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentDueDate"/>
          </ns8:Paymentduedate>
          <ns8:Documentcategorycode>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:documentCategoryCode"/>
          </ns8:Documentcategorycode>
          <ns8:Documentsequenceid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:documentSequenceId"/>
          </ns8:Documentsequenceid>
          <ns8:Documentsequencevalue>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:documentSequenceValue"/>
          </ns8:Documentsequencevalue>
          <ns8:Beneficiaryparty>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:beneficiaryParty"/>
          </ns8:Beneficiaryparty>
          <ns8:Stopconfirmedby>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:StopConfirmedBy"/>
          </ns8:Stopconfirmedby>
          <ns8:Stopconfirmdate>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:StopConfirmDate"/>
          </ns8:Stopconfirmdate>
          <ns8:Stopconfirmreason>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:StopConfirmReason"/>
          </ns8:Stopconfirmreason>
          <ns8:Stopconfirmreference>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:StopConfirmReference"/>
          </ns8:Stopconfirmreference>
          <ns8:Stopreleasedby>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:StopReleasedBy"/>
          </ns8:Stopreleasedby>
          <ns8:Stopreleasedate>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:StopReleaseDate"/>
          </ns8:Stopreleasedate>
          <ns8:Stopreleasereason>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:StopReleaseReason"/>
          </ns8:Stopreleasereason>
          <ns8:Stopreleasereference>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:StopReleaseReference"/>
          </ns8:Stopreleasereference>
          <ns8:Stoprequestdate>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:StopRequestDate"/>
          </ns8:Stoprequestdate>
          <ns8:Stoprequestplacedby>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:StopRequestPlacedBy"/>
          </ns8:Stoprequestplacedby>
          <ns8:Stoprequestreason>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:StopRequestReason"/>
          </ns8:Stoprequestreason>
          <ns8:Stoprequestreference>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:StopRequestReference"/>
          </ns8:Stoprequestreference>
          <ns8:Voidedby>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:voidedBy"/>
          </ns8:Voidedby>
          <ns8:Voiddate>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:voidDate"/>
          </ns8:Voiddate>
          <ns8:Voidreason>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:voidReason"/>
          </ns8:Voidreason>
          <ns8:Remittolocationid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:remitToLocationId"/>
          </ns8:Remittolocationid>
          <ns8:Completedpmtsgroupid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:completedPmtsGroupId"/>
          </ns8:Completedpmtsgroupid>
          <ns8:Extbranchnumber>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extBranchNumber"/>
          </ns8:Extbranchnumber>
          <ns8:Extbanknumber>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extBankNumber"/>
          </ns8:Extbanknumber>
          <ns8:Extbankaccountname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extBankAccountName"/>
          </ns8:Extbankaccountname>
          <ns8:Extbankaccountnumber>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extBankAccountNumber"/>
          </ns8:Extbankaccountnumber>
          <ns8:Extbankaccounttype>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extBankAccountType"/>
          </ns8:Extbankaccounttype>
          <ns8:Extbankaccountibannumber>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extBankAccountIbanNumber"/>
          </ns8:Extbankaccountibannumber>
          <ns8:Payeename>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeName"/>
          </ns8:Payeename>
          <ns8:Payeeaddress1>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeAddress1"/>
          </ns8:Payeeaddress1>
          <ns8:Payeeaddress2>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeAddress2"/>
          </ns8:Payeeaddress2>
          <ns8:Payeeaddress3>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeAddress3"/>
          </ns8:Payeeaddress3>
          <ns8:Payeeaddress4>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeAddress4"/>
          </ns8:Payeeaddress4>
          <ns8:Payeecity>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeCity"/>
          </ns8:Payeecity>
          <ns8:Payeepostalcode>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeePostalCode"/>
          </ns8:Payeepostalcode>
          <ns8:Payeestate>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeState"/>
          </ns8:Payeestate>
          <ns8:Payeeprovince>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeProvince"/>
          </ns8:Payeeprovince>
          <ns8:Payeecounty>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeCounty"/>
          </ns8:Payeecounty>
          <ns8:Payeecountry>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeCountry"/>
          </ns8:Payeecountry>
          <ns8:Remitadvicedeliverymethod>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:remitAdviceDeliveryMethod"/>
          </ns8:Remitadvicedeliverymethod>
          <ns8:Remitadviceemail>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:remitAdviceEmail"/>
          </ns8:Remitadviceemail>
          <ns8:Remitadvicefax>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:remitAdviceFax"/>
          </ns8:Remitadvicefax>
          <ns8:Paymentprofilesysname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentProfileSysName"/>
          </ns8:Paymentprofilesysname>
          <ns8:Paymentprofileacctname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentProfileAcctName"/>
          </ns8:Paymentprofileacctname>
          <ns8:Paymentprocessrequestname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentProcessRequestName"/>
          </ns8:Paymentprocessrequestname>
          <ns8:Sourceproduct>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:sourceProduct"/>
          </ns8:Sourceproduct>
          <ns8:Paymentreasonformatvalue>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:paymentReasonFormatValue"/>
          </ns8:Paymentreasonformatvalue>
          <ns8:Declarationexchratetype>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:declarationExchRateType"/>
          </ns8:Declarationexchratetype>
          <ns8:Declarationformat>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:declarationFormat"/>
          </ns8:Declarationformat>
          <ns8:Deliverychannelformatvalue>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:deliveryChannelFormatValue"/>
          </ns8:Deliverychannelformatvalue>
          <ns8:Bankinstruction1formatvalue>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:bankInstruction1FormatValue"/>
          </ns8:Bankinstruction1formatvalue>
          <ns8:Bankinstruction2formatvalue>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:bankInstruction2FormatValue"/>
          </ns8:Bankinstruction2formatvalue>
          <ns8:Sradeliverymethod>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:sraDeliveryMethod"/>
          </ns8:Sradeliverymethod>
          <ns8:Intbankname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:intBankName"/>
          </ns8:Intbankname>
          <ns8:Intbanknumber>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:intBankNumber"/>
          </ns8:Intbanknumber>
          <ns8:Inteftswiftcode>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:intEftSwiftCode"/>
          </ns8:Inteftswiftcode>
          <ns8:Intbankbranchname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:intBankBranchName"/>
          </ns8:Intbankbranchname>
          <ns8:Intbankbranchnumber>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:intBankBranchNumber"/>
          </ns8:Intbankbranchnumber>
          <ns8:Intbankaccountname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:intBankAccountName"/>
          </ns8:Intbankaccountname>
          <ns8:Intbankaccountnumber>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:intBankAccountNumber"/>
          </ns8:Intbankaccountnumber>
          <ns8:Intbankaccountiban>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:intBankAccountIban"/>
          </ns8:Intbankaccountiban>
          <ns8:Extbankname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extBankName"/>
          </ns8:Extbankname>
          <ns8:Exteftswiftcode>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extEftSwiftCode"/>
          </ns8:Exteftswiftcode>
          <ns8:Extbankbranchname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extBankBranchName"/>
          </ns8:Extbankbranchname>
          <ns8:Orgname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:orgName"/>
          </ns8:Orgname>
          <ns8:Payerlegalentityname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payerLegalEntityName"/>
          </ns8:Payerlegalentityname>
          <ns8:Payerleregistrationnum>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payerLeRegistrationNum"/>
          </ns8:Payerleregistrationnum>
          <ns8:Payertaxregistrationnum>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payerTaxRegistrationNum"/>
          </ns8:Payertaxregistrationnum>
          <ns8:Payeepartyname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeePartyName"/>
          </ns8:Payeepartyname>
          <ns8:Payeeleregistrationnum>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeLeRegistrationNum"/>
          </ns8:Payeeleregistrationnum>
          <ns8:Payeetaxregistrationnum>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeTaxRegistrationNum"/>
          </ns8:Payeetaxregistrationnum>
          <ns8:Payerpartysitename>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payerPartySiteName"/>
          </ns8:Payerpartysitename>
          <ns8:Payeeaddressconcat>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeAddressConcat"/>
          </ns8:Payeeaddressconcat>
          <ns8:Beneficiaryname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:beneficiaryName"/>
          </ns8:Beneficiaryname>
          <ns8:Payerpartynumber>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payerPartyNumber"/>
          </ns8:Payerpartynumber>
          <ns8:Payeepartynumber>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeePartyNumber"/>
          </ns8:Payeepartynumber>
          <ns8:Payeealternatename>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeAlternateName"/>
          </ns8:Payeealternatename>
          <ns8:Payeesitealternatename>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeSiteAlternateName"/>
          </ns8:Payeesitealternatename>
          <ns8:Payeesuppliernumber>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeSupplierNumber"/>
          </ns8:Payeesuppliernumber>
          <ns8:Payeefirstpartyreference>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeFirstPartyReference"/>
          </ns8:Payeefirstpartyreference>
          <ns8:Intbankbranchrfcidentifier>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:intBankBranchRfcIdentifier"/>
          </ns8:Intbankbranchrfcidentifier>
          <ns8:Intbankacctagencyloccode>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:intBankAcctAgencyLocCode"/>
          </ns8:Intbankacctagencyloccode>
          <ns8:Payerabbreviatedagencycode>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payerAbbreviatedAgencyCode"/>
          </ns8:Payerabbreviatedagencycode>
          <ns8:Payerfederalusemployerid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payerFederalUsEmployerId"/>
          </ns8:Payerfederalusemployerid>
          <ns8:Extbankacctownerpartyid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extBankAcctOwnerPartyId"/>
          </ns8:Extbankacctownerpartyid>
          <ns8:Extbankacctpmtfactorflag>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extBankAcctPmtFactorFlag"/>
          </ns8:Extbankacctpmtfactorflag>
          <ns8:Addresssource>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:addressSource"/>
          </ns8:Addresssource>
          <ns8:Employeeaddresscode>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:employeeAddressCode"/>
          </ns8:Employeeaddresscode>
          <ns8:Employeepersonid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:employeePersonId"/>
          </ns8:Employeepersonid>
          <ns8:Employeepaymentflag>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:employeePaymentFlag"/>
          </ns8:Employeepaymentflag>
          <ns8:Employeeaddressid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:employeeAddressId"/>
          </ns8:Employeeaddressid>
          <ns8:Requestid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:requestId"/>
          </ns8:Requestid>
          <ns8:Extbankbranchpartyid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extBankBranchPartyId"/>
          </ns8:Extbankbranchpartyid>
          <ns8:Extbankaltname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extBankAltName"/>
          </ns8:Extbankaltname>
          <ns8:Extbankbranchaltname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extBankBranchAltName"/>
          </ns8:Extbankbranchaltname>
          <ns8:Extbankaccountaltname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extBankAccountAltName"/>
          </ns8:Extbankaccountaltname>
          <ns8:Extbankaccountnumelec>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extBankAccountNumElec"/>
          </ns8:Extbankaccountnumelec>
          <ns8:Extbankbranchlocationid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extBankBranchLocationId"/>
          </ns8:Extbankbranchlocationid>
          <ns8:Extbankacctownerpartyname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extBankAcctOwnerPartyName"/>
          </ns8:Extbankacctownerpartyname>
          <ns8:Intbankbranchpartyid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:intBankBranchPartyId"/>
          </ns8:Intbankbranchpartyid>
          <ns8:Intbankaltname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:intBankAltName"/>
          </ns8:Intbankaltname>
          <ns8:Intbankbranchaltname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:intBankBranchAltName"/>
          </ns8:Intbankbranchaltname>
          <ns8:Intbankaccountaltname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:intBankAccountAltName"/>
          </ns8:Intbankaccountaltname>
          <ns8:Intbankaccountnumelec>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:intBankAccountNumElec"/>
          </ns8:Intbankaccountnumelec>
          <ns8:Intbankbranchlocationid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:intBankBranchLocationId"/>
          </ns8:Intbankbranchlocationid>
          <ns8:Intbankbrancheftusernum>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:intBankBranchEftUserNum"/>
          </ns8:Intbankbrancheftusernum>
          <ns8:Payerpartyid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payerPartyId"/>
          </ns8:Payerpartyid>
          <ns8:Payerlocationid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payerLocationId"/>
          </ns8:Payerlocationid>
          <ns8:Payerpartyattrcategory>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payerPartyAttrCategory"/>
          </ns8:Payerpartyattrcategory>
          <ns8:Payerleattrcategory>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payerLeAttrCategory"/>
          </ns8:Payerleattrcategory>
          <ns8:Payeepartyattrcategory>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeePartyAttrCategory"/>
          </ns8:Payeepartyattrcategory>
          <ns8:Payeesupplierattrcategory>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeSupplierAttrCategory"/>
          </ns8:Payeesupplierattrcategory>
          <ns8:Payeespplrsiteattrcategory>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeSpplrSiteAttrCategory"/>
          </ns8:Payeespplrsiteattrcategory>
          <ns8:Payeesuppliersitename>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeSupplierSiteName"/>
          </ns8:Payeesuppliersitename>
          <ns8:Payeesuppliersitealtname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeSupplierSiteAltName"/>
          </ns8:Payeesuppliersitealtname>
          <ns8:Payeesupplierid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeSupplierId"/>
          </ns8:Payeesupplierid>
          <ns8:Logicalgroupreference>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:logicalGroupReference"/>
          </ns8:Logicalgroupreference>
          <ns8:Positivepayfilecreatedflag>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:positivePayFileCreatedFlag"/>
          </ns8:Positivepayfilecreatedflag>
          <ns8:Extinvpayeeid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extInvPayeeId"/>
          </ns8:Extinvpayeeid>
          <ns8:Invpayeepartyid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeePartyId"/>
          </ns8:Invpayeepartyid>
          <ns8:Invpartysiteid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPartySiteId"/>
          </ns8:Invpartysiteid>
          <ns8:Invsuppliersiteid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invSupplierSiteId"/>
          </ns8:Invsuppliersiteid>
          <ns8:Invbeneficiaryparty>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invBeneficiaryParty"/>
          </ns8:Invbeneficiaryparty>
          <ns8:Invpayeename>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeName"/>
          </ns8:Invpayeename>
          <ns8:Invpayeeaddress1>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeAddress1"/>
          </ns8:Invpayeeaddress1>
          <ns8:Invpayeeaddress2>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeAddress2"/>
          </ns8:Invpayeeaddress2>
          <ns8:Invpayeeaddress3>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeAddress3"/>
          </ns8:Invpayeeaddress3>
          <ns8:Invpayeeaddress4>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeAddress4"/>
          </ns8:Invpayeeaddress4>
          <ns8:Invpayeecity>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeCity"/>
          </ns8:Invpayeecity>
          <ns8:Invpayeepostalcode>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeePostalCode"/>
          </ns8:Invpayeepostalcode>
          <ns8:Invpayeestate>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeState"/>
          </ns8:Invpayeestate>
          <ns8:Invpayeeprovince>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeProvince"/>
          </ns8:Invpayeeprovince>
          <ns8:Invpayeecounty>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeCounty"/>
          </ns8:Invpayeecounty>
          <ns8:Invpayeecountry>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeCountry"/>
          </ns8:Invpayeecountry>
          <ns8:Invpayeepartyname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeePartyName"/>
          </ns8:Invpayeepartyname>
          <ns8:Invpayeeleregnum>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeLeRegNum"/>
          </ns8:Invpayeeleregnum>
          <ns8:Invpayeetaxregnum>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeTaxRegNum"/>
          </ns8:Invpayeetaxregnum>
          <ns8:Invpayeeaddressconcat>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeAddressConcat"/>
          </ns8:Invpayeeaddressconcat>
          <ns8:Invbeneficiaryname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invBeneficiaryName"/>
          </ns8:Invbeneficiaryname>
          <ns8:Invpayeepartynumber>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeePartyNumber"/>
          </ns8:Invpayeepartynumber>
          <ns8:Invpayeealternatename>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeAlternateName"/>
          </ns8:Invpayeealternatename>
          <ns8:Invpayeesitealtname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeSiteAltName"/>
          </ns8:Invpayeesitealtname>
          <ns8:Invpayeesuppliernumber>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeSupplierNumber"/>
          </ns8:Invpayeesuppliernumber>
          <ns8:Invpayeefirstpartyref>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeFirstPartyRef"/>
          </ns8:Invpayeefirstpartyref>
          <ns8:Extbnkacctownrinvprtyid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extBnkAcctOwnrInvPrtyId"/>
          </ns8:Extbnkacctownrinvprtyid>
          <ns8:Extbnkbranchinvprtyid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extBnkBranchInvPrtyId"/>
          </ns8:Extbnkbranchinvprtyid>
          <ns8:Extbnkacctownrinvprtynme>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:extBnkAcctOwnrInvPrtyNme"/>
          </ns8:Extbnkacctownrinvprtynme>
          <ns8:Invpayeepartyattrcat>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeePartyAttrCat"/>
          </ns8:Invpayeepartyattrcat>
          <ns8:Invpayeesupplierattrcat>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeSupplierAttrCat"/>
          </ns8:Invpayeesupplierattrcat>
          <ns8:Invpayeespplrsiteattrcat>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeSpplrSiteAttrCat"/>
          </ns8:Invpayeespplrsiteattrcat>
          <ns8:Invpayeesuppliersitename>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeSupplierSiteName"/>
          </ns8:Invpayeesuppliersitename>
          <ns8:Invpayeespplrsitealtname>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeSpplrSiteAltName"/>
          </ns8:Invpayeespplrsitealtname>
          <ns8:Invpayeesupplierid>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeeSupplierId"/>
          </ns8:Invpayeesupplierid>
          <ns8:Payeeaddressee>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeeAddressee"/>
          </ns8:Payeeaddressee>
          <ns8:Payeepartysitename>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:payeePartySiteName"/>
          </ns8:Payeepartysitename>
          <ns8:Invpayeepartysitename>
            <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:invPayeePartySiteName"/>
          </ns8:Invpayeepartysitename>
          <ns8:PaymentDFF>
            <xsl:if test='normalize-space(/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attributeCategory) != ""'>
              <ns18:AttributeCategory>
                <xsl:if test="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attributeCategory/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attributeCategory/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attributeCategory"/>
              </ns18:AttributeCategory>
            </xsl:if>
            <xsl:if test='normalize-space(/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute1) != ""'>
              <ns18:Attribute1>
                <xsl:if test="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute1/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute1/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute1"/>
              </ns18:Attribute1>
            </xsl:if>
            <xsl:if test='normalize-space(/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute2) != ""'>
              <ns18:Attribute2>
                <xsl:if test="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute2/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute2/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute2"/>
              </ns18:Attribute2>
            </xsl:if>
            <xsl:if test='normalize-space(/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute3) != ""'>
              <ns18:Attribute3>
                <xsl:if test="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute3/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute3/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute3"/>
              </ns18:Attribute3>
            </xsl:if>
            <xsl:if test='normalize-space(/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute4) != ""'>
              <ns18:Attribute4>
                <xsl:if test="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute4/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute4/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute4"/>
              </ns18:Attribute4>
            </xsl:if>
            <xsl:if test='normalize-space(/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute5) != ""'>
              <ns18:Attribute5>
                <xsl:if test="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute5/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute5/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute5"/>
              </ns18:Attribute5>
            </xsl:if>
            <xsl:if test='normalize-space(/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute6) != ""'>
              <ns18:Attribute6>
                <xsl:if test="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute6/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute6/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute6"/>
              </ns18:Attribute6>
            </xsl:if>
            <xsl:if test='normalize-space(/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute7) != ""'>
              <ns18:Attribute7>
                <xsl:if test="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute7/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute7/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute7"/>
              </ns18:Attribute7>
            </xsl:if>
            <xsl:if test='normalize-space(/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute8) != ""'>
              <ns18:Attribute8>
                <xsl:if test="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute8/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute8/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute8"/>
              </ns18:Attribute8>
            </xsl:if>
            <xsl:if test='normalize-space(/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute9) != ""'>
              <ns18:Attribute9>
                <xsl:if test="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute9/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute9/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute9"/>
              </ns18:Attribute9>
            </xsl:if>
            <xsl:if test='normalize-space(/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute10) != ""'>
              <ns18:Attribute10>
                <xsl:if test="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute10/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute10/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute10"/>
              </ns18:Attribute10>
            </xsl:if>
            <xsl:if test='normalize-space(/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute11) != ""'>
              <ns18:Attribute11>
                <xsl:if test="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute11/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute11/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute11"/>
              </ns18:Attribute11>
            </xsl:if>
            <xsl:if test='normalize-space(/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute12) != ""'>
              <ns18:Attribute12>
                <xsl:if test="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute12/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute12/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute12"/>
              </ns18:Attribute12>
            </xsl:if>
            <xsl:if test='normalize-space(/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute13) != ""'>
              <ns18:Attribute13>
                <xsl:if test="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute13/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute13/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute13"/>
              </ns18:Attribute13>
            </xsl:if>
            <xsl:if test='normalize-space(/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute14) != ""'>
              <ns18:Attribute14>
                <xsl:if test="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute14/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute14/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute14"/>
              </ns18:Attribute14>
            </xsl:if>
            <xsl:if test='normalize-space(/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute15) != ""'>
              <ns18:Attribute15>
                <xsl:if test="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute15/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute15/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:attribute15"/>
              </ns18:Attribute15>
            </xsl:if>
          </ns8:PaymentDFF>
          <ns8:SupplierInfo>
            <ns16:Identifier>
              <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendors/ns0:vendorId"/>
            </ns16:Identifier>
            <ns16:SupplierName>
              <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendors/ns0:vendorName"/>
            </ns16:SupplierName>
            <ns16:SupplierNumber>
              <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendors/ns0:segment1"/>
            </ns16:SupplierNumber>
            <ns16:SupplierNameAlt>
              <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendors/ns0:vendorNameAlt"/>
            </ns16:SupplierNameAlt>
            <ns16:PayGroupookupCode>
              <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendors/ns0:payGroupLookupCode"/>
            </ns16:PayGroupookupCode>
            <ns16:ListOfBasicSupplierSiteInfo>
              <ns17:BasicSupplierSiteInfo>
                <ns17:Identifier>
                  <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendorSitesAll/ns0:vendorSiteId"/>
                </ns17:Identifier>
                <ns17:SupplierSiteCode>
                  <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendorSitesAll/ns0:vendorSiteCode"/>
                </ns17:SupplierSiteCode>
                <ns17:SupplierSiteCodeAlt>
                  <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendorSitesAll/ns0:vendorSiteCodeAlt"/>
                </ns17:SupplierSiteCodeAlt>
                <ns17:ShipViaLookupCode>
                  <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendorSitesAll/ns0:shipViaLookupCode"/>
                </ns17:ShipViaLookupCode>
                <ns17:FreightTermsLookupCode>
                  <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendorSitesAll/ns0:freightTermsLookupCode"/>
                </ns17:FreightTermsLookupCode>
                <ns17:FOBLookupCode>
                  <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendorSitesAll/ns0:fobLookupCode"/>
                </ns17:FOBLookupCode>
                <ns17:PaySiteFlag>
                  <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendorSitesAll/ns0:paySiteFlag"/>
                </ns17:PaySiteFlag>
                <ns17:PurchasingSiteFlag>
                  <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendorSitesAll/ns0:purchasingSiteFlag"/>
                </ns17:PurchasingSiteFlag>
                <ns17:RFQonlySiteFlag>
                  <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendorSitesAll/ns0:rfqOnlySiteFlag"/>
                </ns17:RFQonlySiteFlag>
                <ns17:AttentionARFlag>
                  <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendorSitesAll/ns0:attentionArFlag"/>
                </ns17:AttentionARFlag>
                <ns17:HoldAllPaymentsFlag>
                  <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendorSitesAll/ns0:holdAllPaymentsFlag"/>
                </ns17:HoldAllPaymentsFlag>
                <ns17:HoldFuturePaymentsFlag>
                  <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendorSitesAll/ns0:holdFuturePaymentsFlag"/>
                </ns17:HoldFuturePaymentsFlag>
                <ns17:HoldUnmatchedInvoicesFlag>
                  <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendorSitesAll/ns0:holdUnmatchedInvoicesFlag"/>
                </ns17:HoldUnmatchedInvoicesFlag>
                <ns17:ExcludeFreightFromDiscount>
                  <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendorSitesAll/ns0:excludeFreightFromDiscount"/>
                </ns17:ExcludeFreightFromDiscount>
                <ns17:OrgId>
                  <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendorSitesAll/ns0:orgId"/>
                </ns17:OrgId>
                <ns17:VendorId>
                  <xsl:value-of select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendorSitesAll/ns0:vendorId"/>
                </ns17:VendorId>
                <ns17:ListOrigSystemReferences>
                  <xsl:for-each select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendorSitesAll/ns0:xxnucSupSiteOrigSysRefsVCollection/ns0:XxnucSupSiteOrigSysRefsV">
                    <ns17:OrigSystem>
                      <ns17:Identifier>
                        <xsl:value-of select="ns0:origSystemRefId"/>
                      </ns17:Identifier>
                      <ns17:TableName>
                        <xsl:value-of select="ns0:ownerTableName"/>
                      </ns17:TableName>
                      <ns17:TableIdentifier>
                        <xsl:value-of select="ns0:ownerTableId"/>
                      </ns17:TableIdentifier>
                      <ns17:OrigSystem>
                        <xsl:value-of select="ns0:origSystem"/>
                      </ns17:OrigSystem>
                      <ns17:OrigSystemReference>
                        <xsl:value-of select="ns0:origSystemReference"/>
                      </ns17:OrigSystemReference>
                      <ns17:ObjectVersionNumber>
                        <xsl:value-of select="ns0:objectVersionNumber"/>
                      </ns17:ObjectVersionNumber>
                      <ns17:Status>
                        <xsl:value-of select="ns0:status"/>
                      </ns17:Status>
                      <ns17:StartDate>
                        <xsl:value-of select="ns0:startDateActive"/>
                      </ns17:StartDate>
                      <ns17:EndDate>
                        <xsl:value-of select="ns0:endDateActive"/>
                      </ns17:EndDate>
                    </ns17:OrigSystem>
                  </xsl:for-each>
                </ns17:ListOrigSystemReferences>
              </ns17:BasicSupplierSiteInfo>
            </ns16:ListOfBasicSupplierSiteInfo>
            <ns16:ListOrigSystemReferences>
              <xsl:for-each select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:poVendors/ns0:xxnucSupOrigSysRefsVCollection/ns0:XxnucSupOrigSysRefsV">
                <ns16:OrigSystem>
                  <ns16:Identifier>
                    <xsl:value-of select="ns0:origSystemRefId"/>
                  </ns16:Identifier>
                  <ns16:TableName>
                    <xsl:value-of select="ns0:ownerTableName"/>
                  </ns16:TableName>
                  <ns16:TableIdentifier>
                    <xsl:value-of select="ns0:ownerTableId"/>
                  </ns16:TableIdentifier>
                  <ns16:OrigSystem>
                    <xsl:value-of select="ns0:origSystem"/>
                  </ns16:OrigSystem>
                  <ns16:OrigSystemReference>
                    <xsl:value-of select="ns0:origSystemReference"/>
                  </ns16:OrigSystemReference>
                  <ns16:Status>
                    <xsl:value-of select="ns0:status"/>
                  </ns16:Status>
                  <ns16:StartDate>
                    <xsl:value-of select="ns0:startDateActive"/>
                  </ns16:StartDate>
                  <ns16:EndDate>
                    <xsl:value-of select="ns0:endDateActive"/>
                  </ns16:EndDate>
                </ns16:OrigSystem>
              </xsl:for-each>
            </ns16:ListOrigSystemReferences>
          </ns8:SupplierInfo>
        </ns1:Payment>
        <ns1:ListOfInvoices>
          <xsl:for-each select="/ns0:IbyPaymentsAllCollection/ns0:IbyPaymentsAll/ns0:apChecksAll/ns0:apInvoicePaymentsAllCollection/ns0:ApInvoicePaymentsAll">
            <ns10:Invoice>
              <ns10:BasicInvoice>
                <xsl:if test="ns0:apInvoicesAll/ns0:invoiceNum">
                  <ns10:InvoiceNumber>
                    <xsl:value-of select="ns0:apInvoicesAll/ns0:invoiceNum"/>
                  </ns10:InvoiceNumber>
                </xsl:if>
                <xsl:if test="ns0:apInvoicesAll/ns0:invoiceDate">
                  <ns10:InvoiceDate>
                    <xsl:value-of select="ns0:apInvoicesAll/ns0:invoiceDate"/>
                  </ns10:InvoiceDate>
                </xsl:if>
                <xsl:if test="ns0:apInvoicesAll/ns0:invoiceAmount">
                  <ns10:InvoiceAmount>
                    <ns12:Value>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="ns0:apInvoicesAll/ns0:invoiceAmount/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:invoiceAmount"/>
                    </ns12:Value>
                    <ns12:CurrencyCode>
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:invoiceCurrencyCode"/>
                    </ns12:CurrencyCode>
                  </ns10:InvoiceAmount>
                </xsl:if>
              </ns10:BasicInvoice>
              <ns10:AmountPaid>
                <xsl:value-of select="ns0:amount"/>
              </ns10:AmountPaid>
              <ns10:AmountPaidDate>
                <xsl:value-of select="ns0:creationDate"/>
              </ns10:AmountPaidDate>
              <ns10:DiscountAmountTaken>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns0:apInvoicesAll/ns0:discountAmountTaken/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="ns0:apInvoicesAll/ns0:discountAmountTaken"/>
              </ns10:DiscountAmountTaken>
              <ns10:TaxAmount>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns0:apInvoicesAll/ns0:taxAmount/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="ns0:apInvoicesAll/ns0:taxAmount"/>
              </ns10:TaxAmount>
              <ns10:FreightAmount>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns0:apInvoicesAll/ns0:freightAmount/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="ns0:apInvoicesAll/ns0:freightAmount"/>
              </ns10:FreightAmount>
              <ns10:Description>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns0:apInvoicesAll/ns0:description/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="ns0:apInvoicesAll/ns0:description"/>
              </ns10:Description>
              <ns10:Invoiceid>
                <xsl:value-of select="ns0:apInvoicesAll/ns0:invoiceId"/>
              </ns10:Invoiceid>
              <ns10:Invoicetypelookupcode>
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="ns0:apInvoicesAll/ns0:invoiceTypeLookupCode/@xsi:nil"/>
                </xsl:attribute>
                <xsl:value-of select="ns0:apInvoicesAll/ns0:invoiceTypeLookupCode"/>
              </ns10:Invoicetypelookupcode>
              <!-- Added By Capgemini Start -->
              <ns10:Source>
                <xsl:value-of select="ns0:apInvoicesAll/ns0:source"/>
              </ns10:Source>
              <!-- Added By Capgemini End -->
              <!-- Updated By Capgemini Start -->
              <ns10:HeaderDFF>
                <xsl:if test='normalize-space(ns0:apInvoicesAll/ns0:attributeCategory) != ""'>
                  <ns18:AttributeCategory>
                    <xsl:value-of select="ns0:apInvoicesAll/ns0:attributeCategory"/>
                  </ns18:AttributeCategory>
                </xsl:if>
                <xsl:if test='normalize-space(ns0:apInvoicesAll/ns0:attribute1) != ""'>
                  <ns18:Attribute1>
                    <xsl:attribute name="xsi:nil">
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute1/@xsi:nil"/>
                    </xsl:attribute>
                    <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute1"/>
                  </ns18:Attribute1>
                </xsl:if>
                <!-- Updated By Capgemini Start -->
                <xsl:if test='normalize-space(ns0:apInvoicesAll/ns0:attribute2) != ""'>
                  <ns18:Attribute2>
                    <xsl:attribute name="xsi:nil">
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute2/@xsi:nil"/>
                    </xsl:attribute>
                    <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute2"/>
                  </ns18:Attribute2>
                </xsl:if>     
<!--                <xsl:value-of select="ns0:apInvoicesAll/ns0:wshTrips/ns0:name"/>-->
                <xsl:if test='ns0:apInvoicesAll/ns0:wshTrips/ns0:tripId != ""'>
                  <ns18:Attribute3>
                    <xsl:value-of select="ns0:apInvoicesAll/ns0:wshTrips/ns0:tripId"/>
                  </ns18:Attribute3>
                </xsl:if>
                <!-- Updated By Capgemini End -->
                <xsl:if test='normalize-space(ns0:apInvoicesAll/ns0:attribute4) != ""'>
                  <ns18:Attribute4>
                    <xsl:attribute name="xsi:nil">
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute4/@xsi:nil"/>
                    </xsl:attribute>
                    <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute4"/>
                  </ns18:Attribute4>
                </xsl:if>
                <xsl:if test='normalize-space(ns0:apInvoicesAll/ns0:attribute5) != ""'>
                  <ns18:Attribute5>
                    <xsl:attribute name="xsi:nil">
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute5/@xsi:nil"/>
                    </xsl:attribute>
                    <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute5"/>
                  </ns18:Attribute5>
                </xsl:if>
                <xsl:if test='normalize-space(ns0:apInvoicesAll/ns0:attribute6) != ""'>
                  <ns18:Attribute6>
                    <xsl:attribute name="xsi:nil">
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute6/@xsi:nil"/>
                    </xsl:attribute>
                    <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute6"/>
                  </ns18:Attribute6>
                </xsl:if>
                <xsl:if test='normalize-space(ns0:apInvoicesAll/ns0:attribute7) != ""'>
                  <ns18:Attribute7>
                    <xsl:attribute name="xsi:nil">
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute7/@xsi:nil"/>
                    </xsl:attribute>
                    <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute7"/>
                  </ns18:Attribute7>
                </xsl:if>
                <xsl:if test='normalize-space(ns0:apInvoicesAll/ns0:attribute8) != ""'>
                  <ns18:Attribute8>
                    <xsl:attribute name="xsi:nil">
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute8/@xsi:nil"/>
                    </xsl:attribute>
                    <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute8"/>
                  </ns18:Attribute8>
                </xsl:if>
                <xsl:if test='normalize-space(ns0:apInvoicesAll/ns0:attribute9) != ""'>
                  <ns18:Attribute9>
                    <xsl:attribute name="xsi:nil">
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute9/@xsi:nil"/>
                    </xsl:attribute>
                    <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute9"/>
                  </ns18:Attribute9>
                </xsl:if>
                <xsl:if test='normalize-space(ns0:apInvoicesAll/ns0:attribute10) != ""'>
                  <ns18:Attribute10>
                    <xsl:attribute name="xsi:nil">
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute10/@xsi:nil"/>
                    </xsl:attribute>
                    <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute10"/>
                  </ns18:Attribute10>
                </xsl:if>
                <xsl:if test='normalize-space(ns0:apInvoicesAll/ns0:attribute11) != ""'>
                  <ns18:Attribute11>
                    <xsl:attribute name="xsi:nil">
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute11/@xsi:nil"/>
                    </xsl:attribute>
                    <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute11"/>
                  </ns18:Attribute11>
                </xsl:if>
                <xsl:if test='normalize-space(ns0:apInvoicesAll/ns0:attribute12) != ""'>
                  <ns18:Attribute12>
                    <xsl:attribute name="xsi:nil">
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute12/@xsi:nil"/>
                    </xsl:attribute>
                    <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute12"/>
                  </ns18:Attribute12>
                </xsl:if>
                <xsl:if test='normalize-space(ns0:apInvoicesAll/ns0:attribute13) != ""'>
                  <ns18:Attribute13>
                    <xsl:attribute name="xsi:nil">
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute13/@xsi:nil"/>
                    </xsl:attribute>
                    <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute13"/>
                  </ns18:Attribute13>
                </xsl:if>
                <xsl:if test='normalize-space(ns0:apInvoicesAll/ns0:attribute14) != ""'>
                  <ns18:Attribute14>
                    <xsl:attribute name="xsi:nil">
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute14/@xsi:nil"/>
                    </xsl:attribute>
                    <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute14"/>
                  </ns18:Attribute14>
                </xsl:if>
                <!--xsl:if test='normalize-space(ns0:apInvoicesAll/ns0:attribute15) != ""'-->
                <xsl:if test='ns0:apInvoicesAll/ns0:wshTrips/ns0:tripId != ""'>
                  <ns18:Attribute15>
                    <!--xsl:attribute name="xsi:nil">
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:attribute15/@xsi:nil"/>
                    </xsl:attribute-->
                    <xsl:value-of select="ns0:apInvoicesAll/ns0:wshTrips/ns0:name"/>
                  </ns18:Attribute15>
                </xsl:if>                  
              </ns10:HeaderDFF>
              <!-- Updated By Capgemini End -->
              <ns10:RemitToSupplier>
                <ns16:Identifier>
                  <xsl:value-of select="ns0:apInvoicesAll/ns0:poVendors2/ns0:vendorId"/>
                </ns16:Identifier>
                <ns16:SupplierName>
                  <xsl:value-of select="ns0:apInvoicesAll/ns0:poVendors2/ns0:vendorName"/>
                </ns16:SupplierName>
                <ns16:SupplierNumber>
                  <xsl:value-of select="ns0:apInvoicesAll/ns0:poVendors2/ns0:segment1"/>
                </ns16:SupplierNumber>
                <ns16:SupplierNameAlt>
                  <xsl:value-of select="ns0:apInvoicesAll/ns0:poVendors2/ns0:vendorNameAlt"/>
                </ns16:SupplierNameAlt>
                <ns16:PayGroupookupCode>
                  <xsl:value-of select="ns0:apInvoicesAll/ns0:poVendors2/ns0:payGroupLookupCode"/>
                </ns16:PayGroupookupCode>
                <ns16:ListOfBasicSupplierSiteInfo>
                  <ns17:BasicSupplierSiteInfo>
                    <ns17:Identifier>
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:poVendorSitesAll2/ns0:vendorSiteId"/>
                    </ns17:Identifier>
                    <ns17:SupplierSiteCode>
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:poVendorSitesAll2/ns0:vendorSiteCode"/>
                    </ns17:SupplierSiteCode>
                    <ns17:SupplierSiteCodeAlt>
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:poVendorSitesAll2/ns0:vendorSiteCodeAlt"/>
                    </ns17:SupplierSiteCodeAlt>
                    <ns17:ShipViaLookupCode>
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:poVendorSitesAll2/ns0:shipViaLookupCode"/>
                    </ns17:ShipViaLookupCode>
                    <ns17:FreightTermsLookupCode>
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:poVendorSitesAll2/ns0:freightTermsLookupCode"/>
                    </ns17:FreightTermsLookupCode>
                    <ns17:FOBLookupCode>
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:poVendorSitesAll2/ns0:fobLookupCode"/>
                    </ns17:FOBLookupCode>
                    <ns17:PaySiteFlag>
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:poVendorSitesAll2/ns0:paySiteFlag"/>
                    </ns17:PaySiteFlag>
                    <ns17:PurchasingSiteFlag>
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:poVendorSitesAll2/ns0:purchasingSiteFlag"/>
                    </ns17:PurchasingSiteFlag>
                    <ns17:RFQonlySiteFlag>
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:poVendorSitesAll2/ns0:rfqOnlySiteFlag"/>
                    </ns17:RFQonlySiteFlag>
                    <ns17:AttentionARFlag>
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:poVendorSitesAll2/ns0:attentionArFlag"/>
                    </ns17:AttentionARFlag>
                    <ns17:HoldAllPaymentsFlag>
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:poVendorSitesAll2/ns0:holdAllPaymentsFlag"/>
                    </ns17:HoldAllPaymentsFlag>
                    <ns17:HoldFuturePaymentsFlag>
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:poVendorSitesAll2/ns0:holdFuturePaymentsFlag"/>
                    </ns17:HoldFuturePaymentsFlag>
                    <ns17:HoldUnmatchedInvoicesFlag>
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:poVendorSitesAll2/ns0:holdUnmatchedInvoicesFlag"/>
                    </ns17:HoldUnmatchedInvoicesFlag>
                    <ns17:ExcludeFreightFromDiscount>
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:poVendorSitesAll2/ns0:excludeFreightFromDiscount"/>
                    </ns17:ExcludeFreightFromDiscount>
                    <ns17:OrgId>
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:poVendorSitesAll2/ns0:orgId"/>
                    </ns17:OrgId>
                    <ns17:VendorId>
                      <xsl:value-of select="ns0:apInvoicesAll/ns0:poVendorSitesAll2/ns0:vendorId"/>
                    </ns17:VendorId>
                    <ns17:ListOrigSystemReferences>
                      <xsl:for-each select="ns0:apInvoicesAll/ns0:poVendorSitesAll2/ns0:xxnucSupSiteOrigSysRefsVCollection/ns0:XxnucSupSiteOrigSysRefsV">
                        <ns17:OrigSystem>
                          <ns17:Identifier>
                            <xsl:value-of select="ns0:origSystemRefId"/>
                          </ns17:Identifier>
                          <ns17:TableName>
                            <xsl:value-of select="ns0:ownerTableName"/>
                          </ns17:TableName>
                          <ns17:TableIdentifier>
                            <xsl:value-of select="ns0:ownerTableId"/>
                          </ns17:TableIdentifier>
                          <ns17:OrigSystem>
                            <xsl:value-of select="ns0:origSystem"/>
                          </ns17:OrigSystem>
                          <ns17:OrigSystemReference>
                            <xsl:value-of select="ns0:origSystemReference"/>
                          </ns17:OrigSystemReference>
                          <ns17:ObjectVersionNumber>
                            <xsl:value-of select="ns0:objectVersionNumber"/>
                          </ns17:ObjectVersionNumber>
                          <ns17:Status>
                            <xsl:value-of select="ns0:status"/>
                          </ns17:Status>
                          <ns17:StartDate>
                            <xsl:value-of select="ns0:startDateActive"/>
                          </ns17:StartDate>
                          <ns17:EndDate>
                            <xsl:value-of select="ns0:endDateActive"/>
                          </ns17:EndDate>
                        </ns17:OrigSystem>
                      </xsl:for-each>
                    </ns17:ListOrigSystemReferences>
                  </ns17:BasicSupplierSiteInfo>
                </ns16:ListOfBasicSupplierSiteInfo>
                <ns16:ListOrigSystemReferences>
                  <xsl:for-each select="ns0:apInvoicesAll/ns0:poVendors2/ns0:xxnucSupOrigSysRefsVCollection/ns0:XxnucSupOrigSysRefsV">
                    <ns16:OrigSystem>
                      <ns16:Identifier>
                        <xsl:value-of select="ns0:origSystemRefId"/>
                      </ns16:Identifier>
                      <ns16:TableName>
                        <xsl:value-of select="ns0:ownerTableName"/>
                      </ns16:TableName>
                      <ns16:TableIdentifier>
                        <xsl:value-of select="ns0:ownerTableId"/>
                      </ns16:TableIdentifier>
                      <ns16:OrigSystem>
                        <xsl:value-of select="ns0:origSystem"/>
                      </ns16:OrigSystem>
                      <ns16:OrigSystemReference>
                        <xsl:value-of select="ns0:origSystemReference"/>
                      </ns16:OrigSystemReference>
                      <ns16:Status>
                        <xsl:value-of select="ns0:status"/>
                      </ns16:Status>
                      <ns16:StartDate>
                        <xsl:value-of select="ns0:startDateActive"/>
                      </ns16:StartDate>
                      <ns16:EndDate>
                        <xsl:value-of select="ns0:endDateActive"/>
                      </ns16:EndDate>
                    </ns16:OrigSystem>
                  </xsl:for-each>
                </ns16:ListOrigSystemReferences>
              </ns10:RemitToSupplier>
              <ns10:ListOfInvoiceLines>
                <xsl:for-each select="ns0:apInvoicesAll/ns0:apInvoiceLinesAllCollection/ns0:ApInvoiceLinesAll">
                  <ns10:InvoiceLines>
                    <ns10:Amount>
                      <xsl:value-of select="ns0:amount"/>
                    </ns10:Amount>
                    <ns10:Description>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="ns0:itemDescription/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="ns0:itemDescription"/>
                    </ns10:Description>
                    <ns10:Invoiceid>
                      <xsl:value-of select="../../ns0:invoiceId"/>
                    </ns10:Invoiceid>
                    <ns10:Linenumber>
                      <xsl:value-of select="ns0:lineNumber"/>
                    </ns10:Linenumber>
                    <ns10:Linetypelookupcode>
                      <xsl:value-of select="ns0:lineTypeLookupCode"/>
                    </ns10:Linetypelookupcode>
                    <ns10:Polinenumber>
                      <xsl:value-of select="ns0:poLinesAll/ns0:lineNum"/>
                    </ns10:Polinenumber>
                    <ns10:Ponumber>
                      <xsl:value-of select="ns0:poHeadersAll/ns0:segment1"/>
                    </ns10:Ponumber>
                    <ns10:Poshipmentnum>
                      <xsl:value-of select="ns0:poLineLocationsAll/ns0:shipmentNum"/>
                    </ns10:Poshipmentnum>
                    <ns10:Quantityinvoiced>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="ns0:quantityInvoiced/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="ns0:quantityInvoiced"/>
                    </ns10:Quantityinvoiced>
                    <!--ns10:Receiptnumber>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="ns0:rcvTransactions/ns0:rcvShipmentHeaders/ns0:shipmentNum/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="ns0:rcvTransactions/ns0:rcvShipmentHeaders/ns0:shipmentNum"/>
                    </ns10:Receiptnumber -->
                    <ns10:Receiptnumber>
                      <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="ns0:rcvTransactions/ns0:rcvShipmentHeaders/ns0:receiptNum/@xsi:nil"/>
                      </xsl:attribute>
                      <xsl:value-of select="ns0:rcvTransactions/ns0:rcvShipmentHeaders/ns0:receiptNum"/>
                    </ns10:Receiptnumber>
                    <ns10:LineDFF>
                      <xsl:if test='normalize-space(ns0:attributeCategory) != ""'>
                        <ns18:AttributeCategory>
                          <xsl:value-of select="ns0:attributeCategory"/>
                        </ns18:AttributeCategory>
                      </xsl:if>
                      <xsl:if test='normalize-space(ns0:attribute1) != ""'>
                        <ns18:Attribute1>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns0:attribute1/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="ns0:attribute1"/>
                        </ns18:Attribute1>
                      </xsl:if>
                      <xsl:if test='normalize-space(ns0:attribute2) != ""'>
                        <ns18:Attribute2>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns0:attribute2/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="ns0:attribute2"/>
                        </ns18:Attribute2>
                      </xsl:if>
                      <xsl:if test='normalize-space(ns0:attribute3) != ""'>
                        <ns18:Attribute3>
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns0:attribute3/@xsi:nil"/>
                          </xsl:attribute>
                          <xsl:value-of select="ns0:attribute3"/>
                        </ns18:Attribute3>
                      </xsl:if>
                      <xsl:if test='normalize-space(ns0:attribute4) != ""'>
                        <ns18:Attribute4>
                          <xsl:value-of select="ns0:attribute4"/>
                        </ns18:Attribute4>
                      </xsl:if>
                      <xsl:if test='normalize-space(ns0:attribute5) != ""'>
                        <ns18:Attribute5>
                          <xsl:value-of select="ns0:attribute5"/>
                        </ns18:Attribute5>
                      </xsl:if>
                      <xsl:if test='normalize-space(ns0:attribute6) != ""'>
                        <ns18:Attribute6>
                          <xsl:value-of select="ns0:attribute6"/>
                        </ns18:Attribute6>
                      </xsl:if>
                      <xsl:if test='normalize-space(ns0:attribute7) != ""'>
                        <ns18:Attribute7>
                          <xsl:value-of select="ns0:attribute7"/>
                        </ns18:Attribute7>
                      </xsl:if>
                      <xsl:if test='normalize-space(ns0:attribute8) != ""'>
                        <ns18:Attribute8>
                          <xsl:value-of select="ns0:attribute8"/>
                        </ns18:Attribute8>
                      </xsl:if>
                      <xsl:if test='normalize-space(ns0:attribute9) != ""'>
                        <ns18:Attribute9>
                          <xsl:value-of select="ns0:attribute9"/>
                        </ns18:Attribute9>
                      </xsl:if>
                      <xsl:if test='normalize-space(ns0:attribute10) != ""'>
                        <ns18:Attribute10>
                          <xsl:value-of select="ns0:attribute10"/>
                        </ns18:Attribute10>
                      </xsl:if>
                      <xsl:if test='normalize-space(ns0:attribute11) != ""'>
                        <ns18:Attribute11>
                          <xsl:value-of select="ns0:attribute11"/>
                        </ns18:Attribute11>
                      </xsl:if>
                      <xsl:if test='normalize-space(ns0:attribute12) != ""'>
                        <ns18:Attribute12>
                          <xsl:value-of select="ns0:attribute12"/>
                        </ns18:Attribute12>
                      </xsl:if>
                      <xsl:if test='normalize-space(ns0:attribute13) != ""'>
                        <ns18:Attribute13>
                          <xsl:value-of select="ns0:attribute13"/>
                        </ns18:Attribute13>
                      </xsl:if>
                      <xsl:if test='normalize-space(ns0:attribute14) != ""'>
                        <ns18:Attribute14>
                          <xsl:value-of select="ns0:attribute14"/>
                        </ns18:Attribute14>
                      </xsl:if>
                      <xsl:if test='normalize-space(ns0:attribute15) != ""'>
                        <ns18:Attribute15>
                          <xsl:value-of select="ns0:attribute15"/>
                        </ns18:Attribute15>
                      </xsl:if>
                    </ns10:LineDFF>
                  </ns10:InvoiceLines>
                </xsl:for-each>
              </ns10:ListOfInvoiceLines>
            </ns10:Invoice>
          </xsl:for-each>
        </ns1:ListOfInvoices>
      </ns1:Payment>
    </ns1:QueryListOfPaymentResponseMessage>
  </xsl:template>
</xsl:stylesheet>
