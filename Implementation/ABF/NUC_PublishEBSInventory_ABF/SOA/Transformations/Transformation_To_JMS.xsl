<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://xmlns.eia.com/AO/Ebiz/D2S/InventoryTransactionAM/1.0"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:ns1="http://schemas.oracle.com/service/bpel/common"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 ns1 oraxsl xp20 xref mhdr oraext utl dvm socket"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:ns7="http://xmlns.eia.com/AO/Ebiz/D2S/InventoryTransactionAO/1.0"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns8="http://xmlns.oracle.com/pcbpel/adapter/aq/NextGen/NUC_PublishEBSInventory_ABF/AQ_DEQ_XXNUC_COMM_OUTINTF_Q"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns2="http://xmlns.eia.com/EO/common/Common/1.0"
                xmlns:ns4="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:tns="http://oracle.com/sca/soapservice/NextGen/NUC_EBizInventory_ABS/EbizInventory_ABS"
                xmlns:ns6="http://xmlns.eia.com/EO/common/Header/1.0" xmlns:obj1="http://xmlns.oracle.com/xdb/APPS_NE"
                xmlns:ns3="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language"
                xmlns:ns5="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/D2S/InventoryTransaction.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryInventoryTransactionAddRs"
                                       namespace="http://xmlns.eia.com/AO/Ebiz/D2S/InventoryTransactionAM/1.0"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/D2S/InventoryTransaction.wsdl"/>
        <oracle-xsl-mapper:rootElement name="InventoryTransactionAddRq"
                                       namespace="http://xmlns.eia.com/AO/Ebiz/D2S/InventoryTransactionAM/1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [THU FEB 11 13:43:57 CST 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <ns0:InventoryTransactionAddRq>
      <ns6:HeaderRq>
        <ns6:TransactionRequestID/>
        <ns6:ComponentID>
          <xsl:value-of select="/ns0:QueryInventoryTransactionAddRs/ns6:HeaderRs/ns6:RequestDetails/ns6:ComponentID"/>
        </ns6:ComponentID>
        <ns6:TransactionIDREF>
          <xsl:value-of select="/ns0:QueryInventoryTransactionAddRs/ns6:HeaderRs/ns6:RequestDetails/ns6:TransactionIDREF"/>
        </ns6:TransactionIDREF>
        <ns6:TransactionName>
          <xsl:value-of select="/ns0:QueryInventoryTransactionAddRs/ns6:HeaderRs/ns6:RequestDetails/ns6:TransactionName"/>
        </ns6:TransactionName>
        <ns6:Source>1</ns6:Source>
        <ns6:Target>21</ns6:Target>
        <ns6:TimeStamp>
          <xsl:value-of select="/ns0:QueryInventoryTransactionAddRs/ns6:HeaderRs/ns6:RequestDetails/ns6:TimeStamp"/>
        </ns6:TimeStamp>
      </ns6:HeaderRq>
      <xsl:for-each select="/ns0:QueryInventoryTransactionAddRs/ns7:InventoryTransactionDetails">
        <ns7:InventoryTransactionDetails>
          <xsl:if test="ns7:ListOfInvTrx">
            <ns7:ListOfInvTrx>
              <xsl:if test="ns7:ListOfInvTrx/ns7:TransactionID">
                <ns7:TransactionID>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:TransactionID"/>
                </ns7:TransactionID>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:OrgID">
                <ns7:OrgID>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:OrgID"/>
                </ns7:OrgID>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:OrgCode">
                <ns7:OrgCode>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:OrgCode"/>
                </ns7:OrgCode>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:OrgName">
                <ns7:OrgName>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:OrgName"/>
                </ns7:OrgName>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:ResourceName">
                <ns7:ResourceName>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:ResourceName"/>
                </ns7:ResourceName>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:TransactionTypeID">
                <ns7:TransactionTypeID>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:TransactionTypeID"/>
                </ns7:TransactionTypeID>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:TransactionType">
                <ns7:TransactionType>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:TransactionType"/>
                </ns7:TransactionType>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:SubinventoryCode">
                <ns7:SubinventoryCode>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:SubinventoryCode"/>
                </ns7:SubinventoryCode>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:LocatorID">
                <ns7:LocatorID>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:LocatorID"/>
                </ns7:LocatorID>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:Locator">
                <ns7:Locator>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:Locator"/>
                </ns7:Locator>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:LocatorStatus">
                <ns7:LocatorStatus>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:LocatorStatus"/>
                </ns7:LocatorStatus>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:ItemID">
                <ns7:ItemID>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:ItemID"/>
                </ns7:ItemID>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:ItemNumber">
                <ns7:ItemNumber>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:ItemNumber"/>
                </ns7:ItemNumber>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:ItemDescription">
                <ns7:ItemDescription>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:ItemDescription"/>
                </ns7:ItemDescription>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:ItemType">
                <ns7:ItemType>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:ItemType"/>
                </ns7:ItemType>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:Revision">
                <ns7:Revision>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:Revision"/>
                </ns7:Revision>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:PriUOMCode">
                <ns7:PriUOMCode>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:PriUOMCode"/>
                </ns7:PriUOMCode>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:TransactionDate">
                <ns7:TransactionDate>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:TransactionDate"/>
                </ns7:TransactionDate>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:TransactionQty">
                <ns7:TransactionQty>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:TransactionQty"/>
                </ns7:TransactionQty>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:TrxUOMCode">
                <ns7:TrxUOMCode>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:TrxUOMCode"/>
                </ns7:TrxUOMCode>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:XferOrgnID">
                <ns7:XferOrgnID>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:XferOrgnID"/>
                </ns7:XferOrgnID>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:XferOrgnCode">
                <ns7:XferOrgnCode>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:XferOrgnCode"/>
                </ns7:XferOrgnCode>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:XferSubinventory">
                <ns7:XferSubinventory>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:XferSubinventory"/>
                </ns7:XferSubinventory>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:XferLocatorID">
                <ns7:XferLocatorID>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:XferLocatorID"/>
                </ns7:XferLocatorID>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:XferLocator">
                <ns7:XferLocator>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:XferLocator"/>
                </ns7:XferLocator>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:TransactionReason">
                <ns7:TransactionReason>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:TransactionReason"/>
                </ns7:TransactionReason>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:TrxSourceCode">
                <ns7:TrxSourceCode>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:TrxSourceCode"/>
                </ns7:TrxSourceCode>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:TrxSourceName">
                <ns7:TrxSourceName>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:TrxSourceName"/>
                </ns7:TrxSourceName>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:LPNID">
                <ns7:LPNID>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:LPNID"/>
                </ns7:LPNID>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:LPN">
                <ns7:LPN>
                  <xsl:value-of select="ns7:ListOfInvTrx/ns7:LPN"/>
                </ns7:LPN>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:Attribute">
                <ns7:Attribute>
                  <xsl:if test="ns7:ListOfInvTrx/ns7:Attribute/ns7:ATTRIBUTECATEGORY">
                    <ns7:ATTRIBUTECATEGORY>
                      <xsl:value-of select="ns7:ListOfInvTrx/ns7:Attribute/ns7:ATTRIBUTECATEGORY"/>
                    </ns7:ATTRIBUTECATEGORY>
                  </xsl:if>
                  <xsl:if test="ns7:ListOfInvTrx/ns7:Attribute/ns7:ATTRIBUTE1">
                    <ns7:ATTRIBUTE1>
                      <xsl:value-of select="ns7:ListOfInvTrx/ns7:Attribute/ns7:ATTRIBUTE1"/>
                    </ns7:ATTRIBUTE1>
                  </xsl:if>
                  <xsl:if test="ns7:ListOfInvTrx/ns7:Attribute/ns7:ATTRIBUTE2">
                    <ns7:ATTRIBUTE2>
                      <xsl:value-of select="ns7:ListOfInvTrx/ns7:Attribute/ns7:ATTRIBUTE2"/>
                    </ns7:ATTRIBUTE2>
                  </xsl:if>
                  <xsl:if test="ns7:ListOfInvTrx/ns7:Attribute/ns7:ATTRIBUTE3">
                    <ns7:ATTRIBUTE3>
                      <xsl:value-of select="ns7:ListOfInvTrx/ns7:Attribute/ns7:ATTRIBUTE3"/>
                    </ns7:ATTRIBUTE3>
                  </xsl:if>
                  <xsl:if test="ns7:ListOfInvTrx/ns7:Attribute/ns7:ATTRIBUTE4">
                    <ns7:ATTRIBUTE4>
                      <xsl:value-of select="ns7:ListOfInvTrx/ns7:Attribute/ns7:ATTRIBUTE4"/>
                    </ns7:ATTRIBUTE4>
                  </xsl:if>
                  <xsl:if test="ns7:ListOfInvTrx/ns7:Attribute/ns7:ATTRIBUTE5">
                    <ns7:ATTRIBUTE5>
                      <xsl:value-of select="ns7:ListOfInvTrx/ns7:Attribute/ns7:ATTRIBUTE5"/>
                    </ns7:ATTRIBUTE5>
                  </xsl:if>
                </ns7:Attribute>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:LPNAttribute">
                <ns7:LPNAttribute>
                  <xsl:if test="ns7:ListOfInvTrx/ns7:LPNAttribute/ns7:ATTRIBUTECATEGORY">
                    <ns7:ATTRIBUTECATEGORY>
                      <xsl:value-of select="ns7:ListOfInvTrx/ns7:LPNAttribute/ns7:ATTRIBUTECATEGORY"/>
                    </ns7:ATTRIBUTECATEGORY>
                  </xsl:if>
                  <xsl:if test="ns7:ListOfInvTrx/ns7:LPNAttribute/ns7:ATTRIBUTE1">
                    <ns7:ATTRIBUTE1>
                      <xsl:value-of select="ns7:ListOfInvTrx/ns7:LPNAttribute/ns7:ATTRIBUTE1"/>
                    </ns7:ATTRIBUTE1>
                  </xsl:if>
                  <xsl:if test="ns7:ListOfInvTrx/ns7:LPNAttribute/ns7:ATTRIBUTE2">
                    <ns7:ATTRIBUTE2>
                      <xsl:value-of select="ns7:ListOfInvTrx/ns7:LPNAttribute/ns7:ATTRIBUTE2"/>
                    </ns7:ATTRIBUTE2>
                  </xsl:if>
                  <xsl:if test="ns7:ListOfInvTrx/ns7:LPNAttribute/ns7:ATTRIBUTE3">
                    <ns7:ATTRIBUTE3>
                      <xsl:value-of select="ns7:ListOfInvTrx/ns7:LPNAttribute/ns7:ATTRIBUTE3"/>
                    </ns7:ATTRIBUTE3>
                  </xsl:if>
                  <xsl:if test="ns7:ListOfInvTrx/ns7:LPNAttribute/ns7:ATTRIBUTE4">
                    <ns7:ATTRIBUTE4>
                      <xsl:value-of select="ns7:ListOfInvTrx/ns7:LPNAttribute/ns7:ATTRIBUTE4"/>
                    </ns7:ATTRIBUTE4>
                  </xsl:if>
                  <xsl:if test="ns7:ListOfInvTrx/ns7:LPNAttribute/ns7:ATTRIBUTE5">
                    <ns7:ATTRIBUTE5>
                      <xsl:value-of select="ns7:ListOfInvTrx/ns7:LPNAttribute/ns7:ATTRIBUTE5"/>
                    </ns7:ATTRIBUTE5>
                  </xsl:if>
                </ns7:LPNAttribute>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:ListOfInvTrxSrcDetails">
                <ns7:ListOfInvTrxSrcDetails>
                  <xsl:for-each select="ns7:ListOfInvTrx/ns7:ListOfInvTrxSrcDetails/ns7:InvTrxSrcDetails">
                    <ns7:InvTrxSrcDetails>
                      <xsl:if test="ns7:TransactionID">
                        <ns7:TransactionID>
                          <xsl:value-of select="ns7:TransactionID"/>
                        </ns7:TransactionID>
                      </xsl:if>
                      <xsl:if test="ns7:TrxSourceType">
                        <ns7:TrxSourceType>
                          <xsl:value-of select="ns7:TrxSourceType"/>
                        </ns7:TrxSourceType>
                      </xsl:if>
                      <xsl:if test="ns7:TrxSourceNumber">
                        <ns7:TrxSourceNumber>
                          <xsl:value-of select="ns7:TrxSourceNumber"/>
                        </ns7:TrxSourceNumber>
                      </xsl:if>
                      <xsl:if test="ns7:TrxSourceLine">
                        <ns7:TrxSourceLine>
                          <xsl:value-of select="ns7:TrxSourceLine"/>
                        </ns7:TrxSourceLine>
                      </xsl:if>
                      <xsl:if test="ns7:TrxSourceInfo1">
                        <ns7:TrxSourceInfo1>
                          <xsl:value-of select="ns7:TrxSourceInfo1"/>
                        </ns7:TrxSourceInfo1>
                      </xsl:if>
                      <xsl:if test="ns7:TrxSourceInfo2">
                        <ns7:TrxSourceInfo2>
                          <xsl:value-of select="ns7:TrxSourceInfo2"/>
                        </ns7:TrxSourceInfo2>
                      </xsl:if>
                      <xsl:if test="ns7:TrxSourceInfo3">
                        <ns7:TrxSourceInfo3>
                          <xsl:value-of select="ns7:TrxSourceInfo3"/>
                        </ns7:TrxSourceInfo3>
                      </xsl:if>
                      <xsl:if test="ns7:TrxSourceInfo4">
                        <ns7:TrxSourceInfo4>
                          <xsl:value-of select="ns7:TrxSourceInfo4"/>
                        </ns7:TrxSourceInfo4>
                      </xsl:if>
                      <xsl:if test="ns7:TrxSourceInfo5">
                        <ns7:TrxSourceInfo5>
                          <xsl:value-of select="ns7:TrxSourceInfo5"/>
                        </ns7:TrxSourceInfo5>
                      </xsl:if>
                      <xsl:if test="ns7:TrxSourceInfo6">
                        <ns7:TrxSourceInfo6>
                          <xsl:value-of select="ns7:TrxSourceInfo6"/>
                        </ns7:TrxSourceInfo6>
                      </xsl:if>
                      <xsl:if test="ns7:TrxSourceInfo7">
                        <ns7:TrxSourceInfo7>
                          <xsl:value-of select="ns7:TrxSourceInfo7"/>
                        </ns7:TrxSourceInfo7>
                      </xsl:if>
                      <xsl:if test="ns7:TrxSourceInfo8">
                        <ns7:TrxSourceInfo8>
                          <xsl:value-of select="ns7:TrxSourceInfo8"/>
                        </ns7:TrxSourceInfo8>
                      </xsl:if>
                      <xsl:if test="ns7:TrxSourceInfo9">
                        <ns7:TrxSourceInfo9>
                          <xsl:value-of select="ns7:TrxSourceInfo9"/>
                        </ns7:TrxSourceInfo9>
                      </xsl:if>
                      <xsl:if test="ns7:TrxSourceInfo10">
                        <ns7:TrxSourceInfo10>
                          <xsl:value-of select="ns7:TrxSourceInfo10"/>
                        </ns7:TrxSourceInfo10>
                      </xsl:if>
                    </ns7:InvTrxSrcDetails>
                  </xsl:for-each>
                </ns7:ListOfInvTrxSrcDetails>
              </xsl:if>
              <xsl:if test="ns7:ListOfInvTrx/ns7:ListOfInvTrxDetails">
                <ns7:ListOfInvTrxDetails>
                  <xsl:for-each select="ns7:ListOfInvTrx/ns7:ListOfInvTrxDetails/ns7:InvTrxDetails">
                    <ns7:InvTrxDetails>
                      <xsl:if test="ns7:TransactionID">
                        <ns7:TransactionID>
                          <xsl:value-of select="ns7:TransactionID"/>
                        </ns7:TransactionID>
                      </xsl:if>
                      <xsl:if test="ns7:LPNID">
                        <ns7:LPNID>
                          <xsl:value-of select="ns7:LPNID"/>
                        </ns7:LPNID>
                      </xsl:if>
                      <xsl:if test="ns7:LPN">
                        <ns7:LPN>
                          <xsl:value-of select="ns7:LPN"/>
                        </ns7:LPN>
                      </xsl:if>
                      <xsl:if test="ns7:PrimaryLot">
                        <ns7:PrimaryLot>
                          <xsl:value-of select="ns7:PrimaryLot"/>
                        </ns7:PrimaryLot>
                      </xsl:if>
                      <xsl:if test="ns7:LotNumber">
                        <ns7:LotNumber>
                          <xsl:value-of select="ns7:LotNumber"/>
                        </ns7:LotNumber>
                      </xsl:if>
                      <xsl:if test="ns7:TrxLotQuantity">
                        <ns7:TrxLotQuantity>
                          <xsl:value-of select="ns7:TrxLotQuantity"/>
                        </ns7:TrxLotQuantity>
                      </xsl:if>
                      <xsl:if test="ns7:LotExpirationDate">
                        <ns7:LotExpirationDate>
                          <xsl:value-of select="ns7:LotExpirationDate"/>
                        </ns7:LotExpirationDate>
                      </xsl:if>
                      <xsl:if test="ns7:SupplierLot">
                        <ns7:SupplierLot>
                          <xsl:value-of select="ns7:SupplierLot"/>
                        </ns7:SupplierLot>
                      </xsl:if>
                      <xsl:if test="ns7:GradeCode">
                        <ns7:GradeCode>
                          <xsl:value-of select="ns7:GradeCode"/>
                        </ns7:GradeCode>
                      </xsl:if>
                      <xsl:if test="ns7:LotStatus">
                        <ns7:LotStatus>
                          <xsl:value-of select="ns7:LotStatus"/>
                        </ns7:LotStatus>
                      </xsl:if>
                      <xsl:if test="ns7:SerialNumber">
                        <ns7:SerialNumber>
                          <xsl:value-of select="ns7:SerialNumber"/>
                        </ns7:SerialNumber>
                      </xsl:if>
                      <xsl:if test="ns7:UnitNumber">
                        <ns7:UnitNumber>
                          <xsl:value-of select="ns7:UnitNumber"/>
                        </ns7:UnitNumber>
                      </xsl:if>
                      <xsl:if test="ns7:SerialStatus">
                        <ns7:SerialStatus>
                          <xsl:value-of select="ns7:SerialStatus"/>
                        </ns7:SerialStatus>
                      </xsl:if>
                    </ns7:InvTrxDetails>
                  </xsl:for-each>
                </ns7:ListOfInvTrxDetails>
              </xsl:if>
            </ns7:ListOfInvTrx>
          </xsl:if>
        </ns7:InventoryTransactionDetails>
      </xsl:for-each>
    </ns0:InventoryTransactionAddRq>
  </xsl:template>
</xsl:stylesheet>