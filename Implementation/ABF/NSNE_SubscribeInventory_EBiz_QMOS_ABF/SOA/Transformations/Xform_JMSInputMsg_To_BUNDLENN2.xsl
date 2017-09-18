<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:ns1="http://xmlns.eia.com/AO/Ebiz/D2S/InventoryTransactionAM/1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Insert_API_BUNDLE_TRANS" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" exclude-result-prefixes="oracle-xsl-mapper xsi xsd xsl ns1 ns0 oraxsl oraext" xmlns:ns4="http://xmlns.eia.com/EO/common/Common/1.0" xmlns:ns6="http://xmlns.eia.com/EO/common/Header/1.0" xmlns:ns7="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency" xmlns:ns8="http://xmlns.eia.com/AO/Ebiz/D2S/InventoryTransactionAO/1.0" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:ns5="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/Manish/NSNE_SubscribeInventory_EBiz_QMOS_ABF/DB_Insert_API_BUNDLE_TRANS" xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/jms/Manish/NSNE_SubscribeInventory_EBiz_QMOS_ABF/JMS_DEQ_NextGenDistributedTopic" xmlns:ns3="http://schemas.oracle.com/service/bpel/common" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:ns9="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language">
   <oracle-xsl-mapper:schema>
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/DB_Insert_API_BUNDLE_TRANS.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ApiBundleTransExtCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Insert_API_BUNDLE_TRANS"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/JMS_DEQ_NextGenDistributedTopic.wsdl"/>
            <oracle-xsl-mapper:rootElement name="InventoryTransactionAddRq" namespace="http://xmlns.eia.com/AO/Ebiz/D2S/InventoryTransactionAM/1.0"/>
            <oracle-xsl-mapper:param name="g_Receive_JMS_DEQ_NextGen_Consume_Message_InputVariable.body"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/DB_Insert_API_BUNDLE_TRANS.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ApiBundleTransExtCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Insert_API_BUNDLE_TRANS"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
   </oracle-xsl-mapper:schema>
   <xsl:param name="g_Receive_JMS_DEQ_NextGen_Consume_Message_InputVariable.body"/>
   <xsl:template match="/">
      <ns0:ApiBundleTransExtCollection>
         <xsl:for-each select="/ns0:ApiBundleTransExtCollection/ns0:ApiBundleTransExt">
            <xsl:if test="ns0:transactionType !=&quot;DoNotUse&quot;">
               <xsl:variable name="LPNNo" select="ns0:tagNo"/>
               <xsl:variable name="g_TransactionType" select="$g_Receive_JMS_DEQ_NextGen_Consume_Message_InputVariable.body/ns1:InventoryTransactionAddRq/ns8:InventoryTransactionDetails/ns8:ListOfInvTrx[(ns8:LPN=$LPNNo)]/ns8:TransactionType"/>
               <xsl:variable name="g_ResourceName" select="$g_Receive_JMS_DEQ_NextGen_Consume_Message_InputVariable.body/ns1:InventoryTransactionAddRq/ns8:InventoryTransactionDetails/ns8:ListOfInvTrx[(ns8:LPN=$LPNNo)]/ns8:ResourceName"/>
               <xsl:if test="(($g_TransactionType=&quot;RMA Receipt&quot; and  $g_ResourceName = &quot;RM2&quot;) or (ns0:tagNo != &quot;&quot; and (substring (ns0:tagNo, 1, 4 ) = &quot;1002&quot;  or substring (ns0:tagNo, 1, 2 ) = &quot;NF&quot; and substring (ns0:tagNo, 5, 1 ) = &quot;2&quot;)))">
                  <ns0:ApiBundleTransExt>
                     <ns0:id>
                        <xsl:value-of select="oraext:sequence-next-val (&quot;SEQ_API_BUNDLE_TRANS_EXT_ID&quot;, &quot;jdbc/nsneqmos2&quot; )"/>
                     </ns0:id>
                     <xsl:if test="ns0:transactionType">
                        <ns0:transactionType>
                           <xsl:value-of select="ns0:transactionType"/>
                        </ns0:transactionType>
                     </xsl:if>
                     <xsl:if test="ns0:tagNo">
                        <ns0:tagNo>
                           <xsl:value-of select="ns0:tagNo"/>
                        </ns0:tagNo>
                     </xsl:if>
                     <xsl:if test="ns0:bolSlipNo">
                        <ns0:bolSlipNo>
                           <xsl:if test="ns0:bolSlipNo/@xsi:nil">
                              <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                 <xsl:value-of select="ns0:bolSlipNo/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns0:bolSlipNo"/>
                        </ns0:bolSlipNo>
                     </xsl:if>
                     <xsl:if test="ns0:cusCustomerId">
                        <ns0:cusCustomerId>
                           <xsl:if test="ns0:cusCustomerId/@xsi:nil">
                              <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                 <xsl:value-of select="ns0:cusCustomerId/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns0:cusCustomerId"/>
                        </ns0:cusCustomerId>
                     </xsl:if>
                     <xsl:if test="ns0:cusCustomerName">
                        <ns0:cusCustomerName>
                           <xsl:if test="ns0:cusCustomerName/@xsi:nil">
                              <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                 <xsl:value-of select="ns0:cusCustomerName/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns0:cusCustomerName"/>
                        </ns0:cusCustomerName>
                     </xsl:if>
                     <xsl:if test="ns0:bolCarrierName">
                        <ns0:bolCarrierName>
                           <xsl:if test="ns0:bolCarrierName/@xsi:nil">
                              <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                 <xsl:value-of select="ns0:bolCarrierName/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns0:bolCarrierName"/>
                        </ns0:bolCarrierName>
                     </xsl:if>
                     <xsl:if test="ns0:bolTruckPlateNo">
                        <ns0:bolTruckPlateNo>
                           <xsl:if test="ns0:bolTruckPlateNo/@xsi:nil">
                              <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                 <xsl:value-of select="ns0:bolTruckPlateNo/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns0:bolTruckPlateNo"/>
                        </ns0:bolTruckPlateNo>
                     </xsl:if>
                     <xsl:if test="ns0:bolShipDate">
                        <ns0:bolShipDate>
                           <xsl:if test="ns0:bolShipDate/@xsi:nil">
                              <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                 <xsl:value-of select="ns0:bolShipDate/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns0:bolShipDate"/>
                        </ns0:bolShipDate>
                     </xsl:if>
                     <xsl:if test="ns0:binFrom">
                        <ns0:binFrom>
                           <xsl:if test="ns0:binFrom/@xsi:nil">
                              <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                 <xsl:value-of select="ns0:binFrom/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns0:binFrom"/>
                        </ns0:binFrom>
                     </xsl:if>
                     <xsl:if test="ns0:binTo">
                        <ns0:binTo>
                           <xsl:if test="ns0:binTo/@xsi:nil">
                              <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                 <xsl:value-of select="ns0:binTo/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns0:binTo"/>
                        </ns0:binTo>
                     </xsl:if>
                     <xsl:if test="ns0:userId">
                        <ns0:userId>
                           <xsl:if test="ns0:userId/@xsi:nil">
                              <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                 <xsl:value-of select="ns0:userId/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns0:userId"/>
                        </ns0:userId>
                     </xsl:if>
                     <xsl:if test="ns0:processed">
                        <ns0:processed>
                           <xsl:value-of select="ns0:processed"/>
                        </ns0:processed>
                     </xsl:if>
                     <xsl:if test="ns0:processDate">
                        <ns0:processDate>
                           <xsl:if test="ns0:processDate/@xsi:nil">
                              <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                 <xsl:value-of select="ns0:processDate/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns0:processDate"/>
                        </ns0:processDate>
                     </xsl:if>
                     <xsl:if test="ns0:createDate">
                        <ns0:createDate>
                           <xsl:value-of select="ns0:createDate"/>
                        </ns0:createDate>
                     </xsl:if>
                     <xsl:if test="ns0:partCode">
                        <ns0:partCode>
                           <xsl:if test="ns0:partCode/@xsi:nil">
                              <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                 <xsl:value-of select="ns0:partCode/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns0:partCode"/>
                        </ns0:partCode>
                     </xsl:if>
                     <xsl:if test="ns0:disposition">
                        <ns0:disposition>
                           <xsl:if test="ns0:disposition/@xsi:nil">
                              <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                 <xsl:value-of select="ns0:disposition/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns0:disposition"/>
                        </ns0:disposition>
                     </xsl:if>
                     <xsl:if test="ns0:millHeat">
                        <ns0:millHeat>
                           <xsl:if test="ns0:millHeat/@xsi:nil">
                              <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                 <xsl:value-of select="ns0:millHeat/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns0:millHeat"/>
                        </ns0:millHeat>
                     </xsl:if>
                     <xsl:if test="ns0:meltHeat">
                        <ns0:meltHeat>
                           <xsl:if test="ns0:meltHeat/@xsi:nil">
                              <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                 <xsl:value-of select="ns0:meltHeat/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns0:meltHeat"/>
                        </ns0:meltHeat>
                     </xsl:if>
                     <xsl:if test="ns0:weightLbs">
                        <ns0:weightLbs>
                           <xsl:if test="ns0:weightLbs/@xsi:nil">
                              <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                 <xsl:value-of select="ns0:weightLbs/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns0:weightLbs"/>
                        </ns0:weightLbs>
                     </xsl:if>
                     <xsl:if test="ns0:millId">
                        <ns0:millId>
                           <xsl:if test="ns0:millId/@xsi:nil">
                              <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                 <xsl:value-of select="ns0:millId/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns0:millId"/>
                        </ns0:millId>
                     </xsl:if>
                     <xsl:if test="ns0:errorMessage">
                        <ns0:errorMessage>
                           <xsl:if test="ns0:errorMessage/@xsi:nil">
                              <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                 <xsl:value-of select="ns0:errorMessage/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns0:errorMessage"/>
                        </ns0:errorMessage>
                     </xsl:if>
                  </ns0:ApiBundleTransExt>
               </xsl:if>
            </xsl:if>
         </xsl:for-each>
      </ns0:ApiBundleTransExtCollection>
   </xsl:template>
</xsl:stylesheet>
