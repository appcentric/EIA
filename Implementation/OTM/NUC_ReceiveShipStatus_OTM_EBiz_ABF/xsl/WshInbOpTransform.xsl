<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:ns0="http://xmlns.oracle.com/apps/otm"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                exclude-result-prefixes="xsl ns0 xsd ldap xp20 bpws ora orcl"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/AO/OTM/common/V1.0/GLogXML.xsd"/>
        <oracle-xsl-mapper:rootElement name="Transmission" namespace="http://xmlns.oracle.com/apps/otm"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/AO/OTM/common/V1.0/GLogXML.xsd"/>
        <oracle-xsl-mapper:rootElement name="TransmissionAck" namespace="http://xmlns.oracle.com/apps/otm"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <oracle-xsl-mapper:mapShowPrefixes type="true"/>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [FRI NOV 06 03:55:05 CST 2015].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <ns0:TransmissionAck>
      <ns0:EchoedTransmissionHeader>
        <ns0:TransmissionHeader>
          <ns0:Version>
            <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:Version"/>
          </ns0:Version>
          <ns0:TransmissionType>
            <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:TransmissionType"/>
          </ns0:TransmissionType>
          <ns0:StagingInfo>
            <ns0:StagingQuery>
              <ns0:IntSavedQuery>
                <ns0:IntSavedQueryGid>
                  <ns0:Gid>
                    <ns0:DomainName>
                      <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:StagingInfo/ns0:StagingQuery/ns0:IntSavedQuery/ns0:IntSavedQueryGid/ns0:Gid/ns0:DomainName"/>
                    </ns0:DomainName>
                    <ns0:Xid>
                      <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:StagingInfo/ns0:StagingQuery/ns0:IntSavedQuery/ns0:IntSavedQueryGid/ns0:Gid/ns0:Xid"/>
                    </ns0:Xid>
                  </ns0:Gid>
                </ns0:IntSavedQueryGid>
                <xsl:for-each select="/ns0:Transmission/ns0:TransmissionHeader/ns0:StagingInfo/ns0:StagingQuery/ns0:IntSavedQuery/ns0:IntSavedQueryArg">
                  <ns0:IntSavedQueryArg>
                    <ns0:ArgName>
                      <xsl:value-of select="ns0:ArgName"/>
                    </ns0:ArgName>
                    <ns0:ArgValue>
                      <xsl:value-of select="ns0:ArgValue"/>
                    </ns0:ArgValue>
                  </ns0:IntSavedQueryArg>
                </xsl:for-each>
                <ns0:IsMultiMatch>
                  <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:StagingInfo/ns0:StagingQuery/ns0:IntSavedQuery/ns0:IsMultiMatch"/>
                </ns0:IsMultiMatch>
                <ns0:MaximumMatch>
                  <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:StagingInfo/ns0:StagingQuery/ns0:IntSavedQuery/ns0:MaximumMatch"/>
                </ns0:MaximumMatch>
              </ns0:IntSavedQuery>
            </ns0:StagingQuery>
            <ns0:StagingProcess>
              <ns0:IntSavedQuery>
                <ns0:IntSavedQueryGid>
                  <ns0:Gid>
                    <ns0:DomainName>
                      <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:StagingInfo/ns0:StagingProcess/ns0:IntSavedQuery/ns0:IntSavedQueryGid/ns0:Gid/ns0:DomainName"/>
                    </ns0:DomainName>
                    <ns0:Xid>
                      <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:StagingInfo/ns0:StagingProcess/ns0:IntSavedQuery/ns0:IntSavedQueryGid/ns0:Gid/ns0:Xid"/>
                    </ns0:Xid>
                  </ns0:Gid>
                </ns0:IntSavedQueryGid>
                <xsl:for-each select="/ns0:Transmission/ns0:TransmissionHeader/ns0:StagingInfo/ns0:StagingProcess/ns0:IntSavedQuery/ns0:IntSavedQueryArg">
                  <ns0:IntSavedQueryArg>
                    <ns0:ArgName>
                      <xsl:value-of select="ns0:ArgName"/>
                    </ns0:ArgName>
                    <ns0:ArgValue>
                      <xsl:value-of select="ns0:ArgValue"/>
                    </ns0:ArgValue>
                  </ns0:IntSavedQueryArg>
                </xsl:for-each>
                <ns0:IsMultiMatch>
                  <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:StagingInfo/ns0:StagingProcess/ns0:IntSavedQuery/ns0:IsMultiMatch"/>
                </ns0:IsMultiMatch>
                <ns0:MaximumMatch>
                  <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:StagingInfo/ns0:StagingProcess/ns0:IntSavedQuery/ns0:MaximumMatch"/>
                </ns0:MaximumMatch>
              </ns0:IntSavedQuery>
            </ns0:StagingProcess>
          </ns0:StagingInfo>
          <ns0:TransmissionCreateDateTime>
            <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:TransmissionCreateDateTime"/>
          </ns0:TransmissionCreateDateTime>
          <ns0:TransactionCount>
            <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:TransactionCount"/>
          </ns0:TransactionCount>
          <ns0:SenderHostName>
            <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:SenderHostName"/>
          </ns0:SenderHostName>
          <ns0:ReceiverHostName>
            <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:ReceiverHostName"/>
          </ns0:ReceiverHostName>
          <ns0:UserName>
            <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:UserName"/>
          </ns0:UserName>
          <ns0:Password>
            <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:Password"/>
          </ns0:Password>
          <ns0:SenderTransmissionNo>
            <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:SenderTransmissionNo"/>
          </ns0:SenderTransmissionNo>
          <ns0:ReferenceTransmissionNo>
            <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:ReferenceTransmissionNo"/>
          </ns0:ReferenceTransmissionNo>
          <ns0:SuppressTransmissionAck>
            <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:SuppressTransmissionAck"/>
          </ns0:SuppressTransmissionAck>
          <ns0:AckSpec>
            <ns0:ComMethodGid>
              <ns0:Gid>
                <ns0:DomainName>
                  <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:AckSpec/ns0:ComMethodGid/ns0:Gid/ns0:DomainName"/>
                </ns0:DomainName>
                <ns0:Xid>
                  <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:AckSpec/ns0:ComMethodGid/ns0:Gid/ns0:Xid"/>
                </ns0:Xid>
              </ns0:Gid>
            </ns0:ComMethodGid>
            <ns0:EmailAddress>
              <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:AckSpec/ns0:EmailAddress"/>
            </ns0:EmailAddress>
            <ns0:SmtpHost>
              <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:AckSpec/ns0:SmtpHost"/>
            </ns0:SmtpHost>
            <ns0:ServletURL>
              <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:AckSpec/ns0:ServletURL"/>
            </ns0:ServletURL>
            <ns0:AckOption>
              <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:AckSpec/ns0:AckOption"/>
            </ns0:AckOption>
            <ns0:ContactGid>
              <ns0:Gid>
                <ns0:DomainName>
                  <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:AckSpec/ns0:ContactGid/ns0:Gid/ns0:DomainName"/>
                </ns0:DomainName>
                <ns0:Xid>
                  <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:AckSpec/ns0:ContactGid/ns0:Gid/ns0:Xid"/>
                </ns0:Xid>
              </ns0:Gid>
            </ns0:ContactGid>
          </ns0:AckSpec>
          <ns0:IsProcessInSequence>
            <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:IsProcessInSequence"/>
          </ns0:IsProcessInSequence>
          <ns0:StopProcessOnError>
            <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:StopProcessOnError"/>
          </ns0:StopProcessOnError>
          <xsl:for-each select="/ns0:Transmission/ns0:TransmissionHeader/ns0:ProcessGrouping">
            <ns0:ProcessGrouping>
              <ns0:ProcessGroup>
                <xsl:value-of select="ns0:ProcessGroup"/>
              </ns0:ProcessGroup>
              <ns0:ProcessGroupOwner>
                <xsl:value-of select="ns0:ProcessGroupOwner"/>
              </ns0:ProcessGroupOwner>
              <ns0:InSequence>
                <xsl:value-of select="ns0:InSequence"/>
              </ns0:InSequence>
              <ns0:StopProcessOnError>
                <xsl:value-of select="ns0:StopProcessOnError"/>
              </ns0:StopProcessOnError>
            </ns0:ProcessGrouping>
          </xsl:for-each>
          <ns0:NotifyInfo>
            <ns0:ContactGid>
              <ns0:Gid>
                <ns0:DomainName>
                  <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:NotifyInfo/ns0:ContactGid/ns0:Gid/ns0:DomainName"/>
                </ns0:DomainName>
                <ns0:Xid>
                  <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:NotifyInfo/ns0:ContactGid/ns0:Gid/ns0:Xid"/>
                </ns0:Xid>
              </ns0:Gid>
            </ns0:ContactGid>
            <ns0:ExternalSystemGid>
              <ns0:Gid>
                <ns0:DomainName>
                  <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:NotifyInfo/ns0:ExternalSystemGid/ns0:Gid/ns0:DomainName"/>
                </ns0:DomainName>
                <ns0:Xid>
                  <xsl:value-of select="/ns0:Transmission/ns0:TransmissionHeader/ns0:NotifyInfo/ns0:ExternalSystemGid/ns0:Gid/ns0:Xid"/>
                </ns0:Xid>
              </ns0:Gid>
            </ns0:ExternalSystemGid>
          </ns0:NotifyInfo>
          <xsl:for-each select="/ns0:Transmission/ns0:TransmissionHeader/ns0:Refnum">
            <ns0:Refnum>
              <ns0:RefnumQualifierGid>
                <ns0:Gid>
                  <ns0:DomainName>
                    <xsl:value-of select="ns0:RefnumQualifierGid/ns0:Gid/ns0:DomainName"/>
                  </ns0:DomainName>
                  <ns0:Xid>
                    <xsl:value-of select="ns0:RefnumQualifierGid/ns0:Gid/ns0:Xid"/>
                  </ns0:Xid>
                </ns0:Gid>
              </ns0:RefnumQualifierGid>
              <ns0:RefnumValue>
                <xsl:value-of select="ns0:RefnumValue"/>
              </ns0:RefnumValue>
            </ns0:Refnum>
          </xsl:for-each>
        </ns0:TransmissionHeader>
      </ns0:EchoedTransmissionHeader>
      <xsl:if test="1.0 &lt; 2.0">
        <ns0:TransmissionAckStatus/>
      </xsl:if>
      <xsl:if test="1.0 &lt; 2.0">
        <ns0:TransmissionAckReason/>
      </xsl:if>
      <xsl:if test="1.0 &lt; 2.0">
        <ns0:StackTrace/>
      </xsl:if>
      <xsl:if test="1.0 &lt; 2.0">
        <ns0:TransmissionText/>
      </xsl:if>
    </ns0:TransmissionAck>
  </xsl:template>
</xsl:stylesheet>