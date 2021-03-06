<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:tns="http://xmlns.oracle.com/apps/otm"
                xmlns:ns1="http://schemas.oracle.com/service/bpel/common"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/APPS/WSH_OTM_REF_DATA_GEN_PKG/SEND_LOCATIONS/"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns1 ns0 tns xp20 db oraxsl mhdr oraext dvm xref socket"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/WshGenLocRefData/"
                xmlns:ref="http://xmlns.oracle.com/apps/wsh/outbound/util/WshOtmGlobalOutbound"
                xmlns:client="http://xmlns.oracle.com/apps/wsh/outbound/ref/WshSendLocRefDataToOtm">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../partnerWsdls/WshGenLocRefData.wsdl"/>
        <oracle-xsl-mapper:rootElement name="OutputParameters"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/APPS/WSH_OTM_REF_DATA_GEN_PKG/SEND_LOCATIONS/"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WshSendLocRefDataToOtm.wsdl"/>
        <oracle-xsl-mapper:rootElement name="parameters" namespace="http://schemas.oracle.com/service/bpel/common"/>
        <oracle-xsl-mapper:param name="l_deliveryIdFromInput"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WshSendLocRefDataToOtm.wsdl"/>
        <oracle-xsl-mapper:rootElement name="Transmission" namespace="http://xmlns.oracle.com/apps/otm"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [MON FEB 27 01:07:34 PST 2017].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="l_deliveryIdFromInput"/>
  <xsl:template match="/">
    <tns:Transmission>
      <tns:TransmissionHeader>
        <!-- <tns:Version>
          <xsl:value-of select="oraext:query-database(concat(&quot;SELECT NVL(ATTRIBUTE19,'NO') OTS_FLAG FROM HZ_CUST_SITE_USES_ALL WHERE SITE_USE_ID IN ( SELECT SHIP_TO_SITE_USE_ID FROM WSH_DELIVERY_DETAILS WHERE DELIVERY_DETAIL_ID IN ( SELECT DELIVERY_DETAIL_ID FROM WSH_DELIVERY_ASSIGNMENTS WHERE DELIVERY_ID = '&quot;,$l_deliveryIdFromInput/ns1:parameters/ns1:item/ns1:value,&quot;') AND SOURCE_CODE = 'OE')&quot;),false(),false(),&quot;jdbc/ebsapps&quot;)"/>
        </tns:Version>-->
        <tns:UserName>
          <xsl:value-of select="/db:OutputParameters/X_LOC_XMISSION_REC/USERNAME"/>
        </tns:UserName>
        <tns:Password>
          <xsl:value-of select="/db:OutputParameters/X_LOC_XMISSION_REC/PASSWORD"/>
        </tns:Password>
      </tns:TransmissionHeader>
      <tns:TransmissionBody>
        <xsl:for-each select="/db:OutputParameters/X_LOC_XMISSION_REC/LOCATIONS_TBL/LOCATIONS_TBL_ITEM">
          <xsl:variable name="posVar">
            <xsl:value-of select="position ( )"/>
          </xsl:variable>
          <!--<a>
        <xsl:value-of select = "$l_deliveryIdFromInput/ns1:parameters/ns1:item[ns1:msg = $posVar]/ns1:value"/>
        </a>-->
          <tns:GLogXMLElement>
            <xsl:variable name="tempLOCATION_XID" select="LOCATION_XID"/>
             <xsl:variable name="lastIndexL" select="oraext:last-index-within-string ($tempLOCATION_XID, '-' )"></xsl:variable>
            <xsl:variable name="LengthOfLocationField" select="string-length($tempLOCATION_XID)"/>
             <xsl:variable name="locationXID" select="substring($tempLOCATION_XID,$lastIndexL+2,$LengthOfLocationField)"/>
            <!-- <a>
             <xsl:value-of select = "$lastIndexL"/>
             </a>
             <b>
               <xsl:value-of select = "$LengthOfLocationField"/>
               </b>
               <a>
                 <xsl:value-of select = "$locationXID"/>
             </a>-->
           <xsl:variable name="attribute19"
                          select="oraext:query-database(concat(&quot;SELECT DISTINCT NVL(hcsu.attribute19, 'NO') OTS_FLAG FROM wsh_new_deliveries wnd,hz_cust_site_uses_all hcsu, wsh_delivery_assignments wda, wsh_Delivery_details wdd WHERE wnd.delivery_id = wda.delivery_id AND wnd.delivery_id IN &quot;,&quot;(&quot;,$l_deliveryIdFromInput/ns1:parameters/ns1:item/ns1:value,&quot;)&quot;, &quot;AND hcsu.site_use_id = wdd.ship_to_site_use_id AND wdd.ship_to_location_id =&quot;,&quot;'&quot;,$locationXID, &quot;'&quot;,&quot;AND wdd.source_code = 'OE' AND wdd.delivery_detail_id = wda.delivery_detail_id&quot;),false(),false(),&quot;jdbc/ebsapps&quot;)"/>
             <!-- <test>
              <xsl:value-of select = "$attribute19"/>
              </test>-->
            <tns:Location>
              <tns:TransactionCode>
                <xsl:value-of select="TXN_CODE"/>
              </tns:TransactionCode>
              <tns:LocationGid>
                <tns:Gid>
                  <tns:DomainName>
                    <xsl:value-of select="LOCATION_DN"/>
                  </tns:DomainName>
                  <tns:Xid>
                    <xsl:value-of select="LOCATION_XID"/>
                  </tns:Xid>
                </tns:Gid>
              </tns:LocationGid>
              <tns:LocationName>
                <xsl:value-of select="LOCATION_NAME"/>
              </tns:LocationName>
              <tns:Address>
                <xsl:for-each select="LOC_ADDR_TBL/LOC_ADDR_TBL_ITEM">
                  <tns:AddressLines>
                    <xsl:if test="string-length(SEQ_NUMBER) > 0.0">
                      <tns:SequenceNumber>
                        <xsl:value-of select="SEQ_NUMBER"/>
                      </tns:SequenceNumber>
                    </xsl:if>
                    <xsl:if test="string-length(ADRESS_LINE) > 0.0">
                      <tns:AddressLine>
                        <xsl:value-of select="ADRESS_LINE"/>
                      </tns:AddressLine>
                    </xsl:if>
                  </tns:AddressLines>
                </xsl:for-each>
                <xsl:if test="string-length(CITY) > 0.0">
                  <tns:City>
                    <xsl:value-of select="CITY"/>
                  </tns:City>
                </xsl:if>
                <xsl:if test="string-length(PROVINCE) > 0.0">
                  <tns:Province>
                    <xsl:value-of select="PROVINCE"/>
                  </tns:Province>
                </xsl:if>
                <xsl:if test="string-length(PROVINCE_CODE) > 0.0">
                  <tns:ProvinceCode>
                    <xsl:value-of select="PROVINCE_CODE"/>
                  </tns:ProvinceCode>
                </xsl:if>
                <xsl:if test="string-length(POSTAL_CODE) > 0.0">
                  <tns:PostalCode>
                    <xsl:value-of select="POSTAL_CODE"/>
                  </tns:PostalCode>
                </xsl:if>
                <xsl:if test="string-length(COUNTRY_CODE_XID) > 0.0">
                  <xsl:if test="string-length(COUNTRY_CODE_DN) > 0.0">
                    <tns:CountryCode3Gid>
                      <tns:Gid>
                        <tns:DomainName>
                          <xsl:value-of select="COUNTRY_CODE_DN"/>
                        </tns:DomainName>
                        <tns:Xid>
                          <xsl:value-of select="COUNTRY_CODE_XID"/>
                        </tns:Xid>
                      </tns:Gid>
                    </tns:CountryCode3Gid>
                  </xsl:if>
                </xsl:if>
              </tns:Address>
              <xsl:for-each select="LOC_REF_NUM_TBL/LOC_REF_NUM_TBL_ITEM">
                <tns:LocationRefnum>
                  <xsl:if test="string-length(LOC_REF_NUM_QUALIFIER_XID) > 0.0">
                    <xsl:if test="string-length(LOC_REF_NUM_QUALIFIER_DN) > 0.0">
                      <tns:LocationRefnumQualifierGid>
                        <tns:Gid>
                          <tns:DomainName>
                            <xsl:value-of select="LOC_REF_NUM_QUALIFIER_DN"/>
                          </tns:DomainName>
                          <tns:Xid>
                            <xsl:value-of select="LOC_REF_NUM_QUALIFIER_XID"/>
                          </tns:Xid>
                        </tns:Gid>
                      </tns:LocationRefnumQualifierGid>
                    </xsl:if>
                  </xsl:if>
                  <xsl:if test="string-length(LOC_REF_NUM_VALUE) > 0.0">
                    <tns:LocationRefnumValue>
                      <xsl:value-of select="LOC_REF_NUM_VALUE"/>
                    </tns:LocationRefnumValue>
                  </xsl:if>
                </tns:LocationRefnum>
              </xsl:for-each>
              <xsl:choose>
                <xsl:when test="count(LOC_CONTACT_TBL/LOC_CONTACT_TBL_ITEM) = 0">
                  <tns:Contact>
                    <tns:ContactGid>
                      <tns:Gid>
                        <tns:DomainName>SMG</tns:DomainName>
                        <tns:Xid>
                          <xsl:value-of select="$tempLOCATION_XID"/>
                        </tns:Xid>
                      </tns:Gid>
                    </tns:ContactGid>
                    <tns:TransactionCode>IU</tns:TransactionCode>
                    <tns:EmailAddress>nobody@nucor.com</tns:EmailAddress>
                    <tns:FirstName>NOBODY</tns:FirstName>
                    <tns:LastName>NOBODY</tns:LastName>
                    <tns:IsPrimaryContact>Y</tns:IsPrimaryContact>
                    <tns:CommunicationMethod>
                      <!--Sreepati -Hardcoded ComMethodRank as 1 -->
                      <tns:ComMethodRank>1</tns:ComMethodRank>
                      <tns:ComMethodGid>
                        <tns:Gid>
                          <tns:Xid>EMAIL</tns:Xid>
                        </tns:Gid>
                      </tns:ComMethodGid>
                    </tns:CommunicationMethod>
                  </tns:Contact>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:for-each select="LOC_CONTACT_TBL/LOC_CONTACT_TBL_ITEM">
                    <tns:Contact>
                      <tns:ContactGid>
                        <tns:Gid>
                          <tns:DomainName>
                            <xsl:value-of select="CONTACT_DN"/>
                          </tns:DomainName>
                          <xsl:choose>
                            <xsl:when test="position() = 1">
                              <tns:Xid>
                                <xsl:value-of select="$tempLOCATION_XID"/>
                              </tns:Xid>
                            </xsl:when>
                            <xsl:otherwise>
                              <tns:Xid>
                                <xsl:value-of select="CONTACT_XID"/>
                              </tns:Xid>
                            </xsl:otherwise>
                          </xsl:choose>
                        </tns:Gid>
                      </tns:ContactGid>
                      <tns:TransactionCode>
                        <xsl:value-of select="TXN_CODE"/>
                      </tns:TransactionCode>
                      <!--Sreepati - Added logic , if EBS is not sending any email address , then soa will transform the hard coded value-->
                      <xsl:choose>
                        <xsl:when test="string-length(EMAIL_ADDRESS) > 0.0">
                          <tns:EmailAddress>
                            <xsl:value-of select="EMAIL_ADDRESS"/>
                          </tns:EmailAddress>
                        </xsl:when>
                        <xsl:otherwise>
                          <tns:EmailAddress>nobody@nucor.com</tns:EmailAddress>
                        </xsl:otherwise>
                      </xsl:choose>
                    </tns:Contact>
                  </xsl:for-each>
                </xsl:otherwise>
              </xsl:choose>
              <tns:LocationRole>
                <xsl:if test="string-length(LOCATION_ROLE_XID) > 0.0">
                  <xsl:if test="string-length(LOCATION_ROLE_DN) > 0.0">
                    <tns:LocationRoleGid>
                      <tns:Gid>
                        <tns:DomainName>
                          <xsl:value-of select="LOCATION_ROLE_DN"/>
                        </tns:DomainName>
                        <tns:Xid>
                          <xsl:value-of select="LOCATION_ROLE_XID"/>
                        </tns:Xid>
                      </tns:Gid>
                    </tns:LocationRoleGid>
                  </xsl:if>
                </xsl:if>
              </tns:LocationRole>
              <xsl:if test="string-length(PARENT_LOCATION_XID) > 0.0">
                <xsl:if test="string-length(PARENT_LOCATION_DN) > 0.0">
                  <tns:ParentLocationGid>
                    <tns:LocationGid>
                      <tns:Gid>
                        <tns:DomainName>
                          <xsl:value-of select="PARENT_LOCATION_DN"/>
                        </tns:DomainName>
                        <tns:Xid>
                          <xsl:value-of select="PARENT_LOCATION_XID"/>
                        </tns:Xid>
                      </tns:Gid>
                    </tns:LocationGid>
                  </tns:ParentLocationGid>
                </xsl:if>
              </xsl:if>
              <xsl:if test="string-length(CORPORATION) > 0.0">
                <tns:Corporation>
                  <tns:CorporationName>
                    <xsl:value-of select="CORPORATION"/>
                  </tns:CorporationName>
                </tns:Corporation>
              </xsl:if>
              <xsl:if test="string-length(LOCATION_ROLE_XID) > 0.0">
                <xsl:if test="LOCATION_ROLE_XID = 'CARRIER'">
                  <tns:ServiceProvider>
                    <xsl:for-each select="SERVICE_PROV_TBL/SERVICE_PROV_TBL_ITEM">
                      <tns:ServiceProviderAlias>
                        <xsl:if test="string-length(SERVICE_PROV_QUALIFIER_XID) > 0.0">
                          <xsl:if test="string-length(SERVICE_PROV_QUALIFIER_DN) > 0.0">
                            <tns:ServiceProviderAliasQualifierGid>
                              <tns:Gid>
                                <tns:DomainName>
                                  <xsl:value-of select="SERVICE_PROV_QUALIFIER_DN"/>
                                </tns:DomainName>
                                <tns:Xid>
                                  <xsl:value-of select="SERVICE_PROV_QUALIFIER_XID"/>
                                </tns:Xid>
                              </tns:Gid>
                            </tns:ServiceProviderAliasQualifierGid>
                          </xsl:if>
                        </xsl:if>
                        <xsl:if test="string-length(SERVICE_PROV_ALIAS_VALUE) > 0.0">
                          <tns:ServiceProviderAliasValue>
                            <xsl:value-of select="SERVICE_PROV_ALIAS_VALUE"/>
                          </tns:ServiceProviderAliasValue>
                        </xsl:if>
                      </tns:ServiceProviderAlias>
                    </xsl:for-each>
                  </tns:ServiceProvider>
                </xsl:if>
              </xsl:if>
              <xsl:if test="string-length(IS_SHIPPER_KNOWN) > 0.0">
                <tns:IsShipperKnown>
                  <xsl:value-of select="IS_SHIPPER_KNOWN"/>
                </tns:IsShipperKnown>
              </xsl:if>
              <xsl:if test="string-length(SUBSTITUTE_LOCATION_XID) > 0.0">
                <xsl:if test="string-length(SUBSTITUTE_LOCATION_DN) > 0.0">
                  <tns:SubstituteLocation>
                    <tns:LocationRef>
                      <tns:LocationGid>
                        <tns:Gid>
                          <tns:DomainName>
                            <xsl:value-of select="SUBSTITUTE_LOCATION_DN"/>
                          </tns:DomainName>
                          <tns:Xid>
                            <xsl:value-of select="SUBSTITUTE_LOCATION_XID"/>
                          </tns:Xid>
                        </tns:Gid>
                      </tns:LocationGid>
                    </tns:LocationRef>
                  </tns:SubstituteLocation>
                </xsl:if>
              </xsl:if>
              <tns:FlexFieldStrings>
             
               <tns:Attribute1>
                  <xsl:value-of select="$attribute19"/>
                </tns:Attribute1>
               
              </tns:FlexFieldStrings>
            </tns:Location>
          </tns:GLogXMLElement>
        </xsl:for-each>
      </tns:TransmissionBody>
    </tns:Transmission>
  </xsl:template>
</xsl:stylesheet>
