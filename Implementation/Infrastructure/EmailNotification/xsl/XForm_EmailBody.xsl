<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:MYORACLE="http://xmlns.oracle.com/xdb/XXNUC_LOGGING"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:Email="http://www.capgemini.com/Email" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl MYORACLE xsd Email bpws xp20 mhdr bpel2 oraext dvm hwf med ids bpm xdk xref ora socket ldap"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:ns0="http://xmlns.oracle.com/xdb/MYORACLE">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="../xsd/MYORACLE_EMAIL_NOTIFICATION_OBJ.xsd"/>
        <oracle-xsl-mapper:rootElement name="XXNUC_COMM_EML_NOTIF_TYP"
                                       namespace="http://xmlns.oracle.com/xdb/XXNUC_LOGGING"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="../xsd/HTMLEmail.xsd"/>
        <oracle-xsl-mapper:rootElement name="Root" namespace="http://www.capgemini.com/Email"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <oracle-xsl-mapper:mapShowPrefixes type="true"/>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [FRI JUN 19 20:00:23 IST 2015].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <Email:Root>
      <Email:HTMLString>
        <html>
          <body>
            <p>
              <strong>
                <span style="font-family:arial,helvetica,sans-serif;">Dear Team</span>
              </strong>
            </p>
            <p>
              <span style="font-family:arial,helvetica,sans-serif;">The process "<xsl:value-of select="/MYORACLE:XXNUC_COMM_EML_NOTIF_TYP/AUDIT_LOG/TRANSACTION_NAME"/>"
                                                                                                                                                                       has
                                                                                                                                                                       completed.</span>
            </p>
            <p>
              <span style="font-family:arial,helvetica,sans-serif;">Below are details</span>
            </p>
            <table border="1" cellpadding="0" cellspacing="0" height="60" width="950">
              <tbody>
                <tr>
                  <td>
                    <strong>
                      <span style="font-family:arial,helvetica,sans-serif;">Log Id</span>
                    </strong>
                  </td>
                  <td>
                    <strong>
                      <span style="font-family:arial,helvetica,sans-serif;">Transaction Id</span>
                    </strong>
                  </td>
                  <td>
                    <strong>
                      <span style="font-family:arial,helvetica,sans-serif;">Transaction Name</span>
                    </strong>
                  </td>
                  <td>
                    <strong>
                      <span style="font-family:arial,helvetica,sans-serif;">Source System</span>
                    </strong>
                  </td>
                  <td>
                    <strong>
                      <span style="font-family:arial,helvetica,sans-serif;">Target System</span>
                    </strong>
                  </td>
                  <td>
                    <strong>
                      <span style="font-family:arial,helvetica,sans-serif;">Competed Time</span>
                    </strong>
                  </td>
                  <td>
                    <strong>
                      <span style="font-family:arial,helvetica,sans-serif;">Status</span>
                    </strong>
                  </td>
                </tr>
                <tr>
                  <td>
                    <span style="font-family:arial,helvetica,sans-serif;">
                      <xsl:value-of select="/MYORACLE:XXNUC_COMM_EML_NOTIF_TYP/AUDIT_LOG/LOG_ID"/>
                    </span>
                  </td>
                  <td>
                    <span style="font-family:arial,helvetica,sans-serif;">
                      <xsl:value-of select="/MYORACLE:XXNUC_COMM_EML_NOTIF_TYP/AUDIT_LOG/TRANSACTION_ID"/>
                    </span>
                  </td>
                  <td>
                    <span style="font-family:arial,helvetica,sans-serif;">
                      <xsl:value-of select="/MYORACLE:XXNUC_COMM_EML_NOTIF_TYP/AUDIT_LOG/TRANSACTION_NAME"/>
                    </span>
                  </td>
                  <td>
                    <span style="font-family:arial,helvetica,sans-serif;">
                      <xsl:value-of select="/MYORACLE:XXNUC_COMM_EML_NOTIF_TYP/AUDIT_LOG/SOURCE_SYSTEM"/>
                    </span>
                  </td>
                  <td>
                    <span style="font-family:arial,helvetica,sans-serif;">
                      <xsl:value-of select="/MYORACLE:XXNUC_COMM_EML_NOTIF_TYP/AUDIT_LOG/TARGET_SYSTEM"/>
                    </span>
                  </td>
                  <td>
                    <span style="font-family:arial,helvetica,sans-serif;">
                      <xsl:value-of select="concat(substring-before(/MYORACLE:XXNUC_COMM_EML_NOTIF_TYP/AUDIT_LOG/CREATED_TIME,&quot;T&quot;),' ',substring-before(substring-after(/MYORACLE:XXNUC_COMM_EML_NOTIF_TYP/AUDIT_LOG/CREATED_TIME,&quot;T&quot;),&quot;.&quot;))"/>
                    </span>
                  </td>
                  <td>
                    <xsl:choose>
                      <xsl:when test="/MYORACLE:XXNUC_COMM_EML_NOTIF_TYP/AUDIT_LOG/TRANSACTION_STATUS = 'Success'">
                        <span style="font-family:arial,helvetica,sans-serif;color:#00ff00;">
                          <xsl:value-of select="/MYORACLE:XXNUC_COMM_EML_NOTIF_TYP/AUDIT_LOG/TRANSACTION_STATUS"/>
                        </span>
                      </xsl:when>
                      <xsl:when test="/MYORACLE:XXNUC_COMM_EML_NOTIF_TYP/AUDIT_LOG/TRANSACTION_STATUS = 'Error'">
                        <span style="font-family:arial,helvetica,sans-serif;color:#ff0000;">
                          <xsl:value-of select="/MYORACLE:XXNUC_COMM_EML_NOTIF_TYP/AUDIT_LOG/TRANSACTION_STATUS"/>
                        </span>
                      </xsl:when>
                      <xsl:when test="/MYORACLE:XXNUC_COMM_EML_NOTIF_TYP/AUDIT_LOG/TRANSACTION_STATUS = 'Warning'">
                        <span style="font-family:arial,helvetica,sans-serif;color:#ff8c00;">
                          <xsl:value-of select="/MYORACLE:XXNUC_COMM_EML_NOTIF_TYP/AUDIT_LOG/TRANSACTION_STATUS"/>
                        </span>
                      </xsl:when>
                      <xsl:otherwise>
                        <span style="font-family:arial,helvetica,sans-serif;">
                          <xsl:value-of select="/MYORACLE:XXNUC_COMM_EML_NOTIF_TYP/AUDIT_LOG/TRANSACTION_STATUS"/>
                        </span>
                      </xsl:otherwise>
                    </xsl:choose>
                  </td>
                </tr>
              </tbody>
            </table>
            <xsl:choose>
              <xsl:when test="count(/MYORACLE:XXNUC_COMM_EML_NOTIF_TYP/AUDIT_STEP_LOG/AUDIT_STEP_LOG_ITEM/STEP_LOG_ID[text()]) > 0">
                <p>
                  <span style="font-family:arial,helvetica,sans-serif;">Detail status of transaction is as below.</span>
                </p>
                <table border="1" cellpadding="0" cellspacing="0" height="60" width="950">
                  <tbody>
                    <tr>
                      <td>
                        <strong>
                          <span style="font-family:arial,helvetica,sans-serif;">Detail Log Id</span>
                        </strong>
                      </td>
                      <td>
                        <strong>
                          <span style="font-family:arial,helvetica,sans-serif;">Logging System</span>
                        </strong>
                      </td>
                      <td>
                        <strong>
                          <span style="font-family:arial,helvetica,sans-serif;">Log Type</span>
                        </strong>
                      </td>
                      <td>
                        <strong>
                          <span style="font-family:arial,helvetica,sans-serif;">Process Name</span>
                        </strong>
                      </td>
                      <td>
                        <strong>
                          <span style="font-family:arial,helvetica,sans-serif;">Message Code</span>
                        </strong>
                      </td>
                      <td>
                        <strong>
                          <span style="font-family:arial,helvetica,sans-serif;">Message Description</span>
                        </strong>
                      </td>
                    </tr>
                    <xsl:for-each select="/MYORACLE:XXNUC_COMM_EML_NOTIF_TYP/AUDIT_STEP_LOG/AUDIT_STEP_LOG_ITEM">
                      <xsl:sort select="STEP_LOG_ID"/>
                      <xsl:if test="string-length(LOG_TYPE) > 0">
                        <tr>
                          <td>
                            <span style="font-family:arial,helvetica,sans-serif;">
                              <xsl:value-of select="STEP_LOG_ID"/>
                            </span>
                          </td>
                          <td>
                            <span style="font-family:arial,helvetica,sans-serif;">
                              <xsl:value-of select="MESSAGE_SOURCE_SYSTEM"/>
                            </span>
                          </td>
                          <td>
                            <xsl:choose>
                              <xsl:when test="LOG_TYPE = 'Error'">
                                <span style="font-family:arial,helvetica,sans-serif;color:#ff0000;">
                                  <xsl:value-of select="LOG_TYPE"/>
                                </span>
                              </xsl:when>
                              <xsl:when test="LOG_TYPE = 'Warning'">
                                <span style="font-family:arial,helvetica,sans-serif;color:#ff8c00;">
                                  <xsl:value-of select="LOG_TYPE"/>
                                </span>
                              </xsl:when>
                              <xsl:otherwise>
                                <span style="font-family:arial,helvetica,sans-serif;">
                                  <xsl:value-of select="LOG_TYPE"/>
                                </span>
                              </xsl:otherwise>
                            </xsl:choose>
                          </td>
                          <td>
                            <span style="font-family:arial,helvetica,sans-serif;">
                              <xsl:value-of select="PROCESS_NAME"/>
                            </span>
                          </td>
                          <td>
                            <span style="font-family:arial,helvetica,sans-serif;">
                              <xsl:value-of select="MESSAGE_CODE"/>
                            </span>
                          </td>
                          <td>
                            <span style="font-family:arial,helvetica,sans-serif;">
                              <xsl:value-of select="MESSAGE_DESCRIPTION"/>
                            </span>
                          </td>
                        </tr>
                      </xsl:if>
                    </xsl:for-each>
                  </tbody>
                </table>
              </xsl:when>
              <xsl:otherwise>
                <p>
                  <span style="font-family:arial,helvetica,sans-serif;">Detail status of transaction is not available</span>
                </p>
              </xsl:otherwise>
            </xsl:choose>
            <p>
              <span style="font-family:arial,helvetica,sans-serif;">Please do not hesitate to contact the Service Desk
                                                                    should there be any further questions or inquiries
                                                                    regarding the transaction.<br/>Please quote
                                                                                                   Transaction Id or
                                                                                                   alternately Log Id.<br/><br/><strong>Thank
                                                                                                                                        You,<br/>Service
                                                                                                                                                 Desk.</strong><br/><br/><strong>PS:</strong>Please
                                                                                                                                                                                             note
                                                                                                                                                                                             that
                                                                                                                                                                                             this
                                                                                                                                                                                             mailbox
                                                                                                                                                                                             is
                                                                                                                                                                                             unattended.</span>
            </p>
          </body>
        </html>
      </Email:HTMLString>
    </Email:Root>
  </xsl:template>
</xsl:stylesheet>