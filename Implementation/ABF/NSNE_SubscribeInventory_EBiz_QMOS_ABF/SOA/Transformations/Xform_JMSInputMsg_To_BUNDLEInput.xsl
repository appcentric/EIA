<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 ns1 tns oraxsl xp20 xref mhdr oraext dvm socket" version="1.0" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns0="http://xmlns.eia.com/AO/Ebiz/D2S/InventoryTransactionAM/1.0" xmlns:ns1="http://schemas.oracle.com/service/bpel/common" xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/jms/Manish/NSNE_SubscribeInventory_EBiz_QMOS_ABF/JMS_DEQ_NextGenDistributedTopic" xmlns:ns3="http://xmlns.eia.com/EO/common/Common/1.0" xmlns:ns4="http://xmlns.eia.com/EO/Standard/External/ISO/Language/639-3/2007/Language" xmlns:ns5="http://xmlns.eia.com/EO/Standard/External/ISO/Country/3166-1/2006/Country" xmlns:ns6="http://xmlns.eia.com/EO/Standard/External/ISO/Currency/4217/2001/Currency" xmlns:ns7="http://xmlns.eia.com/EO/common/Header/1.0" xmlns:ns8="http://xmlns.eia.com/AO/Ebiz/D2S/InventoryTransactionAO/1.0" xmlns:ns9="http://xmlns.oracle.com/pcbpel/adapter/db/Manish/NSNE_SubscribeInventory_EBiz_QMOS_ABF/DB_Insert_API_BUNDLE_TRANS" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Insert_API_BUNDLE_TRANS" xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <oracle-xsl-mapper:schema>
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/JMS_DEQ_NextGenDistributedTopic.wsdl"/>
            <oracle-xsl-mapper:rootElement name="InventoryTransactionAddRq" namespace="http://xmlns.eia.com/AO/Ebiz/D2S/InventoryTransactionAM/1.0"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/JMS_DEQ_NextGenDistributedTopic.wsdl"/>
            <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
            <oracle-xsl-mapper:param name="g_ParamVar"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/DB_Insert_API_BUNDLE_TRANS.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ApiBundleTransExtCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Insert_API_BUNDLE_TRANS"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
   </oracle-xsl-mapper:schema>
   <xsl:param name="g_ParamVar"/>
   <xsl:template match="/">
      <tns:ApiBundleTransExtCollection>
         <xsl:for-each select="/ns0:InventoryTransactionAddRq/ns8:InventoryTransactionDetails">
            <xsl:if test="ns8:ListOfInvTrx/ns8:TrxSourceName != concat (ns8:ListOfInvTrx/ns8:OrgCode, &quot;_QMOS&quot; )">
               <xsl:for-each select="ns8:ListOfInvTrx/ns8:ListOfInvTrxDetails/ns8:InvTrxDetails">
                  <xsl:if test=" dvm:lookupValue (&quot;oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_QMOS_NSNE_ITEM_TYPE_MAP.dvm&quot;, &quot;ITEMTYPE&quot;, ../../ns8:ItemType, &quot;BUNDLE&quot;, &quot;&quot; ) = &quot;Y&quot; ">
                     <xsl:if test="dvm:lookupValue (&quot;oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_QMOS_TRANSACTION_TYPE_NAME_MAP.dvm&quot;, &quot;TRANSACTION_TYPE_NAME&quot;, ../../ns8:TransactionType, &quot;QMOS_BUNDLE&quot;, &quot;&quot; ) != &quot;&quot; or ns8:LotStatus =&quot;QC Hot Ship&quot;">
                        <xsl:choose>
                           <xsl:when test="ns8:TrxLotQuantity &lt;0 and dvm:lookupValue (&quot;oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_QMOS_TRANSACTION_TYPE_NAME_MAP.dvm&quot;, &quot;TRANSACTION_TYPE_NAME&quot;, ../../ns8:TransactionType, &quot;QMOS_BUNDLE&quot;, &quot;&quot; ) = &quot;BIN_TRANSFER&quot;"/>
                           <xsl:otherwise>
                              <tns:ApiBundleTransExt>
                                 <tns:id>
                                    <xsl:value-of select="oraext:sequence-next-val (&quot;SEQ_API_BUNDLE_TRANS_EXT_ID&quot;, $g_ParamVar/ns1:parameters/ns1:item[(ns1:name = &quot;JDBC&quot;)]/ns1:value )"/>
                                 </tns:id>
                                 <xsl:choose>
                                    <xsl:when test="../../ns8:TransactionType='Account alias issue'">
                                       <xsl:choose>
                                          <xsl:when test="../../ns8:TransactionReason='VOID'">  
                                          <!--   <xsl:when test='starts-with (../../ns8:TransactionReason, "VOID" )'> -->
                                             <tns:transactionType>VOID</tns:transactionType>
                                          </xsl:when>
                                          <xsl:when test="../../ns8:TransactionReason='Return Scrap'">
                                             <tns:transactionType>SCP</tns:transactionType>
                                          </xsl:when>
                                         <!-- <xsl:otherwise>
                                             <tns:transactionType>SCP</tns:transactionType>
                                          </xsl:otherwise>  -->
                                       </xsl:choose>
                                    </xsl:when>
                                    <xsl:when test="../../ns8:TransactionType='WIP Completion' and ../../ns8:SubinventoryCode='OSP'">
                                       <tns:transactionType>PUR</tns:transactionType>
                                    </xsl:when>
                                    <xsl:when test="../../ns8:TransactionType = &quot;WIP Completion&quot; and ../../ns8:SubinventoryCode != &quot;OSP&quot;">
                                       <tns:transactionType>DoNotUse</tns:transactionType>
                                    </xsl:when>
                                    <xsl:when test="(../../ns8:TransactionType = &quot;RMA Receipt&quot;) and not (../../ns8:LPN != &quot;&quot; and ((substring (../../ns8:LPN, 1, 4 ) = &quot;1002&quot;  or substring (../../ns8:LPN, 1, 4 ) = &quot;1001&quot; ) or (substring (../../ns8:LPN, 1, 2 ) = &quot;NF&quot; and (substring (../../ns8:LPN, 5, 1 ) = &quot;2&quot; or substring (../../ns8:LPN, 5, 1 ) = &quot;1&quot;))))">
                                       <tns:transactionType>PUR</tns:transactionType>
                                    </xsl:when>
                                    <xsl:when test="../../ns8:TransactionType = &quot;MTL Status Change&quot; and ns8:LotStatus= &quot;QC Hot Ship&quot;">
                                       <tns:transactionType>LOAD</tns:transactionType>
                                    </xsl:when>
                                    <xsl:otherwise>
                                       <tns:transactionType>
                                          <xsl:value-of select="dvm:lookupValue (&quot;oramds:/apps/EIAMetadata/CommonArtifacts/dvm/EBS_QMOS_TRANSACTION_TYPE_NAME_MAP.dvm&quot;, &quot;TRANSACTION_TYPE_NAME&quot;, ../../ns8:TransactionType, &quot;QMOS_BUNDLE&quot;, &quot;&quot; )"/>
                                       </tns:transactionType>
                                    </xsl:otherwise>
                                 </xsl:choose>
                                 <tns:tagNo>
                                    <xsl:value-of select="../../ns8:LPN"/>
                                 </tns:tagNo>
                                 <xsl:if test="../../ns8:ListOfInvTrxSrcDetails/ns8:InvTrxSrcDetails/ns8:TrxSourceInfo5">
                                    <tns:bolSlipNo>
                                       <xsl:value-of select="substring(../../ns8:ListOfInvTrxSrcDetails/ns8:InvTrxSrcDetails/ns8:TrxSourceInfo6,1,10)"/>
                                    </tns:bolSlipNo>
                                 </xsl:if>
                                 <tns:cusCustomerId>
                                    <xsl:value-of select="../../ns8:ListOfInvTrxSrcDetails/ns8:InvTrxSrcDetails/ns8:TrxSourceInfo1"/>
                                 </tns:cusCustomerId>
                                 <tns:cusCustomerName>
                                    <xsl:value-of select="substring (../../ns8:ListOfInvTrxSrcDetails/ns8:InvTrxSrcDetails/ns8:TrxSourceInfo2,1,40)"/>
                                 </tns:cusCustomerName>
                                 <tns:bolCarrierName>
                                    <xsl:value-of select="substring (../../ns8:ListOfInvTrxSrcDetails/ns8:InvTrxSrcDetails/ns8:TrxSourceInfo5,1,30)"/>
                                 </tns:bolCarrierName>
                                 <tns:bolTruckPlateNo>
                                    <xsl:value-of select="substring (../../ns8:ListOfInvTrxSrcDetails/ns8:InvTrxSrcDetails/ns8:TrxSourceInfo3,1,15)"/>
                                 </tns:bolTruckPlateNo>
                                 <tns:bolShipDate>
                                    <xsl:value-of select="../../ns8:ListOfInvTrxSrcDetails/ns8:InvTrxSrcDetails/ns8:TrxSourceInfo4"/>
                                 </tns:bolShipDate>
                                 <tns:binFrom>
                                    <xsl:value-of select="../../ns8:XferLocator"/>
                                 </tns:binFrom>
                                 <tns:binTo>
                                    <xsl:value-of select="../../ns8:Locator"/>
                                 </tns:binTo>
                                 <tns:userId>SOAUSER</tns:userId>
                                 <tns:processed>N</tns:processed>
                                 <tns:processDate/>
                                 <tns:createDate>
                                    <xsl:value-of select="xp20:current-dateTime ( )"/>
                                 </tns:createDate>
                                 <tns:partCode>
                                    <xsl:value-of select="../../ns8:ItemNumber"/>
                                 </tns:partCode>
                                 <xsl:choose>
                                    <xsl:when test="xp20:compare (ns8:LotStatus, 'Active' ) = 0">
                                       <tns:disposition>Prime</tns:disposition>
                                    </xsl:when>
                                    <xsl:otherwise>
                                       <tns:disposition>Hold</tns:disposition>
                                    </xsl:otherwise>
                                 </xsl:choose>
                                 <tns:millHeat>
                                    <xsl:value-of select="ns8:LotNumber"/>
                                 </tns:millHeat>
                                 <tns:meltHeat>
                                    <xsl:value-of select="ns8:PrimaryLot"/>
                                 </tns:meltHeat>
                                 <xsl:choose>
                                    <xsl:when test="ns8:TrxLotQuantity and ns8:TrxLotQuantity != ''">
                                       <tns:weightLbs>
                                          <xsl:value-of select="oraext:query-database (concat (&quot;SELECT  inv_convert.inv_um_convert_new (&quot;, ../../ns8:ItemID, &quot;,null,&quot;, ../../ns8:OrgID, &quot;,null,&quot;, ns8:TrxLotQuantity, &quot;,'&quot;, ../../ns8:TrxUOMCode, &quot;','LBS',null,null, 'W') result from dual&quot; ), false(), false(), &quot;jdbc/ebsapps&quot; )"/>
                                       </tns:weightLbs>
                                    </xsl:when>
                                    <xsl:otherwise>
                                       <tns:weightLbs>
                                          <xsl:value-of select="oraext:query-database (concat (&quot;SELECT  inv_convert.inv_um_convert_new (&quot;, ../../ns8:ItemID, &quot;,null,&quot;, ../../ns8:OrgID, &quot;,null,&quot;, 0, &quot;,'&quot;, ../../ns8:TrxUOMCode, &quot;','LBS',null,null, 'W') result from dual&quot; ), false(), false(), &quot;jdbc/ebsapps&quot; )"/>
                                       </tns:weightLbs>
                                    </xsl:otherwise>
                                 </xsl:choose>
                              </tns:ApiBundleTransExt>
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:if>
                  </xsl:if>
               </xsl:for-each>
            </xsl:if>
         </xsl:for-each>
      </tns:ApiBundleTransExtCollection>
   </xsl:template>
</xsl:stylesheet>
