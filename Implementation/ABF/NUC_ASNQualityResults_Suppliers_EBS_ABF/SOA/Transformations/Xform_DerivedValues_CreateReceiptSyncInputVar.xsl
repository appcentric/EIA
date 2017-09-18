<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:ns1="http://schemas.oracle.com/service/bpel/common"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 ns1 oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ns5="http://xmlns.eia.com/AO/EBiz/common/UomAO/1.0"
                xmlns:ns6="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptAO/1.0" xmlns:imp1="http://www.example.org"
                xmlns:ns8="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0" xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:ns12="http://xmlns.eia.com/AO/EBiz/common/ItemAO/1.0"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns19="http://xmlns.eia.com/AO/EBiz/common/CategoryAO/1.0"
                xmlns:ns22="http:/xmlns.eia.com/Implementation/ABS/NUC_EBizLot_ABS/EBizLotABS/1.0"
                xmlns:core="http://xmlns.eia.com/EO/Common/1.0"
                xmlns:ns3="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0"
                xmlns:ns2="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns4="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:tns="http://xmlns.eia.com/ABS/EBiz/ReceiptABS/1.0"
                xmlns:ns7="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns9="http://xmlns.eia.com/AO/EBiz/common/AmountAO/1.0"
                xmlns:vprop="http://docs.oasis-open.org/wsbpel/2.0/varprop"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns11="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0"
                xmlns:ns10="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:cor="http:/xmlns.eia.com/Implementation/ABF/NSNE_ASNQualityResults_Suppliers_EBS_ABF/ASNQualityResults_Suppliers/1.0/correlationset"
                xmlns:ns21="http://xmlns.eia.com/EDN/1.0/Event"
                xmlns:ns20="http://xmlns.oracle.com/pcbpel/adapter/ftp/I109byManish/NSNE_ASNQualityResults_Suppliers_EBS_ABF/FTP_ReadASNSupplier"
                xmlns:ns15="http://xmlns.eia.com/AO/EBiz/P2P/SupplierAO/1.0"
                xmlns:ns14="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0"
                xmlns:ns13="http://xmlns.eia.com/AO/EBiz/P2P/SupplierSiteAO/1.0"
                xmlns:ns17="http://xmlns.eia.com/AO/EBiz/P2P/PurchaseOrderAO/1.0"
                xmlns:ns16="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns23="http:/xmlns.eia.com/Implementation/ABS/NUC_NUC_EBizQualityResults_ABS/QualityResults/1.0"
                xmlns:ns18="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/ReceiptABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateReceiptRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FTP_ReadASNSupplier.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="l_derivedOrgId"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FTP_ReadASNSupplier.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="l_params"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FTP_ReadASNSupplier.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="l_DerivedToOrgId"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/P2P/ReceiptABS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateReceiptRequestMessage"
                                       namespace="http://xmlns.eia.com/AO/EBiz/P2P/ReceiptABM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED AUG 17 03:21:00 CDT 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="l_derivedOrgId"/>
  <xsl:param name="l_params"/>
  <xsl:param name="l_DerivedToOrgId"/>
  <xsl:template match="/">
    <ns0:CreateReceiptRequestMessage>
      <ns10:HeaderRq>
        <ns10:TransactionRequestID>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns10:HeaderRq/ns10:TransactionRequestID"/>
        </ns10:TransactionRequestID>
        <ns10:Language>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns10:HeaderRq/ns10:Language"/>
        </ns10:Language>
        <ns10:ComponentID>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns10:HeaderRq/ns10:ComponentID"/>
        </ns10:ComponentID>
        <ns10:ServiceName>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns10:HeaderRq/ns10:ServiceName"/>
        </ns10:ServiceName>
        <ns10:TransactionIDREF>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns10:HeaderRq/ns10:TransactionIDREF"/>
        </ns10:TransactionIDREF>
        <ns10:TransactionName>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns10:HeaderRq/ns10:TransactionName"/>
        </ns10:TransactionName>
        <ns10:FileName>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns10:HeaderRq/ns10:FileName"/>
        </ns10:FileName>
        <ns10:FileInstanceID>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns10:HeaderRq/ns10:FileInstanceID"/>
        </ns10:FileInstanceID>
        <ns10:Source>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns10:HeaderRq/ns10:Source"/>
        </ns10:Source>
        <ns10:Target>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns10:HeaderRq/ns10:Target"/>
        </ns10:Target>
        <ns10:HostName>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns10:HeaderRq/ns10:HostName"/>
        </ns10:HostName>
        <ns10:UserName>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns10:HeaderRq/ns10:UserName"/>
        </ns10:UserName>
        <ns10:UserRole>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns10:HeaderRq/ns10:UserRole"/>
        </ns10:UserRole>
        <ns10:AdminEmail>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns10:HeaderRq/ns10:AdminEmail"/>
        </ns10:AdminEmail>
        <ns10:ApplicationResponsibility>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns10:HeaderRq/ns10:ApplicationResponsibility"/>
        </ns10:ApplicationResponsibility>
        <ns10:EOFFlag>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns10:HeaderRq/ns10:EOFFlag"/>
        </ns10:EOFFlag>
        <ns10:SOFFlag>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns10:HeaderRq/ns10:SOFFlag"/>
        </ns10:SOFFlag>
        <ns10:FileRecordCount>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns10:HeaderRq/ns10:FileRecordCount"/>
        </ns10:FileRecordCount>
        <ns10:TimeStamp>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns10:HeaderRq/ns10:TimeStamp"/>
        </ns10:TimeStamp>
        <ns10:MillName>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns10:HeaderRq/ns10:MillName"/>
        </ns10:MillName>
      </ns10:HeaderRq>
      <ns0:AppsContext xsi:nil="{/ns0:CreateReceiptRequestMessage/ns0:AppsContext/@xsi:nil}">
        <ns11:UserName xsi:nil="{/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:UserName/@xsi:nil}">
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:UserName"/>
        </ns11:UserName>
        <ns11:UserId xsi:nil="{/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:UserId/@xsi:nil}">
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:UserId"/>
        </ns11:UserId>
        <ns11:ResponsibilityKey xsi:nil="{/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:ResponsibilityKey/@xsi:nil}">
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:ResponsibilityKey"/>
        </ns11:ResponsibilityKey>
        <ns11:ResponsibilityId xsi:nil="{/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:ResponsibilityId/@xsi:nil}">
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:ResponsibilityId"/>
        </ns11:ResponsibilityId>
        <ns11:ResponsibilityName xsi:nil="{/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:ResponsibilityName/@xsi:nil}">
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:ResponsibilityName"/>
        </ns11:ResponsibilityName>
        <ns11:ResponsibilityApplId xsi:nil="{/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:ResponsibilityApplId/@xsi:nil}">
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:ResponsibilityApplId"/>
        </ns11:ResponsibilityApplId>
        <ns11:SecurityGroup xsi:nil="{/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:SecurityGroup/@xsi:nil}">
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:SecurityGroup"/>
        </ns11:SecurityGroup>
        <ns11:SecurityGroupId xsi:nil="{/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:SecurityGroupId/@xsi:nil}">
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:SecurityGroupId"/>
        </ns11:SecurityGroupId>
        <ns11:Language xsi:nil="{/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:Language/@xsi:nil}">
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:Language"/>
        </ns11:Language>
        <ns11:OrganizationName xsi:nil="{/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:OrganizationName/@xsi:nil}">
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:OrganizationName"/>
        </ns11:OrganizationName>
        <ns11:OrgId xsi:nil="{/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:OrgId/@xsi:nil}">
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:OrgId"/>
        </ns11:OrgId>
        <ns11:MFGOrganizationId xsi:nil="{/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:MFGOrganizationId/@xsi:nil}">
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:AppsContext/ns11:MFGOrganizationId"/>
        </ns11:MFGOrganizationId>
      </ns0:AppsContext>
      <ns0:Receipt xsi:nil="{/ns0:CreateReceiptRequestMessage/ns0:Receipt/@xsi:nil}">
        <ns6:BasicReceipt>
          <ns6:IndentfierID>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:BasicReceipt/ns6:IndentfierID"/>
          </ns6:IndentfierID>
          <ns6:ReceiptNumber>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:BasicReceipt/ns6:ReceiptNumber"/>
          </ns6:ReceiptNumber>
          <ns6:ShipmentNumber>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:BasicReceipt/ns6:ShipmentNumber"/>
          </ns6:ShipmentNumber>
          <ns6:BillOfLAdding>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:BasicReceipt/ns6:BillOfLAdding"/>
          </ns6:BillOfLAdding>
          <ns6:Packing>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:BasicReceipt/ns6:Packing"/>
          </ns6:Packing>
          <ns6:ReceiptSource>
            <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:BasicReceipt/ns6:ReceiptSource"/>
          </ns6:ReceiptSource>
        </ns6:BasicReceipt>
        <ns6:OperatingUnit>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:OperatingUnit"/>
        </ns6:OperatingUnit>
        <ns6:Approvalstatus>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Approvalstatus"/>
        </ns6:Approvalstatus>
        <ns6:Asnstatus>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Asnstatus"/>
        </ns6:Asnstatus>
        <ns6:Asntype>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Asntype"/>
        </ns6:Asntype>
        <ns6:Autotransactcode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Autotransactcode"/>
        </ns6:Autotransactcode>
        <ns6:Billoflading>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Billoflading"/>
        </ns6:Billoflading>
        <ns6:Carrierequipment>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Carrierequipment"/>
        </ns6:Carrierequipment>
        <ns6:Carrierequipmentalpha>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Carrierequipmentalpha"/>
        </ns6:Carrierequipmentalpha>
        <ns6:Carrierequipmentnum>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Carrierequipmentnum"/>
        </ns6:Carrierequipmentnum>
        <ns6:Carriermethod>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Carriermethod"/>
        </ns6:Carriermethod>
        <ns6:Comments>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Comments"/>
        </ns6:Comments>
        <ns6:Conversiondate>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Conversiondate"/>
        </ns6:Conversiondate>
        <ns6:Conversionrate>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Conversionrate"/>
        </ns6:Conversionrate>
        <ns6:Conversionratedate>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Conversionratedate"/>
        </ns6:Conversionratedate>
        <ns6:Conversionratetype>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Conversionratetype"/>
        </ns6:Conversionratetype>
        <ns6:Createdby>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Createdby"/>
        </ns6:Createdby>
        <ns6:Creationdate>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Creationdate"/>
        </ns6:Creationdate>
        <ns6:Currencycode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Currencycode"/>
        </ns6:Currencycode>
        <ns6:Customeraccountnumber>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Customeraccountnumber"/>
        </ns6:Customeraccountnumber>
        <ns6:Customerid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Customerid"/>
        </ns6:Customerid>
        <ns6:Customerpartyname>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Customerpartyname"/>
        </ns6:Customerpartyname>
        <ns6:Customersiteid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Customersiteid"/>
        </ns6:Customersiteid>
        <ns6:Edicontrolnum>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Edicontrolnum"/>
        </ns6:Edicontrolnum>
        <ns6:Employeeid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Employeeid"/>
        </ns6:Employeeid>
        <ns6:Employeename>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Employeename"/>
        </ns6:Employeename>
        <ns6:Expectedreceiptdate>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Expectedreceiptdate"/>
        </ns6:Expectedreceiptdate>
        <ns6:Freightamount>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Freightamount"/>
        </ns6:Freightamount>
        <ns6:Freightbillnumber>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Freightbillnumber"/>
        </ns6:Freightbillnumber>
        <ns6:Freightcarriercode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Freightcarriercode"/>
        </ns6:Freightcarriercode>
        <ns6:Freightterms>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Freightterms"/>
        </ns6:Freightterms>
        <ns6:Fromorganizationcode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Fromorganizationcode"/>
        </ns6:Fromorganizationcode>
        <ns6:Fromorganizationid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Fromorganizationid"/>
        </ns6:Fromorganizationid>
        <ns6:Governmentcontext>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Governmentcontext"/>
        </ns6:Governmentcontext>
        <ns6:Grossweight>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Grossweight"/>
        </ns6:Grossweight>
        <ns6:Grossweightuomcode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Grossweightuomcode"/>
        </ns6:Grossweightuomcode>
        <ns6:Groupid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Groupid"/>
        </ns6:Groupid>
        <ns6:Hazardclass>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Hazardclass"/>
        </ns6:Hazardclass>
        <ns6:Hazardcode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Hazardcode"/>
        </ns6:Hazardcode>
        <ns6:Hazarddescription>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Hazarddescription"/>
        </ns6:Hazarddescription>
        <ns6:Headerinterfaceid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Headerinterfaceid"/>
        </ns6:Headerinterfaceid>
        <ns6:Invoiceamount>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Invoiceamount"/>
        </ns6:Invoiceamount>
        <ns6:Invoicedate>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Invoicedate"/>
        </ns6:Invoicedate>
        <ns6:Invoicenum>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Invoicenum"/>
        </ns6:Invoicenum>
        <ns6:Invoicestatuscode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Invoicestatuscode"/>
        </ns6:Invoicestatuscode>
        <ns6:Lastupdatedby>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Lastupdatedby"/>
        </ns6:Lastupdatedby>
        <ns6:Lastupdatedate>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Lastupdatedate"/>
        </ns6:Lastupdatedate>
        <ns6:Lastupdatelogin>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Lastupdatelogin"/>
        </ns6:Lastupdatelogin>
        <ns6:Locationcode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Locationcode"/>
        </ns6:Locationcode>
        <ns6:Locationid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Locationid"/>
        </ns6:Locationid>
        <ns6:Mrcconversiondate>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Mrcconversiondate"/>
        </ns6:Mrcconversiondate>
        <ns6:Mrcconversionrate>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Mrcconversionrate"/>
        </ns6:Mrcconversionrate>
        <ns6:Mrcconversionratetype>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Mrcconversionratetype"/>
        </ns6:Mrcconversionratetype>
        <ns6:Netweight>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Netweight"/>
        </ns6:Netweight>
        <ns6:Netweightuomcode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Netweightuomcode"/>
        </ns6:Netweightuomcode>
        <ns6:Noticecreationdate>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Noticecreationdate"/>
        </ns6:Noticecreationdate>
        <ns6:Numofcontainers>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Numofcontainers"/>
        </ns6:Numofcontainers>
        <ns6:Operatingunit>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Operatingunit"/>
        </ns6:Operatingunit>
        <ns6:Organizationid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Organizationid"/>
        </ns6:Organizationid>
        <ns6:Orgid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Orgid"/>
        </ns6:Orgid>
        <ns6:Packagingcode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Packagingcode"/>
        </ns6:Packagingcode>
        <ns6:Packingslip>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Packingslip"/>
        </ns6:Packingslip>
        <ns6:Paymenttermsid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Paymenttermsid"/>
        </ns6:Paymenttermsid>
        <ns6:Paymenttermsname>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Paymenttermsname"/>
        </ns6:Paymenttermsname>
        <ns6:Performanceperiodfrom>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Performanceperiodfrom"/>
        </ns6:Performanceperiodfrom>
        <ns6:Performanceperiodto>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Performanceperiodto"/>
        </ns6:Performanceperiodto>
        <ns6:Processingrequestid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Processingrequestid"/>
        </ns6:Processingrequestid>
        <ns6:Processingstatuscode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Processingstatuscode"/>
        </ns6:Processingstatuscode>
        <ns6:Programapplicationid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Programapplicationid"/>
        </ns6:Programapplicationid>
        <ns6:Programid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Programid"/>
        </ns6:Programid>
        <ns6:Programupdatedate>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Programupdatedate"/>
        </ns6:Programupdatedate>
        <ns6:Receiptheaderid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Receiptheaderid"/>
        </ns6:Receiptheaderid>
        <ns6:Receiptnum>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Receiptnum"/>
        </ns6:Receiptnum>
        <ns6:Receiptsourcecode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Receiptsourcecode"/>
        </ns6:Receiptsourcecode>
        <ns6:Receiverid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Receiverid"/>
        </ns6:Receiverid>
        <ns6:Remittositeid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Remittositeid"/>
        </ns6:Remittositeid>
        <ns6:Requestdate>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Requestdate"/>
        </ns6:Requestdate>
        <ns6:Requestid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Requestid"/>
        </ns6:Requestid>
        <ns6:Shipmentheaderid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Shipmentheaderid"/>
        </ns6:Shipmentheaderid>
        <ns6:Shipmentnum>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Shipmentnum"/>
        </ns6:Shipmentnum>
        <ns6:Shippeddate>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Shippeddate"/>
        </ns6:Shippeddate>
        <ns6:Shipfromlocationcode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Shipfromlocationcode"/>
        </ns6:Shipfromlocationcode>
        <ns6:Shipfromlocationid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Shipfromlocationid"/>
        </ns6:Shipfromlocationid>
        <ns6:Shiptolocationid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Shiptolocationid"/>
        </ns6:Shiptolocationid>
        <ns6:Shiptoorganizationcode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Shiptoorganizationcode"/>
        </ns6:Shiptoorganizationcode>
        <ns6:Shiptoorganizationid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Shiptoorganizationid"/>
        </ns6:Shiptoorganizationid>
        <ns6:Shiptoorgid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Shiptoorgid"/>
        </ns6:Shiptoorgid>
        <ns6:Specialhandlingcode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Specialhandlingcode"/>
        </ns6:Specialhandlingcode>
        <ns6:Tarweight>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Tarweight"/>
        </ns6:Tarweight>
        <ns6:Tarweightuomcode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Tarweightuomcode"/>
        </ns6:Tarweightuomcode>
        <ns6:Taxamount>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Taxamount"/>
        </ns6:Taxamount>
        <ns6:Taxname>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Taxname"/>
        </ns6:Taxname>
        <ns6:Testflag>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Testflag"/>
        </ns6:Testflag>
        <ns6:Totalinvoiceamount>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Totalinvoiceamount"/>
        </ns6:Totalinvoiceamount>
        <ns6:Transactiondate>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Transactiondate"/>
        </ns6:Transactiondate>
        <ns6:Transactiontype>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Transactiontype"/>
        </ns6:Transactiontype>
        <ns6:Usggltransactioncode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Usggltransactioncode"/>
        </ns6:Usggltransactioncode>
        <ns6:Ussgltransactioncode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Ussgltransactioncode"/>
        </ns6:Ussgltransactioncode>
        <ns6:Validationflag>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Validationflag"/>
        </ns6:Validationflag>
        <ns6:Vendorid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Vendorid"/>
        </ns6:Vendorid>
        <ns6:Vendorname>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Vendorname"/>
        </ns6:Vendorname>
        <ns6:Vendornum>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Vendornum"/>
        </ns6:Vendornum>
        <ns6:Vendorsitecode>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Vendorsitecode"/>
        </ns6:Vendorsitecode>
        <ns6:Vendorsiteid>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Vendorsiteid"/>
        </ns6:Vendorsiteid>
        <ns6:Waybillairbillnum>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Waybillairbillnum"/>
        </ns6:Waybillairbillnum>
        <ns6:Wfitemkey>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Wfitemkey"/>
        </ns6:Wfitemkey>
        <ns6:Wfitemtype>
          <xsl:value-of select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:Wfitemtype"/>
        </ns6:Wfitemtype>
    
       
        <ns6:ListOfTransactions xsi:nil="{/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:ListOfTransactions/@xsi:nil}">
          <xsl:for-each select="/ns0:CreateReceiptRequestMessage/ns0:Receipt/ns6:ListOfTransactions/ns6:Transaction">
          <xsl:variable  name="currentPO">
          <xsl:value-of select="ns6:DocumentNum"/>
          </xsl:variable>
           <xsl:variable  name="currentPOLine">
           <xsl:value-of select="ns6:DocumentLineNum"/>
          </xsl:variable>
        
            <ns6:Transaction>
              <ns6:BasicTransaction>
                <ns6:Identifier>
                  <xsl:value-of select="ns6:BasicTransaction/ns6:Identifier"/>
                </ns6:Identifier>
                <ns6:TransactionType>
                  <xsl:value-of select="ns6:BasicTransaction/ns6:TransactionType"/>
                </ns6:TransactionType>
                <ns6:TransactionDate>
                  <xsl:value-of select="ns6:BasicTransaction/ns6:TransactionDate"/>
                </ns6:TransactionDate>
                <ns6:Quantity>
                  <xsl:value-of select="ns6:BasicTransaction/ns6:Quantity"/>
                </ns6:Quantity>
                <ns6:Uom>
                  <ns5:Code xsi:nil="{ns6:BasicTransaction/ns6:Uom/ns5:Code/@xsi:nil}">
                    <xsl:value-of select="ns6:BasicTransaction/ns6:Uom/ns5:Code"/>
                  </ns5:Code>
                  <ns5:Description xsi:nil="{ns6:BasicTransaction/ns6:Uom/ns5:Description/@xsi:nil}">
                    <xsl:value-of select="ns6:BasicTransaction/ns6:Uom/ns5:Description"/>
                  </ns5:Description>
                </ns6:Uom>
                <ns6:ShipmentHeaderId>
                  <xsl:value-of select="ns6:BasicTransaction/ns6:ShipmentHeaderId"/>
                </ns6:ShipmentHeaderId>
                <ns6:ShipmentLineId>
                  <xsl:value-of select="ns6:BasicTransaction/ns6:ShipmentLineId"/>
                </ns6:ShipmentLineId>
              </ns6:BasicTransaction>
              <ns6:AccrualStatusCode>
                <xsl:value-of select="ns6:AccrualStatusCode"/>
              </ns6:AccrualStatusCode>
              <ns6:ActualCost>
                <xsl:value-of select="ns6:ActualCost"/>
              </ns6:ActualCost>
              <ns6:Amount>
                <ns9:Value xsi:nil="{ns6:Amount/ns9:Value/@xsi:nil}">
                  <xsl:value-of select="ns6:Amount/ns9:Value"/>
                </ns9:Value>
                <ns9:CurrencyCode xsi:nil="{ns6:Amount/ns9:CurrencyCode/@xsi:nil}">
                  <xsl:value-of select="ns6:Amount/ns9:CurrencyCode"/>
                </ns9:CurrencyCode>
              </ns6:Amount>
              <ns6:AmountBilled>
                <ns9:Value xsi:nil="{ns6:AmountBilled/ns9:Value/@xsi:nil}">
                  <xsl:value-of select="ns6:AmountBilled/ns9:Value"/>
                </ns9:Value>
                <ns9:CurrencyCode xsi:nil="{ns6:AmountBilled/ns9:CurrencyCode/@xsi:nil}">
                  <xsl:value-of select="ns6:AmountBilled/ns9:CurrencyCode"/>
                </ns9:CurrencyCode>
              </ns6:AmountBilled>
              <ns6:AmountShipped>
                <ns9:Value xsi:nil="{ns6:AmountShipped/ns9:Value/@xsi:nil}">
                  <xsl:value-of select="ns6:AmountShipped/ns9:Value"/>
                </ns9:Value>
                <ns9:CurrencyCode xsi:nil="{ns6:AmountShipped/ns9:CurrencyCode/@xsi:nil}">
                  <xsl:value-of select="ns6:AmountShipped/ns9:CurrencyCode"/>
                </ns9:CurrencyCode>
              </ns6:AmountShipped>
              <ns6:AsnAttachId>
                <xsl:value-of select="ns6:AsnAttachId"/>
              </ns6:AsnAttachId>
           
              <ns6:AutoTransactCode>
                <xsl:value-of select="ns6:AutoTransactCode"/>
              </ns6:AutoTransactCode>
              <ns6:BarcodeLabel>
                <xsl:value-of select="ns6:BarcodeLabel"/>
              </ns6:BarcodeLabel>
              <ns6:BillOfLading>
                <xsl:value-of select="ns6:BillOfLading"/>
              </ns6:BillOfLading>
              <ns6:BomResourceId>
                <xsl:value-of select="ns6:BomResourceId"/>
              </ns6:BomResourceId>
              <ns6:Category>
                <ns19:Identifier>
                  <xsl:value-of select="ns6:Category/ns19:Identifier"/>
                </ns19:Identifier>
                <ns19:Category>
                  <xsl:value-of select="ns6:Category/ns19:Category"/>
                </ns19:Category>
                <ns19:Description>
                  <xsl:value-of select="ns6:Category/ns19:Description"/>
                </ns19:Description>
              </ns6:Category>
              <ns6:ChargeAccountId>
                <xsl:value-of select="ns6:ChargeAccountId"/>
              </ns6:ChargeAccountId>
              <ns6:ChildInspectionFlag>
                <xsl:value-of select="ns6:ChildInspectionFlag"/>
              </ns6:ChildInspectionFlag>
              <ns6:Comments>
                <xsl:value-of select="ns6:Comments"/>
              </ns6:Comments>
              <ns6:ConsignedFlag>
                <xsl:value-of select="ns6:ConsignedFlag"/>
              </ns6:ConsignedFlag>
              <ns6:ContainerNum>
                <xsl:value-of select="ns6:ContainerNum"/>
              </ns6:ContainerNum>
              <ns6:CostGroupId>
                <xsl:value-of select="ns6:CostGroupId"/>
              </ns6:CostGroupId>
              <ns6:CountryOfOriginCode>
                <xsl:value-of select="ns6:CountryOfOriginCode"/>
              </ns6:CountryOfOriginCode>
              <ns6:CreateDebitMemoFlag>
                <xsl:value-of select="ns6:CreateDebitMemoFlag"/>
              </ns6:CreateDebitMemoFlag>
              <ns6:CurrencyConversionDate>
                <xsl:value-of select="ns6:CurrencyConversionDate"/>
              </ns6:CurrencyConversionDate>
              <ns6:CurrencyConversionRate>
                <xsl:value-of select="ns6:CurrencyConversionRate"/>
              </ns6:CurrencyConversionRate>
              <ns6:CurrencyConversionType>
                <xsl:value-of select="ns6:CurrencyConversionType"/>
              </ns6:CurrencyConversionType>
              <ns6:CustomerAccountNumber>
                <xsl:value-of select="ns6:CustomerAccountNumber"/>
              </ns6:CustomerAccountNumber>
              <ns6:CustomerId>
                <xsl:value-of select="ns6:CustomerId"/>
              </ns6:CustomerId>
              <ns6:CustomerItemId>
                <xsl:value-of select="ns6:CustomerItemId"/>
              </ns6:CustomerItemId>
              <ns6:CustomerItemNum>
                <xsl:value-of select="ns6:CustomerItemNum"/>
              </ns6:CustomerItemNum>
              <ns6:CustomerPartyName>
                <xsl:value-of select="ns6:CustomerPartyName"/>
              </ns6:CustomerPartyName>
              <ns6:CustomerSiteId>
                <xsl:value-of select="ns6:CustomerSiteId"/>
              </ns6:CustomerSiteId>
              <ns6:DeliverToLocationCode>
                <xsl:value-of select="ns6:DeliverToLocationCode"/>
              </ns6:DeliverToLocationCode>
              <ns6:DeliverToLocationId>
                <xsl:value-of select="ns6:DeliverToLocationId"/>
              </ns6:DeliverToLocationId>
              <ns6:DeliverToPersonId>
                <xsl:value-of select="ns6:DeliverToPersonId"/>
              </ns6:DeliverToPersonId>
              <ns6:DeliverToPersonName>
                <xsl:value-of select="ns6:DeliverToPersonName"/>
              </ns6:DeliverToPersonName>
              <ns6:DepartmentCode>
                <xsl:value-of select="ns6:DepartmentCode"/>
              </ns6:DepartmentCode>
              <ns6:DestinationContext>
                <xsl:value-of select="ns6:DestinationContext"/>
              </ns6:DestinationContext>
              <ns6:DestinationTypeCode>
                <xsl:value-of select="ns6:DestinationTypeCode"/>
              </ns6:DestinationTypeCode>
              <ns6:DocumentDistributionNum>
                <xsl:value-of select="ns6:DocumentDistributionNum"/>
              </ns6:DocumentDistributionNum>
              <ns6:DocumentLineNum>
                <xsl:value-of select="ns6:DocumentLineNum"/>
              </ns6:DocumentLineNum>
              <ns6:DocumentNum>
                <xsl:value-of select="ns6:DocumentNum"/>
              </ns6:DocumentNum>
              <ns6:DocumentShipmentLineNum>
                <xsl:value-of select="ns6:DocumentShipmentLineNum"/>
              </ns6:DocumentShipmentLineNum>
              <ns6:DropshipTypeCode>
                <xsl:value-of select="ns6:DropshipTypeCode"/>
              </ns6:DropshipTypeCode>
              <ns6:EmployeeId>
                <xsl:value-of select="ns6:EmployeeId"/>
              </ns6:EmployeeId>
              <ns6:ErecordId>
                <xsl:value-of select="ns6:ErecordId"/>
              </ns6:ErecordId>
              <ns6:ExpectedReceiptDate>
                <xsl:value-of select="ns6:ExpectedReceiptDate"/>
              </ns6:ExpectedReceiptDate>
              <ns6:ExpressTransaction>
                <xsl:value-of select="ns6:ExpressTransaction"/>
              </ns6:ExpressTransaction>
              <ns6:FreightCarrierCode>
                <xsl:value-of select="ns6:FreightCarrierCode"/>
              </ns6:FreightCarrierCode>
              <ns6:FromLocator>
                <xsl:value-of select="ns6:FromLocator"/>
              </ns6:FromLocator>
              <ns6:FromLocatorId>
                <xsl:value-of select="ns6:FromLocatorId"/>
              </ns6:FromLocatorId>
              <ns6:FromOrganizationCode>
                <xsl:value-of select="ns6:FromOrganizationCode"/>
              </ns6:FromOrganizationCode>
              <ns6:FromOrganizationId>
                <xsl:value-of select="ns6:FromOrganizationId"/>
              </ns6:FromOrganizationId>
              <ns6:FromSubinventory>
                <xsl:value-of select="ns6:FromSubinventory"/>
              </ns6:FromSubinventory>
              <ns6:GovernmentContext>
                <xsl:value-of select="ns6:GovernmentContext"/>
              </ns6:GovernmentContext>
              <ns6:GroupId>
                <xsl:value-of select="ns6:GroupId"/>
              </ns6:GroupId>
              <ns6:HeaderInterfaceId>
                <xsl:value-of select="ns6:HeaderInterfaceId"/>
              </ns6:HeaderInterfaceId>
              <ns6:InspectionQualityCode>
                <xsl:value-of select="ns6:InspectionQualityCode"/>
              </ns6:InspectionQualityCode>
              <ns6:InspectionStatusCode>
                <xsl:value-of select="ns6:InspectionStatusCode"/>
              </ns6:InspectionStatusCode>
              <ns6:InterfaceAvailableAmt>
                <xsl:value-of select="ns6:InterfaceAvailableAmt"/>
              </ns6:InterfaceAvailableAmt>
              <ns6:InterfaceAvailableQty>
                <xsl:value-of select="ns6:InterfaceAvailableQty"/>
              </ns6:InterfaceAvailableQty>
              <ns6:InterfaceSourceCode>
                <xsl:value-of select="ns6:InterfaceSourceCode"/>
              </ns6:InterfaceSourceCode>
              <ns6:InterfaceSourceLineId>
                <xsl:value-of select="ns6:InterfaceSourceLineId"/>
              </ns6:InterfaceSourceLineId>
              <ns6:InterfaceTransactionAmt>
                <xsl:value-of select="ns6:InterfaceTransactionAmt"/>
              </ns6:InterfaceTransactionAmt>
              <ns6:InterfaceTransactionId>
                <xsl:value-of select="ns6:InterfaceTransactionId"/>
              </ns6:InterfaceTransactionId>
              <ns6:InterfaceTransactionQty>
                <xsl:value-of select="ns6:InterfaceTransactionQty"/>
              </ns6:InterfaceTransactionQty>
              <ns6:IntransitOwningOrgCode>
                <xsl:value-of select="ns6:IntransitOwningOrgCode"/>
              </ns6:IntransitOwningOrgCode>
              <ns6:IntransitOwningOrgId>
                <xsl:value-of select="ns6:IntransitOwningOrgId"/>
              </ns6:IntransitOwningOrgId>
              <ns6:InvoiceId>
                <xsl:value-of select="ns6:InvoiceId"/>
              </ns6:InvoiceId>
              <ns6:InvoiceStatusCode>
                <xsl:value-of select="ns6:InvoiceStatusCode"/>
              </ns6:InvoiceStatusCode>
              <ns6:InvTransactionId>
                <xsl:value-of select="ns6:InvTransactionId"/>
              </ns6:InvTransactionId>
              <ns6:Item>
                <ns12:Identifier>
                <xsl:value-of select="$l_params/ns1:parameters/ns1:item[(ns1:name = $currentPO) and (ns1:msg = $currentPOLine)]/ns1:value"/>
                </ns12:Identifier>
                <ns12:Item>
                </ns12:Item>
                <ns12:Description>
                  <xsl:value-of select="ns6:Item/ns12:Description"/>
                </ns12:Description>
                <ns12:Code>
                  <xsl:value-of select="ns6:Item/ns12:Code"/>
                </ns12:Code>
                <ns12:ItemRevision>
                  <xsl:value-of select="ns6:Item/ns12:ItemRevision"/>
                </ns12:ItemRevision>
                <ns12:OrgCode>
                  <xsl:value-of select="ns6:Item/ns12:OrgCode"/>
                </ns12:OrgCode>
              </ns6:Item>
              <ns6:JobId>
                <xsl:value-of select="ns6:JobId"/>
              </ns6:JobId>
              <ns6:LcmAdjustmentNum>
                <xsl:value-of select="ns6:LcmAdjustmentNum"/>
              </ns6:LcmAdjustmentNum>
              <ns6:LcmShipmentLineId>
                <xsl:value-of select="ns6:LcmShipmentLineId"/>
              </ns6:LcmShipmentLineId>
              <ns6:LicensePlateNumber>
                <xsl:value-of select="ns6:LicensePlateNumber"/>
              </ns6:LicensePlateNumber>
              <ns6:LocationCode>
                <xsl:value-of select="ns6:LocationCode"/>
              </ns6:LocationCode>
              <ns6:LocationId>
                <xsl:value-of select="ns6:LocationId"/>
              </ns6:LocationId>
              <ns6:Locator>
                <xsl:value-of select="ns6:Locator"/>
              </ns6:Locator>
              <ns6:LocatorAttribute>
                <xsl:value-of select="ns6:LocatorAttribute"/>
              </ns6:LocatorAttribute>
              <ns6:LocatorId>
                <xsl:value-of select="ns6:LocatorId"/>
              </ns6:LocatorId>
              <ns6:LpnGroupId>
                <xsl:value-of select="ns6:LpnGroupId"/>
              </ns6:LpnGroupId>
              <ns6:LpnId>
                <xsl:value-of select="ns6:LpnId"/>
              </ns6:LpnId>
              <ns6:MatchingBasis>
                <xsl:value-of select="ns6:MatchingBasis"/>
              </ns6:MatchingBasis>
              <ns6:MatchFlag>
                <xsl:value-of select="ns6:MatchFlag"/>
              </ns6:MatchFlag>
              <ns6:MatchOption>
                <xsl:value-of select="ns6:MatchOption"/>
              </ns6:MatchOption>
              <ns6:MaterialStoredAmount>
                <xsl:value-of select="ns6:MaterialStoredAmount"/>
              </ns6:MaterialStoredAmount>
              <ns6:MmttTempId>
                <xsl:value-of select="ns6:MmttTempId"/>
              </ns6:MmttTempId>
              <ns6:MobileTxn>
                <xsl:value-of select="ns6:MobileTxn"/>
              </ns6:MobileTxn>
              <ns6:MovementId>
                <xsl:value-of select="ns6:MovementId"/>
              </ns6:MovementId>
              <ns6:MrcCurrencyConversionDate>
                <xsl:value-of select="ns6:MrcCurrencyConversionDate"/>
              </ns6:MrcCurrencyConversionDate>
              <ns6:MrcCurrencyConversionRate>
                <xsl:value-of select="ns6:MrcCurrencyConversionRate"/>
              </ns6:MrcCurrencyConversionRate>
              <ns6:MrcCurrencyConversionType>
                <xsl:value-of select="ns6:MrcCurrencyConversionType"/>
              </ns6:MrcCurrencyConversionType>
              <ns6:MvtStatStatus>
                <xsl:value-of select="ns6:MvtStatStatus"/>
              </ns6:MvtStatStatus>
              <ns6:NoticeUnitPrice>
                <xsl:value-of select="ns6:NoticeUnitPrice"/>
              </ns6:NoticeUnitPrice>
              <ns6:NumOfContainers>
                <xsl:value-of select="ns6:NumOfContainers"/>
              </ns6:NumOfContainers>
              <ns6:OeOrderHeaderId>
                <xsl:value-of select="ns6:OeOrderHeaderId"/>
              </ns6:OeOrderHeaderId>
              <ns6:OeOrderLineId>
                <xsl:value-of select="ns6:OeOrderLineId"/>
              </ns6:OeOrderLineId>
              <ns6:OeOrderLineNum>
                <xsl:value-of select="ns6:OeOrderLineNum"/>
              </ns6:OeOrderLineNum>
              <ns6:OeOrderNum>
                <xsl:value-of select="ns6:OeOrderNum"/>
              </ns6:OeOrderNum>
              <ns6:OperatingUnit>
                <xsl:value-of select="ns6:OperatingUnit"/>
              </ns6:OperatingUnit>
              <ns6:OrderTransactionId>
                <xsl:value-of select="ns6:OrderTransactionId"/>
              </ns6:OrderTransactionId>
              <ns6:OrganizationId>
                <xsl:value-of select="ns6:OrganizationId"/>
              </ns6:OrganizationId>
              <ns6:OrgId>
               <xsl:value-of select="$l_derivedOrgId/ns1:parameters/ns1:item[(ns1:name = $currentPO) and (ns1:msg = $currentPOLine)]/ns1:value"/>
              </ns6:OrgId>
              <ns6:PackingSlip>
                <xsl:value-of select="ns6:PackingSlip"/>
              </ns6:PackingSlip>
              <ns6:ParentInterfaceTxnId>
                <xsl:value-of select="ns6:ParentInterfaceTxnId"/>
              </ns6:ParentInterfaceTxnId>
              <ns6:ParentSourceTransactionNum>
                <xsl:value-of select="ns6:ParentSourceTransactionNum"/>
              </ns6:ParentSourceTransactionNum>
              <ns6:ParentTransactionId>
                <xsl:value-of select="ns6:ParentTransactionId"/>
              </ns6:ParentTransactionId>
              <ns6:PaAdditionFlag>
                <xsl:value-of select="ns6:PaAdditionFlag"/>
              </ns6:PaAdditionFlag>
              <ns6:PoDistributionId>
                <xsl:value-of select="ns6:PoDistributionId"/>
              </ns6:PoDistributionId>
              <ns6:BasicPurchaseOrder>
                <ns17:POIndentfierID>
                  <xsl:value-of select="ns6:BasicPurchaseOrder/ns17:POIndentfierID"/>
                </ns17:POIndentfierID>
                <ns17:PurchaseOrderNumber>
                  <xsl:value-of select="ns6:BasicPurchaseOrder/ns17:PurchaseOrderNumber"/>
                </ns17:PurchaseOrderNumber>
                <ns17:PurchaseOrderDate>
                  <xsl:value-of select="ns6:BasicPurchaseOrder/ns17:PurchaseOrderDate"/>
                </ns17:PurchaseOrderDate>
              </ns6:BasicPurchaseOrder>
              <ns6:BasicPurchaseOrderLine>
                <ns17:POIndentfierID>
                  <xsl:value-of select="ns6:BasicPurchaseOrderLine/ns17:POIndentfierID"/>
                </ns17:POIndentfierID>
                <ns17:PurchaseOrderNumber>
                  <xsl:value-of select="ns6:BasicPurchaseOrderLine/ns17:PurchaseOrderNumber"/>
                </ns17:PurchaseOrderNumber>
                <ns17:PurchaseOrderDate>
                  <xsl:value-of select="ns6:BasicPurchaseOrderLine/ns17:PurchaseOrderDate"/>
                </ns17:PurchaseOrderDate>
              </ns6:BasicPurchaseOrderLine>
              <ns6:PoLineLocationId>
                <xsl:value-of select="ns6:PoLineLocationId"/>
              </ns6:PoLineLocationId>
              <ns6:PoReleaseId>
                <xsl:value-of select="ns6:PoReleaseId"/>
              </ns6:PoReleaseId>
              <ns6:PoRevisionNum>
                <xsl:value-of select="ns6:PoRevisionNum"/>
              </ns6:PoRevisionNum>
              <ns6:PoUnitPrice>
                <ns9:Value xsi:nil="{ns6:PoUnitPrice/ns9:Value/@xsi:nil}">
                  <xsl:value-of select="ns6:PoUnitPrice/ns9:Value"/>
                </ns9:Value>
                <ns9:CurrencyCode xsi:nil="{ns6:PoUnitPrice/ns9:CurrencyCode/@xsi:nil}">
                  <xsl:value-of select="ns6:PoUnitPrice/ns9:CurrencyCode"/>
                </ns9:CurrencyCode>
              </ns6:PoUnitPrice>
              <ns6:PrimaryQuantity>
                <xsl:value-of select="ns6:PrimaryQuantity"/>
              </ns6:PrimaryQuantity>
              <ns6:PrimaryUnitOfMeasure>
                <ns5:Code xsi:nil="{ns6:PrimaryUnitOfMeasure/ns5:Code/@xsi:nil}">
                  <xsl:value-of select="ns6:PrimaryUnitOfMeasure/ns5:Code"/>
                </ns5:Code>
                <ns5:Description xsi:nil="{ns6:PrimaryUnitOfMeasure/ns5:Description/@xsi:nil}">
                  <xsl:value-of select="ns6:PrimaryUnitOfMeasure/ns5:Description"/>
                </ns5:Description>
              </ns6:PrimaryUnitOfMeasure>
              <ns6:ProcessingModeCode>
                <xsl:value-of select="ns6:ProcessingModeCode"/>
              </ns6:ProcessingModeCode>
              <ns6:ProcessingRequestId>
                <xsl:value-of select="ns6:ProcessingRequestId"/>
              </ns6:ProcessingRequestId>
              <ns6:ProcessingStatusCode>
                <xsl:value-of select="ns6:ProcessingStatusCode"/>
              </ns6:ProcessingStatusCode>
              <ns6:ProjectId>
                <xsl:value-of select="ns6:ProjectId"/>
              </ns6:ProjectId>
              <ns6:PutAwayRuleId>
                <xsl:value-of select="ns6:PutAwayRuleId"/>
              </ns6:PutAwayRuleId>
              <ns6:PutAwayStrategyId>
                <xsl:value-of select="ns6:PutAwayStrategyId"/>
              </ns6:PutAwayStrategyId>
              <ns6:QaCollectionId>
                <xsl:value-of select="ns6:QaCollectionId"/>
              </ns6:QaCollectionId>
              <ns6:QcGrade>
                <xsl:value-of select="ns6:QcGrade"/>
              </ns6:QcGrade>
              <ns6:Quantity>
                <xsl:value-of select="ns6:Quantity"/>
              </ns6:Quantity>
              <ns6:QuantityBilled>
                <xsl:value-of select="ns6:QuantityBilled"/>
              </ns6:QuantityBilled>
              <ns6:QuantityInvoiced>
                <xsl:value-of select="ns6:QuantityInvoiced"/>
              </ns6:QuantityInvoiced>
              <ns6:QuantityShipped>
                <xsl:value-of select="ns6:QuantityShipped"/>
              </ns6:QuantityShipped>
              <ns6:ReasonId>
                <xsl:value-of select="ns6:ReasonId"/>
              </ns6:ReasonId>
              <ns6:ReasonName>
                <xsl:value-of select="ns6:ReasonName"/>
              </ns6:ReasonName>
              <ns6:ReceiptConfirmationExtracted>
                <xsl:value-of select="ns6:ReceiptConfirmationExtracted"/>
              </ns6:ReceiptConfirmationExtracted>
              <ns6:ReceiptExceptionFlag>
                <xsl:value-of select="ns6:ReceiptExceptionFlag"/>
              </ns6:ReceiptExceptionFlag>
              <ns6:ReceiptSourceCode>
                <xsl:value-of select="ns6:ReceiptSourceCode"/>
              </ns6:ReceiptSourceCode>
              <ns6:ReleaseNum>
                <xsl:value-of select="ns6:ReleaseNum"/>
              </ns6:ReleaseNum>
              <ns6:ReplenishOrderLineId>
                <xsl:value-of select="ns6:ReplenishOrderLineId"/>
              </ns6:ReplenishOrderLineId>
              <ns6:RequestedAmount>
                <xsl:value-of select="ns6:RequestedAmount"/>
              </ns6:RequestedAmount>
              <ns6:RequestId>
                <xsl:value-of select="ns6:RequestId"/>
              </ns6:RequestId>
              <ns6:RequisitionLineId>
                <xsl:value-of select="ns6:RequisitionLineId"/>
              </ns6:RequisitionLineId>
              <ns6:ReqDistributionId>
                <xsl:value-of select="ns6:ReqDistributionId"/>
              </ns6:ReqDistributionId>
              <ns6:ReqDistributionNum>
                <xsl:value-of select="ns6:ReqDistributionNum"/>
              </ns6:ReqDistributionNum>
              <ns6:ReqLineNum>
                <xsl:value-of select="ns6:ReqLineNum"/>
              </ns6:ReqLineNum>
              <ns6:ReqNum>
                <xsl:value-of select="ns6:ReqNum"/>
              </ns6:ReqNum>
              <ns6:ResourceCode>
                <xsl:value-of select="ns6:ResourceCode"/>
              </ns6:ResourceCode>
              <ns6:RmaReference>
                <xsl:value-of select="ns6:RmaReference"/>
              </ns6:RmaReference>
              <ns6:RoutingCode>
                <xsl:value-of select="ns6:RoutingCode"/>
              </ns6:RoutingCode>
              <ns6:RoutingHeaderId>
                <xsl:value-of select="ns6:RoutingHeaderId"/>
              </ns6:RoutingHeaderId>
              <ns6:RoutingStep>
                <xsl:value-of select="ns6:RoutingStep"/>
              </ns6:RoutingStep>
              <ns6:RoutingStepId>
                <xsl:value-of select="ns6:RoutingStepId"/>
              </ns6:RoutingStepId>
              <ns6:SecondaryQuantity>
                <xsl:value-of select="ns6:SecondaryQuantity"/>
              </ns6:SecondaryQuantity>
              <ns6:SecondaryUnitOfMeasure>
                <xsl:value-of select="ns6:SecondaryUnitOfMeasure"/>
              </ns6:SecondaryUnitOfMeasure>
              <ns6:SecondaryUomCode>
                <xsl:value-of select="ns6:SecondaryUomCode"/>
              </ns6:SecondaryUomCode>
              <ns6:ShipmentHeaderId>
                <xsl:value-of select="ns6:ShipmentHeaderId"/>
              </ns6:ShipmentHeaderId>
              <ns6:ShipmentLineId>
                <xsl:value-of select="ns6:ShipmentLineId"/>
              </ns6:ShipmentLineId>
              <ns6:ShipmentLineStatusCode>
                <xsl:value-of select="ns6:ShipmentLineStatusCode"/>
              </ns6:ShipmentLineStatusCode>
              <ns6:ShipmentNum>
                <xsl:value-of select="ns6:ShipmentNum"/>
              </ns6:ShipmentNum>
              <ns6:ShippedDate>
                <xsl:value-of select="ns6:ShippedDate"/>
              </ns6:ShippedDate>
            
         
              <ns6:ShipToLocationCode>
                <xsl:value-of select="ns6:ShipToLocationCode"/>
              </ns6:ShipToLocationCode>
              <ns6:ShipToLocationId>
                <xsl:value-of select="ns6:ShipToLocationId"/>
              </ns6:ShipToLocationId>
              <ns6:SourceDocumentCode>
                <xsl:value-of select="ns6:SourceDocumentCode"/>
              </ns6:SourceDocumentCode>
              <ns6:SourceDocQuantity>
                <xsl:value-of select="ns6:SourceDocQuantity"/>
              </ns6:SourceDocQuantity>
              <ns6:SourceDocUnitOfMeasure>
                <ns5:Code xsi:nil="{ns6:SourceDocUnitOfMeasure/ns5:Code/@xsi:nil}">
                  <xsl:value-of select="ns6:SourceDocUnitOfMeasure/ns5:Code"/>
                </ns5:Code>
                <ns5:Description xsi:nil="{ns6:SourceDocUnitOfMeasure/ns5:Description/@xsi:nil}">
                  <xsl:value-of select="ns6:SourceDocUnitOfMeasure/ns5:Description"/>
                </ns5:Description>
              </ns6:SourceDocUnitOfMeasure>
              <ns6:SourceTransactionNum>
                <xsl:value-of select="ns6:SourceTransactionNum"/>
              </ns6:SourceTransactionNum>
              <ns6:Subinventory>
                <xsl:value-of select="ns6:Subinventory"/>
              </ns6:Subinventory>
              <ns6:SubstituteItemId>
                <xsl:value-of select="ns6:SubstituteItemId"/>
              </ns6:SubstituteItemId>
              <ns6:SubstituteItemNum>
                <xsl:value-of select="ns6:SubstituteItemNum"/>
              </ns6:SubstituteItemNum>
              <ns6:SubstituteUnorderedCode>
                <xsl:value-of select="ns6:SubstituteUnorderedCode"/>
              </ns6:SubstituteUnorderedCode>
              <ns6:TaskId>
                <xsl:value-of select="ns6:TaskId"/>
              </ns6:TaskId>
              <ns6:TaxAmount>
                <ns9:Value xsi:nil="{ns6:TaxAmount/ns9:Value/@xsi:nil}">
                  <xsl:value-of select="ns6:TaxAmount/ns9:Value"/>
                </ns9:Value>
                <ns9:CurrencyCode xsi:nil="{ns6:TaxAmount/ns9:CurrencyCode/@xsi:nil}">
                  <xsl:value-of select="ns6:TaxAmount/ns9:CurrencyCode"/>
                </ns9:CurrencyCode>
              </ns6:TaxAmount>
              <ns6:TaxName>
                <xsl:value-of select="ns6:TaxName"/>
              </ns6:TaxName>
              <ns6:TimecardId>
                <xsl:value-of select="ns6:TimecardId"/>
              </ns6:TimecardId>
              <ns6:TimecardOvn>
                <xsl:value-of select="ns6:TimecardOvn"/>
              </ns6:TimecardOvn>
              <ns6:ToOrganizationCode>
                <xsl:value-of select="ns6:ToOrganizationCode"/>
              </ns6:ToOrganizationCode>
              <ns6:ToOrganizationId>
                <xsl:value-of select="$l_DerivedToOrgId/ns1:parameters/ns1:item[(ns1:name = $currentPO) and (ns1:msg = $currentPOLine)]/ns1:value"/>
              </ns6:ToOrganizationId>
              <ns6:TransactionDate>
                <xsl:value-of select="ns6:TransactionDate"/>
              </ns6:TransactionDate>
              <ns6:TransactionId>
                <xsl:value-of select="ns6:TransactionId"/>
              </ns6:TransactionId>
              <ns6:TransactionStatusCode>
                <xsl:value-of select="ns6:TransactionStatusCode"/>
              </ns6:TransactionStatusCode>
              <ns6:TransactionType>
                <xsl:value-of select="ns6:TransactionType"/>
              </ns6:TransactionType>
              <ns6:TransferCost>
                <xsl:value-of select="ns6:TransferCost"/>
              </ns6:TransferCost>
              <ns6:TransferCostGroupId>
                <xsl:value-of select="ns6:TransferCostGroupId"/>
              </ns6:TransferCostGroupId>
              <ns6:TransferLicensePlateNumber>
                <xsl:value-of select="ns6:TransferLicensePlateNumber"/>
              </ns6:TransferLicensePlateNumber>
              <ns6:TransferLpnId>
                <xsl:value-of select="ns6:TransferLpnId"/>
              </ns6:TransferLpnId>
              <ns6:TransferPercentage>
                <xsl:value-of select="ns6:TransferPercentage"/>
              </ns6:TransferPercentage>
              <ns6:TransportationAccountId>
                <xsl:value-of select="ns6:TransportationAccountId"/>
              </ns6:TransportationAccountId>
              <ns6:TransportationCost>
                <xsl:value-of select="ns6:TransportationCost"/>
              </ns6:TransportationCost>
              <ns6:TruckNum>
                <xsl:value-of select="ns6:TruckNum"/>
              </ns6:TruckNum>
              <ns6:UnitLandedCost>
                <xsl:value-of select="ns6:UnitLandedCost"/>
              </ns6:UnitLandedCost>
              <ns6:UnitOfMeasure>
                <xsl:value-of select="ns6:UnitOfMeasure"/>
              </ns6:UnitOfMeasure>
              <ns6:UomCode>
                <xsl:value-of select="ns6:UomCode"/>
              </ns6:UomCode>
              <ns6:UserEnteredFlag>
                <xsl:value-of select="ns6:UserEnteredFlag"/>
              </ns6:UserEnteredFlag>
              <ns6:UseMtlLot>
                <xsl:value-of select="ns6:UseMtlLot"/>
              </ns6:UseMtlLot>
              <ns6:UseMtlSerial>
                <xsl:value-of select="ns6:UseMtlSerial"/>
              </ns6:UseMtlSerial>
              <ns6:UssglTransactionCode>
                <xsl:value-of select="ns6:UssglTransactionCode"/>
              </ns6:UssglTransactionCode>
              <ns6:ValidationFlag>
                <xsl:value-of select="ns6:ValidationFlag"/>
              </ns6:ValidationFlag>
              <ns6:VendorCumShippedQty>
                <xsl:value-of select="ns6:VendorCumShippedQty"/>
              </ns6:VendorCumShippedQty>
              <ns6:VendorId>
                <xsl:value-of select="ns6:VendorId"/>
              </ns6:VendorId>
              <ns6:VendorItemNum>
                <xsl:value-of select="ns6:VendorItemNum"/>
              </ns6:VendorItemNum>
              <ns6:VendorLotNum>
                <xsl:value-of select="ns6:VendorLotNum"/>
              </ns6:VendorLotNum>
              <ns6:VendorName>
                <xsl:value-of select="ns6:VendorName"/>
              </ns6:VendorName>
              <ns6:VendorNum>
                <xsl:value-of select="ns6:VendorNum"/>
              </ns6:VendorNum>
              <ns6:VendorSiteCode>
                <xsl:value-of select="ns6:VendorSiteCode"/>
              </ns6:VendorSiteCode>
              <ns6:VendorSiteId>
                <xsl:value-of select="ns6:VendorSiteId"/>
              </ns6:VendorSiteId>
              <ns6:WaybillAirbillNum>
                <xsl:value-of select="ns6:WaybillAirbillNum"/>
              </ns6:WaybillAirbillNum>
              <ns6:WipEntityId>
                <xsl:value-of select="ns6:WipEntityId"/>
              </ns6:WipEntityId>
              <ns6:WipEntityName>
                <xsl:value-of select="ns6:WipEntityName"/>
              </ns6:WipEntityName>
              <ns6:WipLineCode>
                <xsl:value-of select="ns6:WipLineCode"/>
              </ns6:WipLineCode>
              <ns6:WipLineId>
                <xsl:value-of select="ns6:WipLineId"/>
              </ns6:WipLineId>
              <ns6:WipOperationSeqNum>
                <xsl:value-of select="ns6:WipOperationSeqNum"/>
              </ns6:WipOperationSeqNum>
              <ns6:WipRepetitiveScheduleId>
                <xsl:value-of select="ns6:WipRepetitiveScheduleId"/>
              </ns6:WipRepetitiveScheduleId>
              <ns6:WipResourceSeqNum>
                <xsl:value-of select="ns6:WipResourceSeqNum"/>
              </ns6:WipResourceSeqNum>
              <ns6:XmlDocumentId>
                <xsl:value-of select="ns6:XmlDocumentId"/>
              </ns6:XmlDocumentId>
              <ns6:ListOfLotTxns xsi:nil="{ns6:ListOfLotTxns/@xsi:nil}">
                <xsl:for-each select="ns6:ListOfLotTxns/ns6:LotTransaction">
                  <ns6:LotTransaction>
                    <ns6:Age>
                      <xsl:value-of select="ns6:Age"/>
                    </ns6:Age>
                    <ns6:BestByDate>
                      <xsl:value-of select="ns6:BestByDate"/>
                    </ns6:BestByDate>
                    <ns6:ChangeDate>
                      <xsl:value-of select="ns6:ChangeDate"/>
                    </ns6:ChangeDate>
                    <ns6:Color>
                      <xsl:value-of select="ns6:Color"/>
                    </ns6:Color>
                    <ns6:CountryOfOrigin>
                      <xsl:value-of select="ns6:CountryOfOrigin"/>
                    </ns6:CountryOfOrigin>
                    <ns6:CurlWrinkleFold>
                      <xsl:value-of select="ns6:CurlWrinkleFold"/>
                    </ns6:CurlWrinkleFold>
                    <ns6:DateCode>
                      <xsl:value-of select="ns6:DateCode"/>
                    </ns6:DateCode>
                    <ns6:Description>
                      <xsl:value-of select="ns6:Description"/>
                    </ns6:Description>
                    <ns6:ErrorCode>
                      <xsl:value-of select="ns6:ErrorCode"/>
                    </ns6:ErrorCode>
                    <ns6:ExpirationActionCode>
                      <xsl:value-of select="ns6:ExpirationActionCode"/>
                    </ns6:ExpirationActionCode>
                    <ns6:ExpirationActionDate>
                      <xsl:value-of select="ns6:ExpirationActionDate"/>
                    </ns6:ExpirationActionDate>
                    <ns6:GradeCode>
                      <xsl:value-of select="ns6:GradeCode"/>
                    </ns6:GradeCode>
                    <ns6:HoldDate>
                      <xsl:value-of select="ns6:HoldDate"/>
                    </ns6:HoldDate>
                    <ns6:ItemSize>
                      <xsl:value-of select="ns6:ItemSize"/>
                    </ns6:ItemSize>
                    <ns6:KillDate>
                      <xsl:value-of select="ns6:KillDate"/>
                    </ns6:KillDate>
                    <ns6:Length>
                      <xsl:value-of select="ns6:Length"/>
                    </ns6:Length>
                    <ns6:LengthUom>
                      <ns5:Code xsi:nil="{ns6:LengthUom/ns5:Code/@xsi:nil}">
                        <xsl:value-of select="ns6:LengthUom/ns5:Code"/>
                      </ns5:Code>
                      <ns5:Description xsi:nil="{ns6:LengthUom/ns5:Description/@xsi:nil}">
                        <xsl:value-of select="ns6:LengthUom/ns5:Description"/>
                      </ns5:Description>
                    </ns6:LengthUom>
                    <ns6:LotAttributeCategory>
                      <xsl:value-of select="ns6:LotAttributeCategory"/>
                    </ns6:LotAttributeCategory>
                    <ns6:LotExpirationDate>
                      <xsl:value-of select="ns6:LotExpirationDate"/>
                    </ns6:LotExpirationDate>
                    <ns6:LotNumber>
                      <xsl:value-of select="ns6:LotNumber"/>
                    </ns6:LotNumber>
                    <ns6:MaturityDate>
                      <xsl:value-of select="ns6:MaturityDate"/>
                    </ns6:MaturityDate>
                    <ns6:OriginationDate>
                      <xsl:value-of select="ns6:OriginationDate"/>
                    </ns6:OriginationDate>
                    <ns6:OriginationType>
                      <xsl:value-of select="ns6:OriginationType"/>
                    </ns6:OriginationType>
                    <ns6:ParentItemId>
                      <xsl:value-of select="ns6:ParentItemId"/>
                    </ns6:ParentItemId>
                    <ns6:ParentLotNumber>
                      <xsl:value-of select="ns6:ParentLotNumber"/>
                    </ns6:ParentLotNumber>
                    <ns6:ParentObjectId>
                      <xsl:value-of select="ns6:ParentObjectId"/>
                    </ns6:ParentObjectId>
                    <ns6:ParentObjectId2>
                      <xsl:value-of select="ns6:ParentObjectId2"/>
                    </ns6:ParentObjectId2>
                    <ns6:ParentObjectNumber>
                      <xsl:value-of select="ns6:ParentObjectNumber"/>
                    </ns6:ParentObjectNumber>
                    <ns6:ParentObjectNumber2>
                      <xsl:value-of select="ns6:ParentObjectNumber2"/>
                    </ns6:ParentObjectNumber2>
                    <ns6:ParentObjectType>
                      <xsl:value-of select="ns6:ParentObjectType"/>
                    </ns6:ParentObjectType>
                    <ns6:ParentObjectType2>
                      <xsl:value-of select="ns6:ParentObjectType2"/>
                    </ns6:ParentObjectType2>
                    <ns6:PlaceOfOrigin>
                      <xsl:value-of select="ns6:PlaceOfOrigin"/>
                    </ns6:PlaceOfOrigin>
                    <ns6:PrimaryQuantity>
                      <xsl:value-of select="ns6:PrimaryQuantity"/>
                    </ns6:PrimaryQuantity>
                    <ns6:ProcessFlag>
                      <xsl:value-of select="ns6:ProcessFlag"/>
                    </ns6:ProcessFlag>
                    <ns6:ProductCode>
                      <xsl:value-of select="ns6:ProductCode"/>
                    </ns6:ProductCode>
                    <ns6:ProductTransactionId>
                      <xsl:value-of select="ns6:ProductTransactionId"/>
                    </ns6:ProductTransactionId>
                    <ns6:ProgramApplicationId>
                      <xsl:value-of select="ns6:ProgramApplicationId"/>
                    </ns6:ProgramApplicationId>
                    <ns6:ProgramId>
                      <xsl:value-of select="ns6:ProgramId"/>
                    </ns6:ProgramId>
                    <ns6:ProgramUpdateDate>
                      <xsl:value-of select="ns6:ProgramUpdateDate"/>
                    </ns6:ProgramUpdateDate>
                    <ns6:ReasonCode>
                      <xsl:value-of select="ns6:ReasonCode"/>
                    </ns6:ReasonCode>
                    <ns6:ReasonId>
                      <xsl:value-of select="ns6:ReasonId"/>
                    </ns6:ReasonId>
                    <ns6:RecycledContent>
                      <xsl:value-of select="ns6:RecycledContent"/>
                    </ns6:RecycledContent>
                    <ns6:RequestId>
                      <xsl:value-of select="ns6:RequestId"/>
                    </ns6:RequestId>
                    <ns6:RetestDate>
                      <xsl:value-of select="ns6:RetestDate"/>
                    </ns6:RetestDate>
                    <ns6:SecondaryTransactionQuantity>
                      <xsl:value-of select="ns6:SecondaryTransactionQuantity"/>
                    </ns6:SecondaryTransactionQuantity>
                    <ns6:SerialTransactionTempId>
                      <xsl:value-of select="ns6:SerialTransactionTempId"/>
                    </ns6:SerialTransactionTempId>
                    <ns6:SourceCode>
                      <xsl:value-of select="ns6:SourceCode"/>
                    </ns6:SourceCode>
                    <ns6:SourceLineId>
                      <xsl:value-of select="ns6:SourceLineId"/>
                    </ns6:SourceLineId>
                    <ns6:StatusId>
                      <xsl:value-of select="ns6:StatusId"/>
                    </ns6:StatusId>
                    <ns6:SublotNum>
                      <xsl:value-of select="ns6:SublotNum"/>
                    </ns6:SublotNum>
                    <ns6:SupplierLotNumber>
                      <xsl:value-of select="ns6:SupplierLotNumber"/>
                    </ns6:SupplierLotNumber>
                    <ns6:TerritoryCode>
                      <xsl:value-of select="ns6:TerritoryCode"/>
                    </ns6:TerritoryCode>
                    <ns6:Thickness>
                      <xsl:value-of select="ns6:Thickness"/>
                    </ns6:Thickness>
                    <ns6:ThicknessUom>
                      <ns5:Code xsi:nil="{ns6:ThicknessUom/ns5:Code/@xsi:nil}">
                        <xsl:value-of select="ns6:ThicknessUom/ns5:Code"/>
                      </ns5:Code>
                      <ns5:Description xsi:nil="{ns6:ThicknessUom/ns5:Description/@xsi:nil}">
                        <xsl:value-of select="ns6:ThicknessUom/ns5:Description"/>
                      </ns5:Description>
                    </ns6:ThicknessUom>
                    <ns6:TransactionInterfaceId>
                      <xsl:value-of select="ns6:TransactionInterfaceId"/>
                    </ns6:TransactionInterfaceId>
                    <ns6:TransactionQuantity>
                      <xsl:value-of select="ns6:TransactionQuantity"/>
                    </ns6:TransactionQuantity>
                    <ns6:VendorId>
                      <xsl:value-of select="ns6:VendorId"/>
                    </ns6:VendorId>
                    <ns6:VendorName>
                      <xsl:value-of select="ns6:VendorName"/>
                    </ns6:VendorName>
                    <ns6:Volume>
                      <xsl:value-of select="ns6:Volume"/>
                    </ns6:Volume>
                    <ns6:VolumeUom>
                      <ns5:Code xsi:nil="{ns6:VolumeUom/ns5:Code/@xsi:nil}">
                        <xsl:value-of select="ns6:VolumeUom/ns5:Code"/>
                      </ns5:Code>
                      <ns5:Description xsi:nil="{ns6:VolumeUom/ns5:Description/@xsi:nil}">
                        <xsl:value-of select="ns6:VolumeUom/ns5:Description"/>
                      </ns5:Description>
                    </ns6:VolumeUom>
                    <ns6:Width>
                      <xsl:value-of select="ns6:Width"/>
                    </ns6:Width>
                    <ns6:WidthUom>
                      <ns5:Code xsi:nil="{ns6:WidthUom/ns5:Code/@xsi:nil}">
                        <xsl:value-of select="ns6:WidthUom/ns5:Code"/>
                      </ns5:Code>
                      <ns5:Description xsi:nil="{ns6:WidthUom/ns5:Description/@xsi:nil}">
                        <xsl:value-of select="ns6:WidthUom/ns5:Description"/>
                      </ns5:Description>
                    </ns6:WidthUom>
               
                  
                  </ns6:LotTransaction>
                </xsl:for-each>
              </ns6:ListOfLotTxns>
              <ns6:ListOfSerialTxns xsi:nil="{ns6:ListOfSerialTxns/@xsi:nil}">
                <xsl:for-each select="ns6:ListOfSerialTxns/ns6:SerialTransaction">
                  <ns6:SerialTransaction>
                    <ns6:CountryOfOrigin>
                      <xsl:value-of select="ns6:CountryOfOrigin"/>
                    </ns6:CountryOfOrigin>
                    <ns6:CyclesSinceMark>
                      <xsl:value-of select="ns6:CyclesSinceMark"/>
                    </ns6:CyclesSinceMark>
                    <ns6:CyclesSinceNew>
                      <xsl:value-of select="ns6:CyclesSinceNew"/>
                    </ns6:CyclesSinceNew>
                    <ns6:CyclesSinceOverhaul>
                      <xsl:value-of select="ns6:CyclesSinceOverhaul"/>
                    </ns6:CyclesSinceOverhaul>
                    <ns6:CyclesSinceRepair>
                      <xsl:value-of select="ns6:CyclesSinceRepair"/>
                    </ns6:CyclesSinceRepair>
                    <ns6:CyclesSinceVisit>
                      <xsl:value-of select="ns6:CyclesSinceVisit"/>
                    </ns6:CyclesSinceVisit>
                    <ns6:ErrorCode>
                      <xsl:value-of select="ns6:ErrorCode"/>
                    </ns6:ErrorCode>
                    <ns6:FmSerialNumber>
                      <xsl:value-of select="ns6:FmSerialNumber"/>
                    </ns6:FmSerialNumber>
                    <ns6:NumberOfRepairs>
                      <xsl:value-of select="ns6:NumberOfRepairs"/>
                    </ns6:NumberOfRepairs>
                    <ns6:OriginationDate>
                      <xsl:value-of select="ns6:OriginationDate"/>
                    </ns6:OriginationDate>
                    <ns6:ParentItemId>
                      <xsl:value-of select="ns6:ParentItemId"/>
                    </ns6:ParentItemId>
                    <ns6:ParentObjectId>
                      <xsl:value-of select="ns6:ParentObjectId"/>
                    </ns6:ParentObjectId>
                    <ns6:ParentObjectId2>
                      <xsl:value-of select="ns6:ParentObjectId2"/>
                    </ns6:ParentObjectId2>
                    <ns6:ParentObjectNumber>
                      <xsl:value-of select="ns6:ParentObjectNumber"/>
                    </ns6:ParentObjectNumber>
                    <ns6:ParentObjectNumber2>
                      <xsl:value-of select="ns6:ParentObjectNumber2"/>
                    </ns6:ParentObjectNumber2>
                    <ns6:ParentObjectType>
                      <xsl:value-of select="ns6:ParentObjectType"/>
                    </ns6:ParentObjectType>
                    <ns6:ParentObjectType2>
                      <xsl:value-of select="ns6:ParentObjectType2"/>
                    </ns6:ParentObjectType2>
                    <ns6:ParentSerialNumber>
                      <xsl:value-of select="ns6:ParentSerialNumber"/>
                    </ns6:ParentSerialNumber>
                    <ns6:ProcessFlag>
                      <xsl:value-of select="ns6:ProcessFlag"/>
                    </ns6:ProcessFlag>
                    <ns6:ProductCode>
                      <xsl:value-of select="ns6:ProductCode"/>
                    </ns6:ProductCode>
                    <ns6:ProductTransactionId>
                      <xsl:value-of select="ns6:ProductTransactionId"/>
                    </ns6:ProductTransactionId>
                    <ns6:ProgramApplicationId>
                      <xsl:value-of select="ns6:ProgramApplicationId"/>
                    </ns6:ProgramApplicationId>
                    <ns6:ProgramId>
                      <xsl:value-of select="ns6:ProgramId"/>
                    </ns6:ProgramId>
                    <ns6:ProgramUpdateDate>
                      <xsl:value-of select="ns6:ProgramUpdateDate"/>
                    </ns6:ProgramUpdateDate>
                    <ns6:RequestId>
                      <xsl:value-of select="ns6:RequestId"/>
                    </ns6:RequestId>
                    <ns6:SerialAttributeCategory>
                      <xsl:value-of select="ns6:SerialAttributeCategory"/>
                    </ns6:SerialAttributeCategory>
                    <ns6:SourceCode>
                      <xsl:value-of select="ns6:SourceCode"/>
                    </ns6:SourceCode>
                    <ns6:SourceLineId>
                      <xsl:value-of select="ns6:SourceLineId"/>
                    </ns6:SourceLineId>
                    <ns6:StatusId>
                      <xsl:value-of select="ns6:StatusId"/>
                    </ns6:StatusId>
                    <ns6:StatusName>
                      <xsl:value-of select="ns6:StatusName"/>
                    </ns6:StatusName>
                    <ns6:TerritoryCode>
                      <xsl:value-of select="ns6:TerritoryCode"/>
                    </ns6:TerritoryCode>
                    <ns6:TimeSinceMark>
                      <xsl:value-of select="ns6:TimeSinceMark"/>
                    </ns6:TimeSinceMark>
                    <ns6:TimeSinceNew>
                      <xsl:value-of select="ns6:TimeSinceNew"/>
                    </ns6:TimeSinceNew>
                    <ns6:TimeSinceOverhaul>
                      <xsl:value-of select="ns6:TimeSinceOverhaul"/>
                    </ns6:TimeSinceOverhaul>
                    <ns6:TimeSinceRepair>
                      <xsl:value-of select="ns6:TimeSinceRepair"/>
                    </ns6:TimeSinceRepair>
                    <ns6:TimeSinceVisit>
                      <xsl:value-of select="ns6:TimeSinceVisit"/>
                    </ns6:TimeSinceVisit>
                    <ns6:ToSerialNumber>
                      <xsl:value-of select="ns6:ToSerialNumber"/>
                    </ns6:ToSerialNumber>
                    <ns6:TransactionInterfaceId>
                      <xsl:value-of select="ns6:TransactionInterfaceId"/>
                    </ns6:TransactionInterfaceId>
                    <ns6:VendorLotNumber>
                      <xsl:value-of select="ns6:VendorLotNumber"/>
                    </ns6:VendorLotNumber>
                    <ns6:VendorSerialNumber>
                      <xsl:value-of select="ns6:VendorSerialNumber"/>
                    </ns6:VendorSerialNumber>
                    <ns6:WhoColumns>
                      <ns8:CreatedBy xsi:nil="{ns6:WhoColumns/ns8:CreatedBy/@xsi:nil}">
                        <xsl:value-of select="ns6:WhoColumns/ns8:CreatedBy"/>
                      </ns8:CreatedBy>
                      <ns8:CreatedByName xsi:nil="{ns6:WhoColumns/ns8:CreatedByName/@xsi:nil}">
                        <xsl:value-of select="ns6:WhoColumns/ns8:CreatedByName"/>
                      </ns8:CreatedByName>
                      <ns8:CreationDate xsi:nil="{ns6:WhoColumns/ns8:CreationDate/@xsi:nil}">
                        <xsl:value-of select="ns6:WhoColumns/ns8:CreationDate"/>
                      </ns8:CreationDate>
                      <ns8:LastUpdatedBy xsi:nil="{ns6:WhoColumns/ns8:LastUpdatedBy/@xsi:nil}">
                        <xsl:value-of select="ns6:WhoColumns/ns8:LastUpdatedBy"/>
                      </ns8:LastUpdatedBy>
                      <ns8:LastUpdatedDate>
                        <xsl:value-of select="ns6:WhoColumns/ns8:LastUpdatedDate"/>
                      </ns8:LastUpdatedDate>
                      <ns8:LastUpdatedByName xsi:nil="{ns6:WhoColumns/ns8:LastUpdatedByName/@xsi:nil}">
                        <xsl:value-of select="ns6:WhoColumns/ns8:LastUpdatedByName"/>
                      </ns8:LastUpdatedByName>
                      <ns8:LastUpdatedLogin xsi:nil="{ns6:WhoColumns/ns8:LastUpdatedLogin/@xsi:nil}">
                        <xsl:value-of select="ns6:WhoColumns/ns8:LastUpdatedLogin"/>
                      </ns8:LastUpdatedLogin>
                      <ns8:LastUpdatedLoginName xsi:nil="{ns6:WhoColumns/ns8:LastUpdatedLoginName/@xsi:nil}">
                        <xsl:value-of select="ns6:WhoColumns/ns8:LastUpdatedLoginName"/>
                      </ns8:LastUpdatedLoginName>
                    </ns6:WhoColumns>
                    <ns6:SerialsDFF>
                      <ns14:AttributeCategory xsi:nil="{ns6:SerialsDFF/ns14:AttributeCategory/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:AttributeCategory"/>
                      </ns14:AttributeCategory>
                      <ns14:Attribute1 xsi:nil="{ns6:SerialsDFF/ns14:Attribute1/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute1"/>
                      </ns14:Attribute1>
                      <ns14:Attribute2 xsi:nil="{ns6:SerialsDFF/ns14:Attribute2/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute2"/>
                      </ns14:Attribute2>
                      <ns14:Attribute3 xsi:nil="{ns6:SerialsDFF/ns14:Attribute3/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute3"/>
                      </ns14:Attribute3>
                      <ns14:Attribute4 xsi:nil="{ns6:SerialsDFF/ns14:Attribute4/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute4"/>
                      </ns14:Attribute4>
                      <ns14:Attribute5 xsi:nil="{ns6:SerialsDFF/ns14:Attribute5/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute5"/>
                      </ns14:Attribute5>
                      <ns14:Attribute6 xsi:nil="{ns6:SerialsDFF/ns14:Attribute6/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute6"/>
                      </ns14:Attribute6>
                      <ns14:Attribute7 xsi:nil="{ns6:SerialsDFF/ns14:Attribute7/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute7"/>
                      </ns14:Attribute7>
                      <ns14:Attribute8 xsi:nil="{ns6:SerialsDFF/ns14:Attribute8/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute8"/>
                      </ns14:Attribute8>
                      <ns14:Attribute9 xsi:nil="{ns6:SerialsDFF/ns14:Attribute9/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute9"/>
                      </ns14:Attribute9>
                      <ns14:Attribute10 xsi:nil="{ns6:SerialsDFF/ns14:Attribute10/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute10"/>
                      </ns14:Attribute10>
                      <ns14:Attribute11 xsi:nil="{ns6:SerialsDFF/ns14:Attribute11/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute11"/>
                      </ns14:Attribute11>
                      <ns14:Attribute12 xsi:nil="{ns6:SerialsDFF/ns14:Attribute12/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute12"/>
                      </ns14:Attribute12>
                      <ns14:Attribute13 xsi:nil="{ns6:SerialsDFF/ns14:Attribute13/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute13"/>
                      </ns14:Attribute13>
                      <ns14:Attribute14 xsi:nil="{ns6:SerialsDFF/ns14:Attribute14/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute14"/>
                      </ns14:Attribute14>
                      <ns14:Attribute15 xsi:nil="{ns6:SerialsDFF/ns14:Attribute15/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute15"/>
                      </ns14:Attribute15>
                      <ns14:Attribute16 xsi:nil="{ns6:SerialsDFF/ns14:Attribute16/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute16"/>
                      </ns14:Attribute16>
                      <ns14:Attribute17 xsi:nil="{ns6:SerialsDFF/ns14:Attribute17/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute17"/>
                      </ns14:Attribute17>
                      <ns14:Attribute18 xsi:nil="{ns6:SerialsDFF/ns14:Attribute18/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute18"/>
                      </ns14:Attribute18>
                      <ns14:Attribute19 xsi:nil="{ns6:SerialsDFF/ns14:Attribute19/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute19"/>
                      </ns14:Attribute19>
                      <ns14:Attribute20 xsi:nil="{ns6:SerialsDFF/ns14:Attribute20/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute20"/>
                      </ns14:Attribute20>
                      <ns14:Attribute21 xsi:nil="{ns6:SerialsDFF/ns14:Attribute21/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute21"/>
                      </ns14:Attribute21>
                      <ns14:Attribute22 xsi:nil="{ns6:SerialsDFF/ns14:Attribute22/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute22"/>
                      </ns14:Attribute22>
                      <ns14:Attribute23 xsi:nil="{ns6:SerialsDFF/ns14:Attribute23/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute23"/>
                      </ns14:Attribute23>
                      <ns14:Attribute24 xsi:nil="{ns6:SerialsDFF/ns14:Attribute24/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute24"/>
                      </ns14:Attribute24>
                      <ns14:Attribute25 xsi:nil="{ns6:SerialsDFF/ns14:Attribute25/@xsi:nil}">
                        <xsl:value-of select="ns6:SerialsDFF/ns14:Attribute25"/>
                      </ns14:Attribute25>
                    </ns6:SerialsDFF>
                    <ns6:CAttrDFF>
                      <ns14:AttributeCategory xsi:nil="{ns6:CAttrDFF/ns14:AttributeCategory/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:AttributeCategory"/>
                      </ns14:AttributeCategory>
                      <ns14:Attribute1 xsi:nil="{ns6:CAttrDFF/ns14:Attribute1/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute1"/>
                      </ns14:Attribute1>
                      <ns14:Attribute2 xsi:nil="{ns6:CAttrDFF/ns14:Attribute2/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute2"/>
                      </ns14:Attribute2>
                      <ns14:Attribute3 xsi:nil="{ns6:CAttrDFF/ns14:Attribute3/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute3"/>
                      </ns14:Attribute3>
                      <ns14:Attribute4 xsi:nil="{ns6:CAttrDFF/ns14:Attribute4/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute4"/>
                      </ns14:Attribute4>
                      <ns14:Attribute5 xsi:nil="{ns6:CAttrDFF/ns14:Attribute5/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute5"/>
                      </ns14:Attribute5>
                      <ns14:Attribute6 xsi:nil="{ns6:CAttrDFF/ns14:Attribute6/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute6"/>
                      </ns14:Attribute6>
                      <ns14:Attribute7 xsi:nil="{ns6:CAttrDFF/ns14:Attribute7/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute7"/>
                      </ns14:Attribute7>
                      <ns14:Attribute8 xsi:nil="{ns6:CAttrDFF/ns14:Attribute8/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute8"/>
                      </ns14:Attribute8>
                      <ns14:Attribute9 xsi:nil="{ns6:CAttrDFF/ns14:Attribute9/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute9"/>
                      </ns14:Attribute9>
                      <ns14:Attribute10 xsi:nil="{ns6:CAttrDFF/ns14:Attribute10/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute10"/>
                      </ns14:Attribute10>
                      <ns14:Attribute11 xsi:nil="{ns6:CAttrDFF/ns14:Attribute11/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute11"/>
                      </ns14:Attribute11>
                      <ns14:Attribute12 xsi:nil="{ns6:CAttrDFF/ns14:Attribute12/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute12"/>
                      </ns14:Attribute12>
                      <ns14:Attribute13 xsi:nil="{ns6:CAttrDFF/ns14:Attribute13/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute13"/>
                      </ns14:Attribute13>
                      <ns14:Attribute14 xsi:nil="{ns6:CAttrDFF/ns14:Attribute14/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute14"/>
                      </ns14:Attribute14>
                      <ns14:Attribute15 xsi:nil="{ns6:CAttrDFF/ns14:Attribute15/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute15"/>
                      </ns14:Attribute15>
                      <ns14:Attribute16 xsi:nil="{ns6:CAttrDFF/ns14:Attribute16/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute16"/>
                      </ns14:Attribute16>
                      <ns14:Attribute17 xsi:nil="{ns6:CAttrDFF/ns14:Attribute17/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute17"/>
                      </ns14:Attribute17>
                      <ns14:Attribute18 xsi:nil="{ns6:CAttrDFF/ns14:Attribute18/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute18"/>
                      </ns14:Attribute18>
                      <ns14:Attribute19 xsi:nil="{ns6:CAttrDFF/ns14:Attribute19/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute19"/>
                      </ns14:Attribute19>
                      <ns14:Attribute20 xsi:nil="{ns6:CAttrDFF/ns14:Attribute20/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute20"/>
                      </ns14:Attribute20>
                      <ns14:Attribute21 xsi:nil="{ns6:CAttrDFF/ns14:Attribute21/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute21"/>
                      </ns14:Attribute21>
                      <ns14:Attribute22 xsi:nil="{ns6:CAttrDFF/ns14:Attribute22/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute22"/>
                      </ns14:Attribute22>
                      <ns14:Attribute23 xsi:nil="{ns6:CAttrDFF/ns14:Attribute23/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute23"/>
                      </ns14:Attribute23>
                      <ns14:Attribute24 xsi:nil="{ns6:CAttrDFF/ns14:Attribute24/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute24"/>
                      </ns14:Attribute24>
                      <ns14:Attribute25 xsi:nil="{ns6:CAttrDFF/ns14:Attribute25/@xsi:nil}">
                        <xsl:value-of select="ns6:CAttrDFF/ns14:Attribute25"/>
                      </ns14:Attribute25>
                    </ns6:CAttrDFF>
                    <ns6:DAttrDFF>
                      <ns14:AttributeCategory xsi:nil="{ns6:DAttrDFF/ns14:AttributeCategory/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:AttributeCategory"/>
                      </ns14:AttributeCategory>
                      <ns14:Attribute1 xsi:nil="{ns6:DAttrDFF/ns14:Attribute1/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute1"/>
                      </ns14:Attribute1>
                      <ns14:Attribute2 xsi:nil="{ns6:DAttrDFF/ns14:Attribute2/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute2"/>
                      </ns14:Attribute2>
                      <ns14:Attribute3 xsi:nil="{ns6:DAttrDFF/ns14:Attribute3/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute3"/>
                      </ns14:Attribute3>
                      <ns14:Attribute4 xsi:nil="{ns6:DAttrDFF/ns14:Attribute4/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute4"/>
                      </ns14:Attribute4>
                      <ns14:Attribute5 xsi:nil="{ns6:DAttrDFF/ns14:Attribute5/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute5"/>
                      </ns14:Attribute5>
                      <ns14:Attribute6 xsi:nil="{ns6:DAttrDFF/ns14:Attribute6/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute6"/>
                      </ns14:Attribute6>
                      <ns14:Attribute7 xsi:nil="{ns6:DAttrDFF/ns14:Attribute7/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute7"/>
                      </ns14:Attribute7>
                      <ns14:Attribute8 xsi:nil="{ns6:DAttrDFF/ns14:Attribute8/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute8"/>
                      </ns14:Attribute8>
                      <ns14:Attribute9 xsi:nil="{ns6:DAttrDFF/ns14:Attribute9/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute9"/>
                      </ns14:Attribute9>
                      <ns14:Attribute10 xsi:nil="{ns6:DAttrDFF/ns14:Attribute10/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute10"/>
                      </ns14:Attribute10>
                      <ns14:Attribute11 xsi:nil="{ns6:DAttrDFF/ns14:Attribute11/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute11"/>
                      </ns14:Attribute11>
                      <ns14:Attribute12 xsi:nil="{ns6:DAttrDFF/ns14:Attribute12/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute12"/>
                      </ns14:Attribute12>
                      <ns14:Attribute13 xsi:nil="{ns6:DAttrDFF/ns14:Attribute13/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute13"/>
                      </ns14:Attribute13>
                      <ns14:Attribute14 xsi:nil="{ns6:DAttrDFF/ns14:Attribute14/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute14"/>
                      </ns14:Attribute14>
                      <ns14:Attribute15 xsi:nil="{ns6:DAttrDFF/ns14:Attribute15/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute15"/>
                      </ns14:Attribute15>
                      <ns14:Attribute16 xsi:nil="{ns6:DAttrDFF/ns14:Attribute16/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute16"/>
                      </ns14:Attribute16>
                      <ns14:Attribute17 xsi:nil="{ns6:DAttrDFF/ns14:Attribute17/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute17"/>
                      </ns14:Attribute17>
                      <ns14:Attribute18 xsi:nil="{ns6:DAttrDFF/ns14:Attribute18/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute18"/>
                      </ns14:Attribute18>
                      <ns14:Attribute19 xsi:nil="{ns6:DAttrDFF/ns14:Attribute19/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute19"/>
                      </ns14:Attribute19>
                      <ns14:Attribute20 xsi:nil="{ns6:DAttrDFF/ns14:Attribute20/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute20"/>
                      </ns14:Attribute20>
                      <ns14:Attribute21 xsi:nil="{ns6:DAttrDFF/ns14:Attribute21/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute21"/>
                      </ns14:Attribute21>
                      <ns14:Attribute22 xsi:nil="{ns6:DAttrDFF/ns14:Attribute22/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute22"/>
                      </ns14:Attribute22>
                      <ns14:Attribute23 xsi:nil="{ns6:DAttrDFF/ns14:Attribute23/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute23"/>
                      </ns14:Attribute23>
                      <ns14:Attribute24 xsi:nil="{ns6:DAttrDFF/ns14:Attribute24/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute24"/>
                      </ns14:Attribute24>
                      <ns14:Attribute25 xsi:nil="{ns6:DAttrDFF/ns14:Attribute25/@xsi:nil}">
                        <xsl:value-of select="ns6:DAttrDFF/ns14:Attribute25"/>
                      </ns14:Attribute25>
                    </ns6:DAttrDFF>
                    <ns6:NAttrDFF>
                      <ns14:AttributeCategory xsi:nil="{ns6:NAttrDFF/ns14:AttributeCategory/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:AttributeCategory"/>
                      </ns14:AttributeCategory>
                      <ns14:Attribute1 xsi:nil="{ns6:NAttrDFF/ns14:Attribute1/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute1"/>
                      </ns14:Attribute1>
                      <ns14:Attribute2 xsi:nil="{ns6:NAttrDFF/ns14:Attribute2/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute2"/>
                      </ns14:Attribute2>
                      <ns14:Attribute3 xsi:nil="{ns6:NAttrDFF/ns14:Attribute3/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute3"/>
                      </ns14:Attribute3>
                      <ns14:Attribute4 xsi:nil="{ns6:NAttrDFF/ns14:Attribute4/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute4"/>
                      </ns14:Attribute4>
                      <ns14:Attribute5 xsi:nil="{ns6:NAttrDFF/ns14:Attribute5/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute5"/>
                      </ns14:Attribute5>
                      <ns14:Attribute6 xsi:nil="{ns6:NAttrDFF/ns14:Attribute6/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute6"/>
                      </ns14:Attribute6>
                      <ns14:Attribute7 xsi:nil="{ns6:NAttrDFF/ns14:Attribute7/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute7"/>
                      </ns14:Attribute7>
                      <ns14:Attribute8 xsi:nil="{ns6:NAttrDFF/ns14:Attribute8/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute8"/>
                      </ns14:Attribute8>
                      <ns14:Attribute9 xsi:nil="{ns6:NAttrDFF/ns14:Attribute9/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute9"/>
                      </ns14:Attribute9>
                      <ns14:Attribute10 xsi:nil="{ns6:NAttrDFF/ns14:Attribute10/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute10"/>
                      </ns14:Attribute10>
                      <ns14:Attribute11 xsi:nil="{ns6:NAttrDFF/ns14:Attribute11/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute11"/>
                      </ns14:Attribute11>
                      <ns14:Attribute12 xsi:nil="{ns6:NAttrDFF/ns14:Attribute12/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute12"/>
                      </ns14:Attribute12>
                      <ns14:Attribute13 xsi:nil="{ns6:NAttrDFF/ns14:Attribute13/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute13"/>
                      </ns14:Attribute13>
                      <ns14:Attribute14 xsi:nil="{ns6:NAttrDFF/ns14:Attribute14/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute14"/>
                      </ns14:Attribute14>
                      <ns14:Attribute15 xsi:nil="{ns6:NAttrDFF/ns14:Attribute15/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute15"/>
                      </ns14:Attribute15>
                      <ns14:Attribute16 xsi:nil="{ns6:NAttrDFF/ns14:Attribute16/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute16"/>
                      </ns14:Attribute16>
                      <ns14:Attribute17 xsi:nil="{ns6:NAttrDFF/ns14:Attribute17/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute17"/>
                      </ns14:Attribute17>
                      <ns14:Attribute18 xsi:nil="{ns6:NAttrDFF/ns14:Attribute18/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute18"/>
                      </ns14:Attribute18>
                      <ns14:Attribute19 xsi:nil="{ns6:NAttrDFF/ns14:Attribute19/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute19"/>
                      </ns14:Attribute19>
                      <ns14:Attribute20 xsi:nil="{ns6:NAttrDFF/ns14:Attribute20/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute20"/>
                      </ns14:Attribute20>
                      <ns14:Attribute21 xsi:nil="{ns6:NAttrDFF/ns14:Attribute21/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute21"/>
                      </ns14:Attribute21>
                      <ns14:Attribute22 xsi:nil="{ns6:NAttrDFF/ns14:Attribute22/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute22"/>
                      </ns14:Attribute22>
                      <ns14:Attribute23 xsi:nil="{ns6:NAttrDFF/ns14:Attribute23/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute23"/>
                      </ns14:Attribute23>
                      <ns14:Attribute24 xsi:nil="{ns6:NAttrDFF/ns14:Attribute24/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute24"/>
                      </ns14:Attribute24>
                      <ns14:Attribute25 xsi:nil="{ns6:NAttrDFF/ns14:Attribute25/@xsi:nil}">
                        <xsl:value-of select="ns6:NAttrDFF/ns14:Attribute25"/>
                      </ns14:Attribute25>
                    </ns6:NAttrDFF>
                  </ns6:SerialTransaction>
                </xsl:for-each>
              </ns6:ListOfSerialTxns>
              <ns6:ListOfLPNContents xsi:nil="{ns6:ListOfLPNContents/@xsi:nil}">
                <xsl:for-each select="ns6:ListOfLPNContents/ns6:LPNContents">
                  <ns6:LPNContents>
                    <ns6:Age>
                      <xsl:value-of select="ns6:Age"/>
                    </ns6:Age>
                    <ns6:BestByDate>
                      <xsl:value-of select="ns6:BestByDate"/>
                    </ns6:BestByDate>
                    <ns6:ChangeDate>
                      <xsl:value-of select="ns6:ChangeDate"/>
                    </ns6:ChangeDate>
                    <ns6:Color>
                      <xsl:value-of select="ns6:Color"/>
                    </ns6:Color>
                    <ns6:CurlWrinkleFold>
                      <xsl:value-of select="ns6:CurlWrinkleFold"/>
                    </ns6:CurlWrinkleFold>
                    <ns6:DateCode>
                      <xsl:value-of select="ns6:DateCode"/>
                    </ns6:DateCode>
                    <ns6:DocumentLineNum>
                      <xsl:value-of select="ns6:DocumentLineNum"/>
                    </ns6:DocumentLineNum>
                    <ns6:DocumentNum>
                      <xsl:value-of select="ns6:DocumentNum"/>
                    </ns6:DocumentNum>
                    <ns6:ExpirationDate>
                      <xsl:value-of select="ns6:ExpirationDate"/>
                    </ns6:ExpirationDate>
                    <ns6:FromSerialNumber>
                      <xsl:value-of select="ns6:FromSerialNumber"/>
                    </ns6:FromSerialNumber>
                    <ns6:GradeCode>
                      <xsl:value-of select="ns6:GradeCode"/>
                    </ns6:GradeCode>
                    <ns6:GroupId>
                      <xsl:value-of select="ns6:GroupId"/>
                    </ns6:GroupId>
                    <ns6:InterfaceTransactionId>
                      <xsl:value-of select="ns6:InterfaceTransactionId"/>
                    </ns6:InterfaceTransactionId>
                    <ns6:ItemDescription>
                      <xsl:value-of select="ns6:ItemDescription"/>
                    </ns6:ItemDescription>
                    <ns6:ItemNum>
                      <ns12:Identifier>
                        <xsl:value-of select="ns6:ItemNum/ns12:Identifier"/>
                      </ns12:Identifier>
                      <ns12:Item>
                        <xsl:value-of select="ns6:ItemNum/ns12:Item"/>
                      </ns12:Item>
                      <ns12:Description>
                        <xsl:value-of select="ns6:ItemNum/ns12:Description"/>
                      </ns12:Description>
                      <ns12:Code>
                        <xsl:value-of select="ns6:ItemNum/ns12:Code"/>
                      </ns12:Code>
                      <ns12:ItemRevision>
                        <xsl:value-of select="ns6:ItemNum/ns12:ItemRevision"/>
                      </ns12:ItemRevision>
                      <ns12:OrgCode>
                        <xsl:value-of select="ns6:ItemNum/ns12:OrgCode"/>
                      </ns12:OrgCode>
                    </ns6:ItemNum>
                    <ns6:ItemRevision>
                      <xsl:value-of select="ns6:ItemRevision"/>
                    </ns6:ItemRevision>
                    <ns6:ItemSize>
                      <xsl:value-of select="ns6:ItemSize"/>
                    </ns6:ItemSize>
                    <ns6:KillDate>
                      <xsl:value-of select="ns6:KillDate"/>
                    </ns6:KillDate>
                    <ns6:Length>
                      <xsl:value-of select="ns6:Length"/>
                    </ns6:Length>
                    <ns6:LengthUomCode>
                      <ns5:Code xsi:nil="{ns6:LengthUomCode/ns5:Code/@xsi:nil}">
                        <xsl:value-of select="ns6:LengthUomCode/ns5:Code"/>
                      </ns5:Code>
                      <ns5:Description xsi:nil="{ns6:LengthUomCode/ns5:Description/@xsi:nil}">
                        <xsl:value-of select="ns6:LengthUomCode/ns5:Description"/>
                      </ns5:Description>
                    </ns6:LengthUomCode>
                    <ns6:LicensePlateNumber>
                      <xsl:value-of select="ns6:LicensePlateNumber"/>
                    </ns6:LicensePlateNumber>
                    <ns6:LotAttributeCategory>
                      <xsl:value-of select="ns6:LotAttributeCategory"/>
                    </ns6:LotAttributeCategory>
                    <ns6:LotNumber>
                      <xsl:value-of select="ns6:LotNumber"/>
                    </ns6:LotNumber>
                    <ns6:MaturityDate>
                      <xsl:value-of select="ns6:MaturityDate"/>
                    </ns6:MaturityDate>
                    <ns6:OriginationDate>
                      <xsl:value-of select="ns6:OriginationDate"/>
                    </ns6:OriginationDate>
                    <ns6:PlaceOfOrigin>
                      <xsl:value-of select="ns6:PlaceOfOrigin"/>
                    </ns6:PlaceOfOrigin>
                    <ns6:ProgramApplicationId>
                      <xsl:value-of select="ns6:ProgramApplicationId"/>
                    </ns6:ProgramApplicationId>
                    <ns6:ProgramId>
                      <xsl:value-of select="ns6:ProgramId"/>
                    </ns6:ProgramId>
                    <ns6:ProgramUpdateDate>
                      <xsl:value-of select="ns6:ProgramUpdateDate"/>
                    </ns6:ProgramUpdateDate>
                    <ns6:Quantity>
                      <xsl:value-of select="ns6:Quantity"/>
                    </ns6:Quantity>
                    <ns6:RecycledContent>
                      <xsl:value-of select="ns6:RecycledContent"/>
                    </ns6:RecycledContent>
                    <ns6:RequestId>
                      <xsl:value-of select="ns6:RequestId"/>
                    </ns6:RequestId>
                    <ns6:RetestDate>
                      <xsl:value-of select="ns6:RetestDate"/>
                    </ns6:RetestDate>
                    <ns6:SerialTransactionIntfId>
                      <xsl:value-of select="ns6:SerialTransactionIntfId"/>
                    </ns6:SerialTransactionIntfId>
                    <ns6:ShipmentNum>
                      <xsl:value-of select="ns6:ShipmentNum"/>
                    </ns6:ShipmentNum>
                    <ns6:ShipToOrganizationCode>
                      <xsl:value-of select="ns6:ShipToOrganizationCode"/>
                    </ns6:ShipToOrganizationCode>
                    <ns6:StatusId>
                      <xsl:value-of select="ns6:StatusId"/>
                    </ns6:StatusId>
                    <ns6:StatusName>
                      <xsl:value-of select="ns6:StatusName"/>
                    </ns6:StatusName>
                    <ns6:SupplierLotNumber>
                      <xsl:value-of select="ns6:SupplierLotNumber"/>
                    </ns6:SupplierLotNumber>
                    <ns6:TerritoryCode>
                      <xsl:value-of select="ns6:TerritoryCode"/>
                    </ns6:TerritoryCode>
                    <ns6:Thickness>
                      <xsl:value-of select="ns6:Thickness"/>
                    </ns6:Thickness>
                    <ns6:ThicknessUomCode>
                      <ns5:Code xsi:nil="{ns6:ThicknessUomCode/ns5:Code/@xsi:nil}">
                        <xsl:value-of select="ns6:ThicknessUomCode/ns5:Code"/>
                      </ns5:Code>
                      <ns5:Description xsi:nil="{ns6:ThicknessUomCode/ns5:Description/@xsi:nil}">
                        <xsl:value-of select="ns6:ThicknessUomCode/ns5:Description"/>
                      </ns5:Description>
                    </ns6:ThicknessUomCode>
                    <ns6:ToSerialNumber>
                      <xsl:value-of select="ns6:ToSerialNumber"/>
                    </ns6:ToSerialNumber>
                    <ns6:UomCode>
                      <ns5:Code xsi:nil="{ns6:UomCode/ns5:Code/@xsi:nil}">
                        <xsl:value-of select="ns6:UomCode/ns5:Code"/>
                      </ns5:Code>
                      <ns5:Description xsi:nil="{ns6:UomCode/ns5:Description/@xsi:nil}">
                        <xsl:value-of select="ns6:UomCode/ns5:Description"/>
                      </ns5:Description>
                    </ns6:UomCode>
                    <ns6:VendorItemNum>
                      <xsl:value-of select="ns6:VendorItemNum"/>
                    </ns6:VendorItemNum>
                    <ns6:Volume>
                      <xsl:value-of select="ns6:Volume"/>
                    </ns6:Volume>
                    <ns6:VolumeUomCode>
                      <ns5:Code xsi:nil="{ns6:VolumeUomCode/ns5:Code/@xsi:nil}">
                        <xsl:value-of select="ns6:VolumeUomCode/ns5:Code"/>
                      </ns5:Code>
                      <ns5:Description xsi:nil="{ns6:VolumeUomCode/ns5:Description/@xsi:nil}">
                        <xsl:value-of select="ns6:VolumeUomCode/ns5:Description"/>
                      </ns5:Description>
                    </ns6:VolumeUomCode>
                    <ns6:Width>
                      <xsl:value-of select="ns6:Width"/>
                    </ns6:Width>
                    <ns6:WidthUomCode>
                      <ns5:Code xsi:nil="{ns6:WidthUomCode/ns5:Code/@xsi:nil}">
                        <xsl:value-of select="ns6:WidthUomCode/ns5:Code"/>
                      </ns5:Code>
                      <ns5:Description xsi:nil="{ns6:WidthUomCode/ns5:Description/@xsi:nil}">
                        <xsl:value-of select="ns6:WidthUomCode/ns5:Description"/>
                      </ns5:Description>
                    </ns6:WidthUomCode>
                   
                   
             
                  </ns6:LPNContents>
                </xsl:for-each>
              </ns6:ListOfLPNContents>
            </ns6:Transaction>
          </xsl:for-each>
        </ns6:ListOfTransactions>
      </ns0:Receipt>
    </ns0:CreateReceiptRequestMessage>
  </xsl:template>
</xsl:stylesheet>
