<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0" xmlns:ns0="http://nucor.eia.com/AO/Ebiz/L2C/BundleAM/1.0"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:tns="http://nucor.eia.com"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 tns oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/jms/Manish/NUC_SubscribeBundleTestResult_JMS_ROSS_ABF/JMS_DEQ_NextGenDistributedTopic"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns7="http://nucor.eia.com/AO/Ebiz/L2C/BundleAO/1.0"
                xmlns:ns2="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0"
                xmlns:ns3="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns6="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:ns9="http://xmlns.eia.com/EO/common/Header/1.0"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns4="http://xmlns.eia.com/AO/Ebiz/D2S/QualityResultsAO/1.0"
                xmlns:ns5="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns8="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency"
                xmlns:ns10="http://xmlns.oracle.com/pcbpel/adapter/ftp/Manish/NUC_SubscribeBundleTestResults_JMS_ROSS_ABF/FTP_File_Write_Ross"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/JMS_DEQ_NextGenDistributedTopic.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryBundleByBolNoResponseMessage"
                                       namespace="http://nucor.eia.com/AO/Ebiz/L2C/BundleAM/1.0"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FTP_File_Write_Ross.wsdl"/>
        <oracle-xsl-mapper:rootElement name="Envelope" namespace="http://nucor.eia.com"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [THU AUG 18 06:11:47 CDT 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:Envelope MsgType="NShipmentData_Bar" Ver="1.0"
                  CreatedDate="{/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ConfirmDate}"
                  OpMode="P">
      <tns:SupplierInfo>
        <!--xsl:choose>
          <xsl:when test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfSupplierInfo/ns7:SupplierInfo/ns7:ID">
            <tns:MillDUNS>
              <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfSupplierInfo/ns7:SupplierInfo/ns7:ID"/>
            </tns:MillDUNS>
          </xsl:when>
          <xsl:otherwise>
            <tns:MillDUNS> </tns:MillDUNS>
          </xsl:otherwise>
        </xsl:choose-->
        <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfSupplierInfo/ns7:SupplierInfo/ns7:ID">
          <tns:MillDUNS>
            <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfSupplierInfo/ns7:SupplierInfo/ns7:ID"/>
          </tns:MillDUNS>
        </xsl:if>
        <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfSupplierInfo/ns7:SupplierInfo/ns7:Name">
          <tns:Name>
            <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfSupplierInfo/ns7:SupplierInfo/ns7:Name"/>
          </tns:Name>
        </xsl:if>
        <xsl:if test="normalize-space ( concat (/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfSupplierInfo/ns7:SupplierInfo/ns7:AddressLine1,' ', /ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfSupplierInfo/ns7:SupplierInfo/ns7:AddressLine2 ,' ', /ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfSupplierInfo/ns7:SupplierInfo/ns7:AddressLine3) )">
          <tns:Addr>
            <xsl:value-of select="concat (/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfSupplierInfo/ns7:SupplierInfo/ns7:AddressLine1,' ', /ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfSupplierInfo/ns7:SupplierInfo/ns7:AddressLine2 ,' ', /ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfSupplierInfo/ns7:SupplierInfo/ns7:AddressLine3)"/>
          </tns:Addr>
        </xsl:if>
        <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfSupplierInfo/ns7:SupplierInfo/ns7:City">
          <tns:City>
            <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfSupplierInfo/ns7:SupplierInfo/ns7:City"/>
          </tns:City>
        </xsl:if>
        <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfSupplierInfo/ns7:SupplierInfo/ns7:State">
          <tns:State>
            <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfSupplierInfo/ns7:SupplierInfo/ns7:State"/>
          </tns:State>
        </xsl:if>
        <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfSupplierInfo/ns7:SupplierInfo/ns7:Zip">
          <tns:PostalCode>
            <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfSupplierInfo/ns7:SupplierInfo/ns7:Zip"/>
          </tns:PostalCode>
        </xsl:if>
      </tns:SupplierInfo>
      <tns:CustomerInfo>
        <tns:SoldTo>
          <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:SoldTo/ns7:Name">
            <tns:Name>
              <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:SoldTo/ns7:Name"/>
            </tns:Name>
          </xsl:if>
          <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:SoldTo/ns7:ID">
            <tns:SupplierCustID>
              <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:SoldTo/ns7:ID"/>
            </tns:SupplierCustID>
          </xsl:if>
          <xsl:if test="normalize-space ( concat (/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:SoldTo/ns7:AddressLine1,' ',/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:SoldTo/ns7:AddressLine2,' ',/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:SoldTo/ns7:AddressLine3) )">
            <tns:Addr>
              <xsl:value-of select=" concat (/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:SoldTo/ns7:AddressLine1,' ',/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:SoldTo/ns7:AddressLine2,' ',/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:SoldTo/ns7:AddressLine3)"/>
            </tns:Addr>
          </xsl:if>
          <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:SoldTo/ns7:City">
            <tns:City>
              <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:SoldTo/ns7:City"/>
            </tns:City>
          </xsl:if>
          <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:SoldTo/ns7:State">
            <tns:State>
              <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:SoldTo/ns7:State"/>
            </tns:State>
          </xsl:if>
          <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:SoldTo/ns7:Zip">
            <tns:PostalCode>
              <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:SoldTo/ns7:Zip"/>
            </tns:PostalCode>
          </xsl:if>
        </tns:SoldTo>
        <tns:BillTo>
          <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:BillTo/ns7:Name">
            <tns:Name>
              <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:BillTo/ns7:Name"/>
            </tns:Name>
          </xsl:if>
          <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:BillTo/ns7:ID">
            <tns:SupplierCustID>
              <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:BillTo/ns7:ID"/>
            </tns:SupplierCustID>
          </xsl:if>
          <xsl:if test="normalize-space ( concat (/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:BillTo/ns7:AddressLine1,' ',/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:BillTo/ns7:AddressLine2,' ',/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:BillTo/ns7:AddressLine3) )">
            <tns:Addr>
              <xsl:value-of select="concat (/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:BillTo/ns7:AddressLine1,' ',/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:BillTo/ns7:AddressLine2,' ',/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:BillTo/ns7:AddressLine3)"/>
            </tns:Addr>
          </xsl:if>
          <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:BillTo/ns7:City">
            <tns:City>
              <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:BillTo/ns7:City"/>
            </tns:City>
          </xsl:if>
          <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:BillTo/ns7:State">
            <tns:State>
              <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:BillTo/ns7:State"/>
            </tns:State>
          </xsl:if>
          <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:BillTo/ns7:Zip">
            <tns:PostalCode>
              <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfCustomerInfo/ns7:CustomerInfo/ns7:BillTo/ns7:Zip"/>
            </tns:PostalCode>
          </xsl:if>
        </tns:BillTo>
      </tns:CustomerInfo>
      <tns:FreightInfo>
        <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ShipMode">
          <tns:ShipMode>
            <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ShipMode"/>
          </tns:ShipMode>
        </xsl:if>
        <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ShipDate">
          <tns:ShipDate>
            <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ShipDate"/>
          </tns:ShipDate>
        </xsl:if>
        <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:FreightTerm">
          <tns:FreightTerm>
            <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:FreightTerm"/>
          </tns:FreightTerm>
        </xsl:if>
        <tns:Carrier>
          <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ListOfCarrier/ns7:Carrier/ns7:Name">
            <tns:Name>
              <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ListOfCarrier/ns7:Carrier/ns7:Name"/>
            </tns:Name>
          </xsl:if>
          <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ListOfCarrier/ns7:Carrier/ns7:VehicleID">
            <tns:VehicleID>
              <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ListOfCarrier/ns7:Carrier/ns7:VehicleID"/>
            </tns:VehicleID>
          </xsl:if>
        </tns:Carrier>
        <tns:ShipTo>
          <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ListOfShipTo/ns7:ShipTo/ns7:Name">
            <tns:Name>
              <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ListOfShipTo/ns7:ShipTo/ns7:Name"/>
            </tns:Name>
          </xsl:if>
          <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ListOfShipTo/ns7:ShipTo/ns7:ID">
            <tns:SupplierCustID>
              <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ListOfShipTo/ns7:ShipTo/ns7:ID"/>
            </tns:SupplierCustID>
          </xsl:if>
          <xsl:if test="normalize-space ( concat (/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ListOfShipTo/ns7:ShipTo/ns7:AddressLine1,' ',/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ListOfShipTo/ns7:ShipTo/ns7:AddressLine2,' ',/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ListOfShipTo/ns7:ShipTo/ns7:AddressLine3) )">
            <tns:Addr>
              <xsl:value-of select="concat (/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ListOfShipTo/ns7:ShipTo/ns7:AddressLine1,' ',/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ListOfShipTo/ns7:ShipTo/ns7:AddressLine2,' ',/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ListOfShipTo/ns7:ShipTo/ns7:AddressLine3)"/>
            </tns:Addr>
          </xsl:if>
          <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ListOfShipTo/ns7:ShipTo/ns7:City">
            <tns:City>
              <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ListOfShipTo/ns7:ShipTo/ns7:City"/>
            </tns:City>
          </xsl:if>
          <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ListOfShipTo/ns7:ShipTo/ns7:State">
            <tns:State>
              <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ListOfShipTo/ns7:ShipTo/ns7:State"/>
            </tns:State>
          </xsl:if>
          <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ListOfShipTo/ns7:ShipTo/ns7:Zip">
            <tns:PostalCode>
              <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfFreightInfo/ns7:FreightInfo/ns7:ListOfShipTo/ns7:ShipTo/ns7:Zip"/>
            </tns:PostalCode>
          </xsl:if>
        </tns:ShipTo>
      </tns:FreightInfo>
      <tns:Waybills>
        <tns:Waybill Type="Final" Revision="0">
          <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:BolNumber">
            <tns:WaybillNum>
              <xsl:value-of select='substring-after (/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:BolNumber, "BOL-" )'/>
            </tns:WaybillNum>
          </xsl:if>
          <xsl:if test="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:BolDate">
            <tns:WaybillDateTime>
              <xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:BolDate"/>
            </tns:WaybillDateTime>
          </xsl:if>
          <tns:WaybillLines>
            <xsl:for-each-group select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfBolDetails/ns7:BolDetail"
                                group-by="ns7:OrderLine">
              <xsl:for-each-group select="current-group()" group-by="ns7:OrderNumber">
                <tns:WaybillLine>
                  <!-- Comment for incident#45620 xsl:if test="ns7:OrderLine">
                    <tns:LineNum>
                      <xsl:value-of select="ns7:OrderLine"/>
                    </tns:LineNum>
                  </xsl:if-->
                  <tns:LineNum>
                    <xsl:value-of select="position()"/>
                  </tns:LineNum>
                  <xsl:if test="ns7:CustPoNum">
                    <tns:CustPO>
                      <xsl:value-of select="concat( ns7:CustPoNum,'-',ns7:CustPoLineNum)"/>
                    </tns:CustPO>
                  </xsl:if>
                  <xsl:if test="ns7:CustProdNum">
                    <tns:CustPartNum>
                      <xsl:value-of select="ns7:CustProdNum"/>
                    </tns:CustPartNum>
                  </xsl:if>
                  <xsl:if test="ns7:OrderNumber">
                    <tns:SupplierOrderNum>
                      <xsl:value-of select="ns7:OrderNumber"/>
                    </tns:SupplierOrderNum>
                  </xsl:if>
                  <xsl:if test="sum(current-group()/ns7:NoOfBundle)">
                    <tns:QtyBundles>
                      <xsl:value-of select="sum(current-group()/ns7:NoOfBundle)"/>
                    </tns:QtyBundles>
                  </xsl:if>
                  <xsl:if test="sum(current-group()/ns7:TTLWeight)">
                    <tns:LineWgtTtl UOM="{ns7:WeightUOM}" Qual="{ns7:Qual}">
                      <xsl:value-of select="sum(current-group()/ns7:TTLWeight)"/>
                    </tns:LineWgtTtl>
                  </xsl:if>
                  <tns:Bundles>
                    <xsl:for-each-group select="current-group()/ns7:ListOfBolTag/ns7:BolTag" group-by="ns7:TagNum">
                      <xsl:for-each-group select="current-group()" group-by="ns7:ReheatLot">
                        <tns:Bundle>
                          <xsl:if test="ns7:TagNum">
                            <tns:BundleNum>
                              <xsl:value-of select="ns7:TagNum"/>
                            </tns:BundleNum>
                          </xsl:if>
                          <xsl:if test="ns7:RollDateTime">
                            <tns:RollDateTime>
                              <xsl:value-of select="ns7:RollDateTime"/>
                            </tns:RollDateTime>
                          </xsl:if>
                          <xsl:if test="../../ns7:Item">
                            <tns:SupplierProductCode>
                              <!--xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfBolDetails/ns7:BolDetail/ns7:Item"/-->
                              <xsl:value-of select="../../ns7:Item"/>
                            </tns:SupplierProductCode>
                          </xsl:if>
                          <xsl:if test="../../ns7:ItemDesc">
                            <tns:SupplierProductDesc>
                              <!--xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfBolDetails/ns7:BolDetail/ns7:ItemDesc"/-->
                              <xsl:value-of select="../../ns7:ItemDesc"/>
                            </tns:SupplierProductDesc>
                          </xsl:if>
                          <xsl:if test="../../ns7:Grade">
                            <tns:Grade>
                              <!--xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfBolDetails/ns7:BolDetail/ns7:Grade"/-->
                              <xsl:value-of select="../../ns7:Grade"/>
                            </tns:Grade>
                          </xsl:if>
                          <xsl:if test="../../ns7:Grade">
                            <tns:GradeDesc>
                              <!--xsl:value-of select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfBundles/ns7:Bundle/ns7:ListOfBolDetails/ns7:BolDetail/ns7:Grade"/-->
                              <xsl:value-of select="../../ns7:Grade"/>
                            </tns:GradeDesc>
                          </xsl:if>
                          <xsl:if test="../../ns7:UADShape">
                            <tns:Shape>
                              <xsl:value-of select="../../ns7:UADShape"/>
                            </tns:Shape>
                          </xsl:if>
                          <xsl:if test="../../ns7:UDASize">
                            <tns:Size>
                              <xsl:value-of select="../../ns7:UDASize"/>
                            </tns:Size>
                          </xsl:if>
                          <xsl:if test="ns7:TagNum">
                            <tns:TagNum>
                              <xsl:value-of select="ns7:TagNum"/>
                            </tns:TagNum>
                          </xsl:if>
                          <xsl:if test="../../ns7:UDALength">
                            <tns:Length>
                              <xsl:value-of select="../../ns7:UDALength"/>
                            </tns:Length>
                          </xsl:if>
                          <xsl:if test="sum(current-group()/ns7:NoOfPieces)">
                            <tns:QtyPcs>
                              <xsl:value-of select="sum(current-group()/ns7:NoOfPieces)"/>
                            </tns:QtyPcs>
                          </xsl:if>
                          <tns:TtlWgt Qual="{../../ns7:Qual}" UOM="{../../ns7:WeightUOM}">
                            <!--xsl:value-of select="sum(current-group()/ns7:Weight)"/-->
                            <xsl:value-of select="ns7:Weight"/>
                          </tns:TtlWgt>
                          <xsl:if test="ns7:ParentLot">
                            <tns:HeatNum>
                              <xsl:value-of select="ns7:ParentLot"/>
                            </tns:HeatNum>
                          </xsl:if>
                          <xsl:if test="ns7:ReheatLot">
                            <tns:ReheatNum>
                              <xsl:value-of select="ns7:ReheatLot"/>
                            </tns:ReheatNum>
                          </xsl:if>
                        </tns:Bundle>
                      </xsl:for-each-group>
                    </xsl:for-each-group>
                  </tns:Bundles>
                </tns:WaybillLine>
              </xsl:for-each-group>
            </xsl:for-each-group>
          </tns:WaybillLines>
        </tns:Waybill>
      </tns:Waybills>
      <tns:Tests>
        <xsl:for-each select="/ns0:QueryBundleByBolNoResponseMessage/ns0:ListOfGmdResultsPub/ns7:GmdResultsPub">
          <tns:TestSet>
            <tns:Bundles>
              <xsl:for-each select="ns4:LPNDetails/ns4:LPNDetail">
                <tns:BundleNum>
                  <xsl:value-of select="ns4:LPNNo"/>
                </tns:BundleNum>
              </xsl:for-each>
            </tns:Bundles>
            <tns:HeatNum>
              <xsl:value-of select="ns4:ParentLotNO"/>
            </tns:HeatNum>
            <tns:ReheatNum>
              <xsl:value-of select="ns4:LotNo"/>
            </tns:ReheatNum>
            <xsl:choose>
              <xsl:when test="ns4:MeltCountry !=''">
                <tns:MeltCountry>
                  <xsl:value-of select="ns4:MeltCountry"/>
                </tns:MeltCountry>
              </xsl:when>
              <xsl:otherwise>
                <tns:MeltCountry>
                  <xsl:value-of select="ns4:C_Attributes/ns4:C_Attribute/ns4:Attribute7"/>
                </tns:MeltCountry>
              </xsl:otherwise>
            </xsl:choose>
            <xsl:choose>
              <xsl:when test="ns4:MiltDate !=''">
                <tns:MeltDate>
                  <xsl:value-of select="ns4:MiltDate"/>
                </tns:MeltDate>
              </xsl:when>
              <xsl:otherwise>
                <tns:MeltDate>
                  <xsl:value-of select="ns4:C_Attributes/ns4:C_Attribute/ns4:Attribute8"/>
                </tns:MeltDate>
              </xsl:otherwise>
            </xsl:choose>
            <tns:MeltMill>
              <xsl:value-of select="ns4:C_Attributes/ns4:C_Attribute/ns4:Attribute6"/>
            </tns:MeltMill>
            <xsl:choose>
              <xsl:when test="ns4:RollCountry !=''">
                <tns:RollCountry>
                  <xsl:value-of select="ns4:RollCountry"/>
                </tns:RollCountry>
              </xsl:when>
              <xsl:otherwise>
                <tns:RollCountry>
                  <xsl:value-of select="ns4:C_Attributes/ns4:C_Attribute/ns4:Attribute10"/>
                </tns:RollCountry>
              </xsl:otherwise>
            </xsl:choose>
            <tns:RollDate>
              <xsl:value-of select="ns4:C_Attributes/ns4:C_Attribute/ns4:Attribute11"/>
            </tns:RollDate>
            <tns:RollMill>
              <xsl:value-of select="ns4:C_Attributes/ns4:C_Attribute/ns4:Attribute9"/>
            </tns:RollMill>
            <tns:FinalCountry>
              <xsl:value-of select="ns4:C_Attributes/ns4:C_Attribute/ns4:Attribute13"/>
            </tns:FinalCountry>
            <tns:FinalDate>
              <xsl:value-of select="ns4:C_Attributes/ns4:C_Attribute/ns4:Attribute14"/>
            </tns:FinalDate>
            <tns:FinalMill>
              <xsl:value-of select="ns4:C_Attributes/ns4:C_Attribute/ns4:Attribute12"/>
            </tns:FinalMill>
            <tns:Measures>
              <xsl:for-each select="ns4:Test_results/ns4:Test_results">
                <tns:Measure Test="{ns4:TestCode}" UOM="{ns4:TestUnit}" Replicate="{ns4:Replicate}">
                  <xsl:value-of select="ns4:ResultValue"/>
                </tns:Measure>
              </xsl:for-each>
            </tns:Measures>
          </tns:TestSet>
        </xsl:for-each>
      </tns:Tests>
    </tns:Envelope>
  </xsl:template>
</xsl:stylesheet>
