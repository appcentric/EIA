<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:eia="http://xmlns.eia.com/extensions/1.0" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns3="http://xmlns.eia.com/AO/EBiz/O2C/CustomerAO/1.0" xmlns:ns7="http://xmlns.eia.com/AO/EBiz/common/WhoAO/1.0" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns10="http://xmlns.oracle.com/pcbpel/adapter/db/Nucor/NUC_EBizCustomerBalance_ABS/DB_QueryCustomerTransactions" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:utl="http://www.oracle.com/XSL/Transform/java/com.eia.soa.util.Configuration" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:core="http://xmlns.eia.com/EO/Common/1.0" xmlns:ns5="http://xmlns.eia.com/AO/EBiz/P2P/OrganizationAO/1.0" xmlns:ns1="http://xmlns.eia.com/AO/EBiz/common/OperationResultAO/1.0" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_QueryCustomerByOrigRef" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://xmlns.eia.com/ABS/EBiz/O2C/CustomerBalanceABS/1.0" xmlns:custbalam="http://xmlns.eia.com/AO/EBiz/O2C/CustomerBalanceAM/1.0" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns4="http://xmlns.eia.com/AO/EBiz/common/AppsContextAO/1.0" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/NucorSOA/NUC_EBizCustomerBalance_ABS/DB_QueryCustomerByOrigRef" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns2="http://xmlns.eia.com/AO/EBiz/O2C/CustomerBalanceAO/1.0" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns6="http://xmlns.eia.com/AO/EBiz/common/CommonAO/1.0" xmlns:ns9="http://xmlns.oracle.com/pcbpel/adapter/db/Nucor/NUC_EBizCustomerBalance_ABS/DB_QueryCustomerAging" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/DB_QueryCustomerAging" xmlns:ns8="http://xmlns.oracle.com/pcbpel/adapter/db/DB_QueryCustomerTransactions" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns10 plt wsdl top tns xsd ns9 db ns8 ns3 ns7 soap12 soap mime core ns5 ns1 ns0 custbalam ns4 ns2 ns6 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../DB_QueryCustomerByOrigRef.wsdl"/>
            <oracle-xsl-mapper:rootElement name="XxnucCustOrigSysRefsVCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_QueryCustomerByOrigRef"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../DB_QueryCustomerAging.wsdl"/>
            <oracle-xsl-mapper:rootElement name="DB_QueryCustomerAgingOutputCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/DB_QueryCustomerAging"/>
            <oracle-xsl-mapper:param name="QueryCustomerAging_RespMsg.DB_QueryCustomerAgingOutputCollection"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../DB_QueryCustomerTransactions.wsdl"/>
            <oracle-xsl-mapper:rootElement name="DB_QueryCustomerTransactionsOutputCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/DB_QueryCustomerTransactions"/>
            <oracle-xsl-mapper:param name="QueryCustomerTransactions_RespMsg.DB_QueryCustomerTransactionsOutputCollection"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/EIAMetadata/ABS/EBiz/V1.0/O2C/CustomerBalanceABS.wsdl"/>
            <oracle-xsl-mapper:rootElement name="queryListOfCustomersBalanceResponseMessage" namespace="http://xmlns.eia.com/AO/EBiz/O2C/CustomerBalanceAM/1.0"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED SEP 09 14:03:32 CDT 2015].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="QueryCustomerAging_RespMsg.DB_QueryCustomerAgingOutputCollection"/>
  <xsl:param name="QueryCustomerTransactions_RespMsg.DB_QueryCustomerTransactionsOutputCollection"/>
  <xsl:template match="/">
    <custbalam:queryListOfCustomersBalanceResponseMessage>
      <custbalam:ListOfCustomersBalanceSummary>
        <ns2:Customer>
          <ns2:CustomerInfo>
            <ns3:Identifier>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:custAccountId"/>
            </ns3:Identifier>
            <ns3:CustomerName>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:accountName"/>
            </ns3:CustomerName>
            <ns3:CustomerNumber>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:accountNumber"/>
            </ns3:CustomerNumber>
            <ns3:ObjectVersionNumber>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:objectVersionNumber"/>
            </ns3:ObjectVersionNumber>
            <ns3:OrgName>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzParties/top:partyName"/>
            </ns3:OrgName>
            <ns3:OrigSystem>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:origSystem"/>
            </ns3:OrigSystem>
            <ns3:OrigSystemReference>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:origSystemReference"/>
            </ns3:OrigSystemReference>
            <!--ns3:ListOrigSystemReferences>
              <xsl:for-each select="/top:HzCustAccountsAllCollection/top:HzCustAccountsAll/top:xxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV">
                <ns3:OrigSystem>
                  <ns3:TableName>
                    <xsl:value-of select="top:ownerTableName"/>
                  </ns3:TableName>
                  <ns3:TableIdentifier>
                    <xsl:value-of select="../../top:xxnucCustBalSummV/top:custAccountId"/>
                  </ns3:TableIdentifier>
                  <ns3:OrigSystem>
                    <xsl:value-of select="top:origSystem"/>
                  </ns3:OrigSystem>
                  <ns3:OrigSystemReference>
                    <xsl:value-of select="top:origSystemReference"/>
                  </ns3:OrigSystemReference>
                  <ns3:ObjectVersionNumber>
                    <xsl:value-of select="top:objectVersionNumber"/>
                  </ns3:ObjectVersionNumber>
                  <ns3:Status>
                    <xsl:value-of select="top:status"/>
                  </ns3:Status>
                  <ns3:StartDate>
                    <xsl:value-of select="top:startDateActive"/>
                  </ns3:StartDate>
                  <ns3:EndDate>
                    <xsl:value-of select="top:endDateActive"/>
                  </ns3:EndDate>
                </ns3:OrigSystem>
              </xsl:for-each>
            </ns3:ListOrigSystemReferences-->
          </ns2:CustomerInfo>
          <ns2:CustomerBalanceSummary>
            <ns2:CustAccountId>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:custAccountId"/>
            </ns2:CustAccountId>
            <ns2:Currency>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:currency"/>
            </ns2:Currency>
            <ns2:BestCurrentReceivables>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:bestCurrentReceivables"/>
            </ns2:BestCurrentReceivables>
            <ns2:TotalDsoDaysCredit>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:totalDsoDaysCredit"/>
            </ns2:TotalDsoDaysCredit>
            <ns2:OpenInvoicesValue>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:opInvoicesValue"/>
            </ns2:OpenInvoicesValue>
            <ns2:OpenInvoicesCount>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:opInvoicesCount"/>
            </ns2:OpenInvoicesCount>
            <ns2:OpenCreditMemosCount>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:opCreditMemosCount"/>
            </ns2:OpenCreditMemosCount>
            <ns2:OpenCreditMemosValue>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:opCreditMemosValue"/>
            </ns2:OpenCreditMemosValue>
            <ns2:OpenDebitMemosCount>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:opDebitMemosCount"/>
            </ns2:OpenDebitMemosCount>
            <ns2:OpenDebitMemosValue>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:opDebitMemosValue"/>
            </ns2:OpenDebitMemosValue>
            <ns2:OpenDepositsValue>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:opDepositsValue"/>
            </ns2:OpenDepositsValue>
            <ns2:OpenDepositsCount>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:opDepositsCount"/>
            </ns2:OpenDepositsCount>
            <ns2:OpenBillsReceivablesValue>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:opBillsReceivablesValue"/>
            </ns2:OpenBillsReceivablesValue>
            <ns2:OpenBillsReceivablesCount>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:opBillsReceivablesCount"/>
            </ns2:OpenBillsReceivablesCount>
            <ns2:OpenChargebackValue>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:opChargebackValue"/>
            </ns2:OpenChargebackValue>
            <ns2:OpenChargebackCount>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:opChargebackCount"/>
            </ns2:OpenChargebackCount>
            <ns2:UnresolvedCashValue>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:unresolvedCashValue"/>
            </ns2:UnresolvedCashValue>
            <ns2:UnresolvedCashCount>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:unresolvedCashCount"/>
            </ns2:UnresolvedCashCount>
            <ns2:ReceiptsAtRiskValue>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:receiptsAtRiskValue"/>
            </ns2:ReceiptsAtRiskValue>
            <ns2:InvAmtInDispute>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:invAmtInDispute"/>
            </ns2:InvAmtInDispute>
            <ns2:DisputedInvCount>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:disputedInvCount"/>
            </ns2:DisputedInvCount>
            <ns2:PendingAdjValue>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:pendingAdjValue"/>
            </ns2:PendingAdjValue>
            <ns2:LastDunningDate>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:lastDunningDate"/>
            </ns2:LastDunningDate>
            <ns2:DunningCount>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:dunningCount"/>
            </ns2:DunningCount>
            <ns2:PastDueInvValue>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:pastDueInvValue"/>
            </ns2:PastDueInvValue>
            <ns2:PastDueInvInstCount>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:pastDueInvInstCount"/>
            </ns2:PastDueInvInstCount>
            <ns2:LastPaymentAmount>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:lastPaymentAmount"/>
            </ns2:LastPaymentAmount>
            <ns2:LastPaymentDate>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:lastPaymentDate"/>
            </ns2:LastPaymentDate>
            <ns2:LastPaymentNumber>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummVCollection/top:XxnucCustBalSummV/top:lastPaymentNumber"/>
            </ns2:LastPaymentNumber>
          </ns2:CustomerBalanceSummary>
          <ns2:ListOfCustomerSites>
            <xsl:for-each select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll">
              <ns2:CutomerSite>
                <ns2:CustomerSite>
                  <ns3:SiteNumber>
                    <xsl:value-of select="top:hzPartySites/top:partySiteNumber"/>
                  </ns3:SiteNumber>
                  <ns3:Status>
                    <xsl:value-of select="top:status"/>
                  </ns3:Status>
                  <ns3:ObjectVersionNumber>
                    <xsl:value-of select="top:hzPartySites/top:objectVersionNumber"/>
                  </ns3:ObjectVersionNumber>
                  <ns3:OrigSystemReference>
                    <xsl:value-of select="top:origSystemReference"/>
                  </ns3:OrigSystemReference>
                  <ns3:ListOrigSystemReferences>
                    <xsl:for-each select="top:xxnucSiteOrigSysRefsVCollection/top:XxnucSiteOrigSysRefsV">
                      <ns3:OrigSystem>
                        <ns3:TableName>
                          <xsl:value-of select="top:ownerTableName"/>
                        </ns3:TableName>
                        <ns3:OrigSystem>
                          <xsl:value-of select="top:origSystem"/>
                        </ns3:OrigSystem>
                        <ns3:OrigSystemReference>
                          <xsl:value-of select="top:origSystemReference"/>
                        </ns3:OrigSystemReference>
                        <ns3:ObjectVersionNumber>
                          <xsl:value-of select="top:objectVersionNumber"/>
                        </ns3:ObjectVersionNumber>
                        <ns3:Status>
                          <xsl:value-of select="top:status"/>
                        </ns3:Status>
                        <ns3:StartDate>
                          <xsl:value-of select="top:startDateActive"/>
                        </ns3:StartDate>
                        <ns3:EndDate>
                          <xsl:value-of select="top:endDateActive"/>
                        </ns3:EndDate>
                      </ns3:OrigSystem>
                    </xsl:for-each>
                  </ns3:ListOrigSystemReferences>
                </ns2:CustomerSite>
                <ns2:CustomerSiteBalanceSummary>
                  <ns2:CustAccountId>
                    <xsl:value-of select="../../top:custAccountId"/>
                  </ns2:CustAccountId>
                  <ns2:CustAcctSiteId>
                    <xsl:value-of select="top:custAcctSiteId"/>
                  </ns2:CustAcctSiteId>
                  <ns2:OrgId>
                    <xsl:value-of select="top:orgId"/>
                  </ns2:OrgId>
                  <ns2:Currency>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:currency"/>
                  </ns2:Currency>
                  <ns2:BestCurrentReceivables>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:bestCurrentReceivables"/>
                  </ns2:BestCurrentReceivables>
                  <ns2:TotalDsoDaysCredit>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:totalDsoDaysCredit"/>
                  </ns2:TotalDsoDaysCredit>
                  <ns2:OpenInvoicesValue>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:opInvoicesValue"/>
                  </ns2:OpenInvoicesValue>
                  <ns2:OpenInvoicesCount>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:opInvoicesCount"/>
                  </ns2:OpenInvoicesCount>
                  <ns2:OpenCreditMemosCount>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:opCreditMemosCount"/>
                  </ns2:OpenCreditMemosCount>
                  <ns2:OpenCreditMemosValue>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:opCreditMemosValue"/>
                  </ns2:OpenCreditMemosValue>
                  <ns2:OpenDebitMemosCount>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:opDebitMemosCount"/>
                  </ns2:OpenDebitMemosCount>
                  <ns2:OpenDebitMemosValue>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:opDebitMemosValue"/>
                  </ns2:OpenDebitMemosValue>
                  <ns2:OpenDepositsValue>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:opDepositsValue"/>
                  </ns2:OpenDepositsValue>
                  <ns2:OpenDepositsCount>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:opDepositsCount"/>
                  </ns2:OpenDepositsCount>
                  <ns2:OpenBillsReceivablesValue>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:opBillsReceivablesValue"/>
                  </ns2:OpenBillsReceivablesValue>
                  <ns2:OpenBillsReceivablesCount>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:opBillsReceivablesCount"/>
                  </ns2:OpenBillsReceivablesCount>
                  <ns2:OpenChargebackValue>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:opChargebackValue"/>
                  </ns2:OpenChargebackValue>
                  <ns2:OpenChargebackCount>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:opChargebackCount"/>
                  </ns2:OpenChargebackCount>
                  <ns2:UnresolvedCashValue>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:unresolvedCashValue"/>
                  </ns2:UnresolvedCashValue>
                  <ns2:UnresolvedCashCount>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:unresolvedCashCount"/>
                  </ns2:UnresolvedCashCount>
                  <ns2:ReceiptsAtRiskValue>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:receiptsAtRiskValue"/>
                  </ns2:ReceiptsAtRiskValue>
                  <ns2:InvAmtInDispute>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:invAmtInDispute"/>
                  </ns2:InvAmtInDispute>
                  <ns2:DisputedInvCount>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:disputedInvCount"/>
                  </ns2:DisputedInvCount>
                  <ns2:PendingAdjValue>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:pendingAdjValue"/>
                  </ns2:PendingAdjValue>
                  <ns2:LastDunningDate>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:lastDunningDate"/>
                  </ns2:LastDunningDate>
                  <ns2:DunningCount>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:dunningCount"/>
                  </ns2:DunningCount>
                  <ns2:PastDueInvValue>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:pastDueInvValue"/>
                  </ns2:PastDueInvValue>
                  <ns2:PastDueInvInstCount>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:pastDueInvInstCount"/>
                  </ns2:PastDueInvInstCount>
                  <ns2:LastPaymentAmount>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:lastPaymentAmount"/>
                  </ns2:LastPaymentAmount>
                  <ns2:LastPaymentDate>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:lastPaymentDate"/>
                  </ns2:LastPaymentDate>
                  <ns2:LastPaymentNumber>
                    <xsl:value-of select="top:xxnucCustSiteBalSummVCollection/top:XxnucCustSiteBalSummV/top:lastPaymentNumber"/>
                  </ns2:LastPaymentNumber>
                </ns2:CustomerSiteBalanceSummary>
              </ns2:CutomerSite>
            </xsl:for-each>
          </ns2:ListOfCustomerSites>
          <ns2:ListOfCustomerAging>
            <xsl:for-each select="$QueryCustomerAging_RespMsg.DB_QueryCustomerAgingOutputCollection/db:DB_QueryCustomerAgingOutputCollection/db:DB_QueryCustomerAgingOutput">
              <ns2:CustomerAging>
                <ns2:CustAcctId>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:custAccountId"/>
                </ns2:CustAcctId>
                <ns2:BucketLineId>
                  <xsl:value-of select="db:BUCKET_LINE_ID"/>
                </ns2:BucketLineId>
                <ns2:OrgId>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:orgId"/>
                </ns2:OrgId>
                <ns2:Currency>
                  <xsl:value-of select="db:CURRENCY"/>
                </ns2:Currency>
                <ns2:OutstandingBalance>
                  <xsl:value-of select="db:OUTSTANDING_BALANCE"/>
                </ns2:OutstandingBalance>
                <ns2:BucketLineName>
                  <xsl:value-of select="db:BUCKET_LINE"/>
                </ns2:BucketLineName>
                <ns2:Amount>
                  <xsl:value-of select="db:AMOUNT"/>
                </ns2:Amount>
                <ns2:BucketSeqNum>
                  <xsl:value-of select="db:BUCKET_SEQ_NUM"/>
                </ns2:BucketSeqNum>
                <ns2:CollectibleAmount>
                  <xsl:value-of select="db:COLLECTIBLE_AMOUNT"/>
                </ns2:CollectibleAmount>
                <ns2:ConsolidatedInvoices>
                  <xsl:value-of select="db:CONSOLIDATED_INVOICES"/>
                </ns2:ConsolidatedInvoices>
                <ns2:InvoiceCount>
                  <xsl:value-of select="db:INVOICE_COUNT"/>
                </ns2:InvoiceCount>
                <ns2:InvoiceAmount>
                  <xsl:value-of select="db:INVOICE_AMOUNT"/>
                </ns2:InvoiceAmount>
                <ns2:DMCount>
                  <xsl:value-of select="db:DM_COUNT"/>
                </ns2:DMCount>
                <ns2:DMAmount>
                  <xsl:value-of select="db:DM_AMOUNT"/>
                </ns2:DMAmount>
                <ns2:CBCount>
                  <xsl:value-of select="db:CB_COUNT"/>
                </ns2:CBCount>
                <ns2:CBAmount>
                  <xsl:value-of select="db:CB_AMOUNT"/>
                </ns2:CBAmount>
                <ns2:DisputedTranCount>
                  <xsl:value-of select="db:DISPUTED_TRAN_COUNT"/>
                </ns2:DisputedTranCount>
                <ns2:DisputedTranAmount>
                  <xsl:value-of select="db:DISPUTED_TRAN_AMOUNT"/>
                </ns2:DisputedTranAmount>
              </ns2:CustomerAging>
            </xsl:for-each>
          </ns2:ListOfCustomerAging>
          <ns2:ListOfCustomerTransaction>
            <xsl:for-each select="$QueryCustomerTransactions_RespMsg.DB_QueryCustomerTransactionsOutputCollection/ns8:DB_QueryCustomerTransactionsOutputCollection/ns8:DB_QueryCustomerTransactionsOutput">
              <ns2:CustomerTransaction>
                <ns2:PaymentScheduleId>
                  <xsl:value-of select="ns8:PAYMENT_SCHEDULE_ID"/>
                </ns2:PaymentScheduleId>
                <ns2:TrxNumber>
                  <xsl:value-of select="ns8:TRX_NUMBER"/>
                </ns2:TrxNumber>
                <ns2:TrxDate>
                  <xsl:value-of select="ns8:TRX_DATE"/>
                </ns2:TrxDate>
                <ns2:TermsSequenceNumber>
                  <xsl:value-of select="ns8:TERMS_SEQUENCE_NUMBER"/>
                </ns2:TermsSequenceNumber>
                <ns2:InvoiceCurrencyCode>
                  <xsl:value-of select="ns8:INVOICE_CURRENCY_CODE"/>
                </ns2:InvoiceCurrencyCode>
                <ns2:ExchangeRate>
                  <xsl:value-of select="ns8:EXCHANGE_RATE"/>
                </ns2:ExchangeRate>
                <ns2:GlDate>
                  <xsl:value-of select="ns8:GL_DATE"/>
                </ns2:GlDate>
                <ns2:AttributeCategory>
                  <xsl:value-of select="ns8:ATTRIBUTE_CATEGORY"/>
                </ns2:AttributeCategory>
                <ns2:Attribute1>
                  <xsl:value-of select="ns8:ATTRIBUTE1"/>
                </ns2:Attribute1>
                <ns2:Attribute2>
                  <xsl:value-of select="ns8:ATTRIBUTE2"/>
                </ns2:Attribute2>
                <ns2:Attribute3>
                  <xsl:value-of select="ns8:ATTRIBUTE3"/>
                </ns2:Attribute3>
                <ns2:Attribute4>
                  <xsl:value-of select="ns8:ATTRIBUTE4"/>
                </ns2:Attribute4>
                <ns2:Attribute5>
                  <xsl:value-of select="ns8:ATTRIBUTE5"/>
                </ns2:Attribute5>
                <ns2:Attribute6>
                  <xsl:value-of select="ns8:ATTRIBUTE6"/>
                </ns2:Attribute6>
                <ns2:Attribute7>
                  <xsl:value-of select="ns8:ATTRIBUTE7"/>
                </ns2:Attribute7>
                <ns2:Attribute8>
                  <xsl:value-of select="ns8:ATTRIBUTE8"/>
                </ns2:Attribute8>
                <ns2:Attribute9>
                  <xsl:value-of select="ns8:ATTRIBUTE9"/>
                </ns2:Attribute9>
                <ns2:Attribute10>
                  <xsl:value-of select="ns8:ATTRIBUTE10"/>
                </ns2:Attribute10>
                <ns2:Attribute11>
                  <xsl:value-of select="ns8:ATTRIBUTE11"/>
                </ns2:Attribute11>
                <ns2:Attribute12>
                  <xsl:value-of select="ns8:ATTRIBUTE12"/>
                </ns2:Attribute12>
                <ns2:Attribute13>
                  <xsl:value-of select="ns8:ATTRIBUTE13"/>
                </ns2:Attribute13>
                <ns2:Attribute14>
                  <xsl:value-of select="ns8:ATTRIBUTE14"/>
                </ns2:Attribute14>
                <ns2:Attribute15>
                  <xsl:value-of select="ns8:ATTRIBUTE15"/>
                </ns2:Attribute15>
                <ns2:CustomerId>
                  <xsl:value-of select="ns8:CUSTOMER_ID"/>
                </ns2:CustomerId>
                <ns2:CustomerSiteUseId>
                  <xsl:value-of select="ns8:CUSTOMER_SITE_USE_ID"/>
                </ns2:CustomerSiteUseId>
                <ns2:CustomerTrxId>
                  <xsl:value-of select="ns8:CUSTOMER_TRX_ID"/>
                </ns2:CustomerTrxId>
                <ns2:CustTrxTypeId>
                  <xsl:value-of select="ns8:CUST_TRX_TYPE_ID"/>
                </ns2:CustTrxTypeId>
                <ns2:CashReceiptId>
                  <xsl:value-of select="ns8:CASH_RECEIPT_ID"/>
                </ns2:CashReceiptId>
                <ns2:Class>
                  <xsl:value-of select="ns8:CLASS"/>
                </ns2:Class>
                <ns2:Status>
                  <xsl:value-of select="ns8:STATUS"/>
                </ns2:Status>
                <ns2:StateDsp>
                  <xsl:value-of select="ns8:STATE_DSP"/>
                </ns2:StateDsp>
                <ns2:State>
                  <xsl:value-of select="ns8:STATE"/>
                </ns2:State>
                <ns2:ReceiptConfirmedFlag>
                  <xsl:value-of select="ns8:RECEIPT_CONFIRMED_FLAG"/>
                </ns2:ReceiptConfirmedFlag>
                <ns2:SelectedForReceiptBatchId>
                  <xsl:value-of select="ns8:SELECTED_FOR_RECEIPT_BATCH_ID"/>
                </ns2:SelectedForReceiptBatchId>
                <ns2:CollectorLast>
                  <xsl:value-of select="ns8:COLLECTOR_LAST"/>
                </ns2:CollectorLast>
                <ns2:FollowUpCodeLast>
                  <xsl:value-of select="ns8:FOLLOW_UP_CODE_LAST"/>
                </ns2:FollowUpCodeLast>
                <ns2:InCollection>
                  <xsl:value-of select="ns8:IN_COLLECTION"/>
                </ns2:InCollection>
                <ns2:TermId>
                  <xsl:value-of select="ns8:TERM_ID"/>
                </ns2:TermId>
                <ns2:RacCustomerName>
                  <xsl:value-of select="ns8:RAC_CUSTOMER_NAME"/>
                </ns2:RacCustomerName>
                <ns2:RacCustomerNumber>
                  <xsl:value-of select="ns8:RAC_CUSTOMER_NUMBER"/>
                </ns2:RacCustomerNumber>
                <ns2:SuLocation>
                  <xsl:value-of select="ns8:SU_LOCATION"/>
                </ns2:SuLocation>
                <ns2:BsBatchSourceName>
                  <xsl:value-of select="ns8:BS_BATCH_SOURCE_NAME"/>
                </ns2:BsBatchSourceName>
                <ns2:TypeName>
                  <xsl:value-of select="ns8:TYPE_NAME"/>
                </ns2:TypeName>
                <ns2:ClassDsp>
                  <xsl:value-of select="ns8:AL_CLASS_MEANING"/>
                </ns2:ClassDsp>
                <ns2:DocSequenceValue>
                  <xsl:value-of select="ns8:DOC_SEQUENCE_VALUE"/>
                </ns2:DocSequenceValue>
                <ns2:CtPurchaseOrder>
                  <xsl:value-of select="ns8:CT_PURCHASE_ORDER"/>
                </ns2:CtPurchaseOrder>
                <ns2:CtPreviousCustomerTrxId>
                  <xsl:value-of select="ns8:CT_PREVIOUS_CUSTOMER_TRX_ID"/>
                </ns2:CtPreviousCustomerTrxId>
                <ns2:InterfaceHeaderContext>
                  <xsl:value-of select="ns8:INTERFACE_HEADER_CONTEXT"/>
                </ns2:InterfaceHeaderContext>
                <ns2:InterfaceHeaderAttribute1>
                  <xsl:value-of select="ns8:INTERFACE_HEADER_ATTRIBUTE1"/>
                </ns2:InterfaceHeaderAttribute1>
                <ns2:InterfaceHeaderAttribute2>
                  <xsl:value-of select="ns8:INTERFACE_HEADER_ATTRIBUTE2"/>
                </ns2:InterfaceHeaderAttribute2>
                <ns2:InterfaceHeaderAttribute3>
                  <xsl:value-of select="ns8:INTERFACE_HEADER_ATTRIBUTE3"/>
                </ns2:InterfaceHeaderAttribute3>
                <ns2:InterfaceHeaderAttribute4>
                  <xsl:value-of select="ns8:INTERFACE_HEADER_ATTRIBUTE4"/>
                </ns2:InterfaceHeaderAttribute4>
                <ns2:InterfaceHeaderAttribute5>
                  <xsl:value-of select="ns8:INTERFACE_HEADER_ATTRIBUTE5"/>
                </ns2:InterfaceHeaderAttribute5>
                <ns2:InterfaceHeaderAttribute6>
                  <xsl:value-of select="ns8:INTERFACE_HEADER_ATTRIBUTE6"/>
                </ns2:InterfaceHeaderAttribute6>
                <ns2:InterfaceHeaderAttribute7>
                  <xsl:value-of select="ns8:INTERFACE_HEADER_ATTRIBUTE7"/>
                </ns2:InterfaceHeaderAttribute7>
                <ns2:InterfaceHeaderAttribute8>
                  <xsl:value-of select="ns8:INTERFACE_HEADER_ATTRIBUTE8"/>
                </ns2:InterfaceHeaderAttribute8>
                <ns2:InterfaceHeaderAttribute9>
                  <xsl:value-of select="ns8:INTERFACE_HEADER_ATTRIBUTE9"/>
                </ns2:InterfaceHeaderAttribute9>
                <ns2:InterfaceHeaderAttribute10>
                  <xsl:value-of select="ns8:INTERFACE_HEADER_ATTRIBUTE10"/>
                </ns2:InterfaceHeaderAttribute10>
                <ns2:InterfaceHeaderAttribute11>
                  <xsl:value-of select="ns8:INTERFACE_HEADER_ATTRIBUTE11"/>
                </ns2:InterfaceHeaderAttribute11>
                <ns2:InterfaceHeaderAttribute12>
                  <xsl:value-of select="ns8:INTERFACE_HEADER_ATTRIBUTE12"/>
                </ns2:InterfaceHeaderAttribute12>
                <ns2:InterfaceHeaderAttribute13>
                  <xsl:value-of select="ns8:INTERFACE_HEADER_ATTRIBUTE13"/>
                </ns2:InterfaceHeaderAttribute13>
                <ns2:InterfaceHeaderAttribute14>
                  <xsl:value-of select="ns8:INTERFACE_HEADER_ATTRIBUTE14"/>
                </ns2:InterfaceHeaderAttribute14>
                <ns2:InterfaceHeaderAttribute15>
                  <xsl:value-of select="ns8:INTERFACE_HEADER_ATTRIBUTE15"/>
                </ns2:InterfaceHeaderAttribute15>
                <ns2:DueDays>
                  <xsl:value-of select="ns8:DUE_DAYS"/>
                </ns2:DueDays>
                <ns2:DueDate>
                  <xsl:value-of select="ns8:DUE_DATE"/>
                </ns2:DueDate>
                <ns2:AmountDueOriginal>
                  <xsl:value-of select="ns8:AMOUNT_DUE_ORIGINAL"/>
                </ns2:AmountDueOriginal>
                <ns2:AcctdAmountDueOriginal>
                  <xsl:value-of select="ns8:ACCTD_AMOUNT_DUE_ORIGINAL"/>
                </ns2:AcctdAmountDueOriginal>
                <ns2:AmountDueRemaining>
                  <xsl:value-of select="ns8:AMOUNT_DUE_REMAINING"/>
                </ns2:AmountDueRemaining>
                <ns2:AcctdAmountDueRemaining>
                  <xsl:value-of select="ns8:ACCTD_AMOUNT_DUE_REMAINING"/>
                </ns2:AcctdAmountDueRemaining>
                <ns2:StatusDsp>
                  <xsl:value-of select="ns8:AL_STATUS_MEANING"/>
                </ns2:StatusDsp>
                <ns2:ActualDateClosed>
                  <xsl:value-of select="ns8:ACTUAL_DATE_CLOSED"/>
                </ns2:ActualDateClosed>
                <ns2:GlDateClosed>
                  <xsl:value-of select="ns8:GL_DATE_CLOSED"/>
                </ns2:GlDateClosed>
                <ns2:AmountLineItemsOriginal>
                  <xsl:value-of select="ns8:AMOUNT_LINE_ITEMS_ORIGINAL"/>
                </ns2:AmountLineItemsOriginal>
                <ns2:AcctdAmountLineItemsOrig>
                  <xsl:value-of select="ns8:ACCTD_AMOUNT_LINE_ITEMS_ORIG"/>
                </ns2:AcctdAmountLineItemsOrig>
                <ns2:AmountLineItemsRemaining>
                  <xsl:value-of select="ns8:AMOUNT_LINE_ITEMS_REMAINING"/>
                </ns2:AmountLineItemsRemaining>
                <ns2:AcctdAmountLineItemsRemain>
                  <xsl:value-of select="ns8:ACCTD_AMOUNT_LINE_ITEMS_REMAIN"/>
                </ns2:AcctdAmountLineItemsRemain>
                <ns2:TaxOriginal>
                  <xsl:value-of select="ns8:TAX_ORIGINAL"/>
                </ns2:TaxOriginal>
                <ns2:AcctdTaxOriginal>
                  <xsl:value-of select="ns8:ACCTD_TAX_ORIGINAL"/>
                </ns2:AcctdTaxOriginal>
                <ns2:TaxRemaining>
                  <xsl:value-of select="ns8:TAX_REMAINING"/>
                </ns2:TaxRemaining>
                <ns2:AcctdTaxRemaining>
                  <xsl:value-of select="ns8:ACCTD_TAX_REMAINING"/>
                </ns2:AcctdTaxRemaining>
                <ns2:FreightOriginal>
                  <xsl:value-of select="ns8:FREIGHT_ORIGINAL"/>
                </ns2:FreightOriginal>
                <ns2:AcctdFreightOriginal>
                  <xsl:value-of select="ns8:ACCTD_FREIGHT_ORIGINAL"/>
                </ns2:AcctdFreightOriginal>
                <ns2:FreightRemaining>
                  <xsl:value-of select="ns8:FREIGHT_REMAINING"/>
                </ns2:FreightRemaining>
                <ns2:AcctdFreightRemaining>
                  <xsl:value-of select="ns8:ACCTD_FREIGHT_REMAINING"/>
                </ns2:AcctdFreightRemaining>
                <ns2:AmountAdjusted>
                  <xsl:value-of select="ns8:AMOUNT_ADJUSTED"/>
                </ns2:AmountAdjusted>
                <ns2:AcctdAmountAdjusted>
                  <xsl:value-of select="ns8:ACCTD_AMOUNT_ADJUSTED"/>
                </ns2:AcctdAmountAdjusted>
                <ns2:AmountAdjustedPending>
                  <xsl:value-of select="ns8:AMOUNT_ADJUSTED_PENDING"/>
                </ns2:AmountAdjustedPending>
                <ns2:AcctdAmountAdjustedPending>
                  <xsl:value-of select="ns8:ACCTD_AMOUNT_ADJUSTED_PENDING"/>
                </ns2:AcctdAmountAdjustedPending>
                <ns2:ReceivablesChargesCharged>
                  <xsl:value-of select="ns8:RECEIVABLES_CHARGES_CHARGED"/>
                </ns2:ReceivablesChargesCharged>
                <ns2:AcctdRecChargesCharged>
                  <xsl:value-of select="ns8:ACCTD_REC_CHARGES_CHARGED"/>
                </ns2:AcctdRecChargesCharged>
                <ns2:ReceivablesChargesRemaining>
                  <xsl:value-of select="ns8:RECEIVABLES_CHARGES_REMAINING"/>
                </ns2:ReceivablesChargesRemaining>
                <ns2:AcctdRecChargesRemaining>
                  <xsl:value-of select="ns8:ACCTD_REC_CHARGES_REMAINING"/>
                </ns2:AcctdRecChargesRemaining>
                <ns2:AmountApplied>
                  <xsl:value-of select="ns8:AMOUNT_APPLIED"/>
                </ns2:AmountApplied>
                <ns2:AcctdAmountApplied>
                  <xsl:value-of select="ns8:ACCTD_AMOUNT_APPLIED"/>
                </ns2:AcctdAmountApplied>
                <ns2:AmountCredited>
                  <xsl:value-of select="ns8:AMOUNT_CREDITED"/>
                </ns2:AmountCredited>
                <ns2:AcctdAmountCredited>
                  <xsl:value-of select="ns8:ACCTD_AMOUNT_CREDITED"/>
                </ns2:AcctdAmountCredited>
                <ns2:AmountInDispute>
                  <xsl:value-of select="ns8:AMOUNT_IN_DISPUTE"/>
                </ns2:AmountInDispute>
                <ns2:AcctdAmountInDispute>
                  <xsl:value-of select="ns8:ACCTD_AMOUNT_IN_DISPUTE"/>
                </ns2:AcctdAmountInDispute>
                <ns2:DisputeDate>
                  <xsl:value-of select="ns8:DISPUTE_DATE"/>
                </ns2:DisputeDate>
                <ns2:DiscountTakenEarned>
                  <xsl:value-of select="ns8:DISCOUNT_TAKEN_EARNED"/>
                </ns2:DiscountTakenEarned>
                <ns2:AcctdDiscountTakenEarned>
                  <xsl:value-of select="ns8:ACCTD_DISCOUNT_TAKEN_EARNED"/>
                </ns2:AcctdDiscountTakenEarned>
                <ns2:DiscountTakenUnearned>
                  <xsl:value-of select="ns8:DISCOUNT_TAKEN_UNEARNED"/>
                </ns2:DiscountTakenUnearned>
                <ns2:AcctdDiscountTakenUnearned>
                  <xsl:value-of select="ns8:ACCTD_DISCOUNT_TAKEN_UNEARNED"/>
                </ns2:AcctdDiscountTakenUnearned>
                <ns2:AlSelectedForReceiptFlag>
                  <xsl:value-of select="ns8:AL_SELECTED_FOR_RECEIPT_FLAG"/>
                </ns2:AlSelectedForReceiptFlag>
                <ns2:AlSelectedForReceiptCode>
                  <xsl:value-of select="ns8:AL_SELECTED_FOR_RECEIPT_CODE"/>
                </ns2:AlSelectedForReceiptCode>
                <ns2:AlReceiptConfirmedMeaning>
                  <xsl:value-of select="ns8:AL_RECEIPT_CONFIRMED_MEANING"/>
                </ns2:AlReceiptConfirmedMeaning>
                <ns2:CrSelectedReceiptNumber>
                  <xsl:value-of select="ns8:CR_SELECTED_RECEIPT_NUMBER"/>
                </ns2:CrSelectedReceiptNumber>
                <ns2:ArbSelectedBatchName>
                  <xsl:value-of select="ns8:ARB_SELECTED_BATCH_NAME"/>
                </ns2:ArbSelectedBatchName>
                <ns2:ArbSelectedBatchDate>
                  <xsl:value-of select="ns8:ARB_SELECTED_BATCH_DATE"/>
                </ns2:ArbSelectedBatchDate>
                <ns2:DaysPastDue>
                  <xsl:value-of select="ns8:DAYS_PAST_DUE"/>
                </ns2:DaysPastDue>
                <ns2:DunningDateLast>
                  <xsl:value-of select="ns8:DUNNING_DATE_LAST"/>
                </ns2:DunningDateLast>
                <ns2:CallDateLast>
                  <xsl:value-of select="ns8:CALL_DATE_LAST"/>
                </ns2:CallDateLast>
                <ns2:PromiseAmountLast>
                  <xsl:value-of select="ns8:PROMISE_AMOUNT_LAST"/>
                </ns2:PromiseAmountLast>
                <ns2:AcctdPromiseAmountLast>
                  <xsl:value-of select="ns8:ACCTD_PROMISE_AMOUNT_LAST"/>
                </ns2:AcctdPromiseAmountLast>
                <ns2:PromiseDateLast>
                  <xsl:value-of select="ns8:PROMISE_DATE_LAST"/>
                </ns2:PromiseDateLast>
                <ns2:FollowupLast>
                  <xsl:value-of select="ns8:AL_FOLLOW_UP_LAST_MEANING"/>
                </ns2:FollowupLast>
                <ns2:FollowUpDateLast>
                  <xsl:value-of select="ns8:FOLLOW_UP_DATE_LAST"/>
                </ns2:FollowUpDateLast>
                <ns2:AlInCollectionMeaning>
                  <xsl:value-of select="ns8:AL_IN_COLLECTION_MEANING"/>
                </ns2:AlInCollectionMeaning>
                <ns2:RatTermName>
                  <xsl:value-of select="ns8:RAT_TERM_NAME"/>
                </ns2:RatTermName>
                <ns2:ChargebackInvoiceNum>
                  <xsl:value-of select="ns8:CHARGEBACK_INVOICE_NUM"/>
                </ns2:ChargebackInvoiceNum>
                <ns2:ChargebackBatchSource>
                  <xsl:value-of select="ns8:CHARGEBACK_BATCH_SOURCE"/>
                </ns2:ChargebackBatchSource>
                <ns2:BillingNumber>
                  <xsl:value-of select="ns8:BILLING_NUMBER"/>
                </ns2:BillingNumber>
                <ns2:StagedDunningLevel>
                  <xsl:value-of select="ns8:STAGED_DUNNING_LEVEL"/>
                </ns2:StagedDunningLevel>
                <ns2:DunningLevelOverrideDate>
                  <xsl:value-of select="ns8:DUNNING_LEVEL_OVERRIDE_DATE"/>
                </ns2:DunningLevelOverrideDate>
                <ns2:RemittanceMethod>
                  <xsl:value-of select="ns8:REMITTANCE_METHOD"/>
                </ns2:RemittanceMethod>
                <ns2:ConsInvId>
                  <xsl:value-of select="ns8:CONS_INV_ID"/>
                </ns2:ConsInvId>
                <ns2:LastUpdatedBy>
                  <xsl:value-of select="ns8:LAST_UPDATED_BY"/>
                </ns2:LastUpdatedBy>
                <ns2:LastUpdateDate>
                  <xsl:value-of select="ns8:LAST_UPDATE_DATE"/>
                </ns2:LastUpdateDate>
                <ns2:LastUpdateLogin>
                  <xsl:value-of select="ns8:LAST_UPDATE_LOGIN"/>
                </ns2:LastUpdateLogin>
                <ns2:CreatedBy>
                  <xsl:value-of select="ns8:CREATED_BY"/>
                </ns2:CreatedBy>
                <ns2:CreationDate>
                  <xsl:value-of select="ns8:CREATION_DATE"/>
                </ns2:CreationDate>
                <ns2:Comments>
                  <xsl:value-of select="ns8:COMMENTS"/>
                </ns2:Comments>
                <ns2:LegalEntityId>
                  <xsl:value-of select="ns8:LEGAL_ENTITY_ID"/>
                </ns2:LegalEntityId>
                <ns2:BillingDate>
                  <xsl:value-of select="ns8:BILLING_DATE"/>
                </ns2:BillingDate>
                <ns2:OrgId>
                  <xsl:value-of select="ns8:ORG_ID"/>
                </ns2:OrgId>
              </ns2:CustomerTransaction>
            </xsl:for-each>
          </ns2:ListOfCustomerTransaction>
        </ns2:Customer>
      </custbalam:ListOfCustomersBalanceSummary>
    </custbalam:queryListOfCustomersBalanceResponseMessage>
    <!--xsl:template match="/">
  
  
    <custbalam:queryListOfCustomersBalanceResponseMessage>
      <custbalam:ListOfCustomersBalanceSummary>
        <ns2:Customer>
          <ns2:CustomerInfo>
            <ns3:CustomerNumber>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:accountNumber"/>
            </ns3:CustomerNumber>
            <ns3:OrigSystem>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:origSystem"/>
            </ns3:OrigSystem>
            <ns3:OrigSystemReference>
              <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:origSystemReference"/>
            </ns3:OrigSystemReference>
          </ns2:CustomerInfo>
          <xsl:for-each select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:xxnucCustBalSummV">
            <ns2:CustomerBalanceSummary>
              <ns2:CustAccountId>
                <xsl:value-of select="top:custAccountId"/>
              </ns2:CustAccountId>
              <ns2:SiteUseId>
                <xsl:value-of select="../top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:hzCustSiteUsesAllCollection/top:HzCustSiteUsesAll/top:siteUseId"/>
              </ns2:SiteUseId>
              <ns2:OrgId>
                <xsl:value-of select="../top:orgId"/>
              </ns2:OrgId>
              <ns2:Currency>
                <xsl:value-of select="top:currency"/>
              </ns2:Currency>
              <ns2:BestCurrentReceivables>
                <xsl:value-of select="top:bestCurrentReceivables"/>
              </ns2:BestCurrentReceivables>
              <ns2:TotalDsoDaysCredit>
                <xsl:value-of select="top:totalDsoDaysCredit"/>
              </ns2:TotalDsoDaysCredit>
              <ns2:OpenInvoicesValue>
                <xsl:value-of select="top:opInvoicesValue"/>
              </ns2:OpenInvoicesValue>
              <ns2:OpenInvoicesCount>
                <xsl:value-of select="top:opInvoicesCount"/>
              </ns2:OpenInvoicesCount>
              <ns2:OpenCreditMemosCount>
                <xsl:value-of select="top:opCreditMemosCount"/>
              </ns2:OpenCreditMemosCount>
              <ns2:OpenCreditMemosValue>
                <xsl:value-of select="top:opCreditMemosValue"/>
              </ns2:OpenCreditMemosValue>
              <ns2:OpenDebitMemosCount>
                <xsl:value-of select="top:opDebitMemosCount"/>
              </ns2:OpenDebitMemosCount>
              <ns2:OpenDebitMemosValue>
                <xsl:value-of select="top:opDebitMemosValue"/>
              </ns2:OpenDebitMemosValue>
              <ns2:OpenDepositsValue>
                <xsl:value-of select="top:opDepositsValue"/>
              </ns2:OpenDepositsValue>
              <ns2:OpenDepositsCount>
                <xsl:value-of select="top:opDepositsCount"/>
              </ns2:OpenDepositsCount>
              <ns2:OpenBillsReceivablesValue>
                <xsl:value-of select="top:opBillsReceivablesValue"/>
              </ns2:OpenBillsReceivablesValue>
              <ns2:OpenBillsReceivablesCount>
                <xsl:value-of select="top:opBillsReceivablesCount"/>
              </ns2:OpenBillsReceivablesCount>
              <ns2:OpenChargebackValue>
                <xsl:value-of select="top:opChargebackValue"/>
              </ns2:OpenChargebackValue>
              <ns2:OpenChargebackCount>
                <xsl:value-of select="top:opChargebackCount"/>
              </ns2:OpenChargebackCount>
              <ns2:UnresolvedCashValue>
                <xsl:value-of select="top:unresolvedCashValue"/>
              </ns2:UnresolvedCashValue>
              <ns2:UnresolvedCashCount>
                <xsl:value-of select="top:unresolvedCashCount"/>
              </ns2:UnresolvedCashCount>
              <ns2:ReceiptsAtRiskValue>
                <xsl:value-of select="top:receiptsAtRiskValue"/>
              </ns2:ReceiptsAtRiskValue>
              <ns2:InvAmtInDispute>
                <xsl:value-of select="top:invAmtInDispute"/>
              </ns2:InvAmtInDispute>
              <ns2:DisputedInvCount>
                <xsl:value-of select="top:disputedInvCount"/>
              </ns2:DisputedInvCount>
              <ns2:PendingAdjValue>
                <xsl:value-of select="top:pendingAdjValue"/>
              </ns2:PendingAdjValue>
              <ns2:LastDunningDate>
                <xsl:value-of select="top:lastDunningDate"/>
              </ns2:LastDunningDate>
              <ns2:DunningCount>
                <xsl:value-of select="top:dunningCount"/>
              </ns2:DunningCount>
              <ns2:PastDueInvValue>
                <xsl:value-of select="top:pastDueInvValue"/>
              </ns2:PastDueInvValue>
              <ns2:PastDueInvInstCount>
                <xsl:value-of select="top:pastDueInvInstCount"/>
              </ns2:PastDueInvInstCount>
              <ns2:LastPaymentAmount>
                <xsl:value-of select="top:lastPaymentAmount"/>
              </ns2:LastPaymentAmount>
              <ns2:LastPaymentDate>
                <xsl:value-of select="top:lastPaymentDate"/>
              </ns2:LastPaymentDate>
              <ns2:LastPaymentNumber>
                <xsl:value-of select="top:lastPaymentNumber"/>
              </ns2:LastPaymentNumber>
            </ns2:CustomerBalanceSummary>
          </xsl:for-each>
          <ns2:ListOfCustomerSites>
            <ns2:CutomerSite>
              <ns2:CustomerSiteBalanceSummary>
                <ns2:CustAccountId>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:custAccountId"/>
                </ns2:CustAccountId>
                <ns2:CustAcctSiteId>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:custAcctSiteId"/>
                </ns2:CustAcctSiteId>
                <ns2:Currency>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:currency"/>
                </ns2:Currency>
                <ns2:BestCurrentReceivables>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:bestCurrentReceivables"/>
                </ns2:BestCurrentReceivables>
                <ns2:TotalDsoDaysCredit>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:totalDsoDaysCredit"/>
                </ns2:TotalDsoDaysCredit>
                <ns2:OpenInvoicesValue>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:opInvoicesValue"/>
                </ns2:OpenInvoicesValue>
                <ns2:OpenInvoicesCount>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:opInvoicesCount"/>
                </ns2:OpenInvoicesCount>
                <ns2:OpenCreditMemosCount>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:opCreditMemosCount"/>
                </ns2:OpenCreditMemosCount>
                <ns2:OpenCreditMemosValue>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:opCreditMemosValue"/>
                </ns2:OpenCreditMemosValue>
                <ns2:OpenDebitMemosCount>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:opDebitMemosCount"/>
                </ns2:OpenDebitMemosCount>
                <ns2:OpenDebitMemosValue>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:opDebitMemosValue"/>
                </ns2:OpenDebitMemosValue>
                <ns2:OpenDepositsValue>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:opDepositsValue"/>
                </ns2:OpenDepositsValue>
                <ns2:OpenDepositsCount>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:opDepositsCount"/>
                </ns2:OpenDepositsCount>
                <ns2:OpenBillsReceivablesValue>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:opBillsReceivablesValue"/>
                </ns2:OpenBillsReceivablesValue>
                <ns2:OpenBillsReceivablesCount>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:opBillsReceivablesCount"/>
                </ns2:OpenBillsReceivablesCount>
                <ns2:OpenChargebackValue>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:opChargebackValue"/>
                </ns2:OpenChargebackValue>
                <ns2:OpenChargebackCount>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:opChargebackCount"/>
                </ns2:OpenChargebackCount>
                <ns2:UnresolvedCashValue>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:unresolvedCashValue"/>
                </ns2:UnresolvedCashValue>
                <ns2:UnresolvedCashCount>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:unresolvedCashCount"/>
                </ns2:UnresolvedCashCount>
                <ns2:ReceiptsAtRiskValue>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:receiptsAtRiskValue"/>
                </ns2:ReceiptsAtRiskValue>
                <ns2:InvAmtInDispute>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:invAmtInDispute"/>
                </ns2:InvAmtInDispute>
                <ns2:DisputedInvCount>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:disputedInvCount"/>
                </ns2:DisputedInvCount>
                <ns2:PendingAdjValue>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:pendingAdjValue"/>
                </ns2:PendingAdjValue>
                <ns2:LastDunningDate>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:lastDunningDate"/>
                </ns2:LastDunningDate>
                <ns2:DunningCount>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:dunningCount"/>
                </ns2:DunningCount>
                <ns2:PastDueInvValue>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:pastDueInvValue"/>
                </ns2:PastDueInvValue>
                <ns2:PastDueInvInstCount>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:pastDueInvInstCount"/>
                </ns2:PastDueInvInstCount>
                <ns2:LastPaymentAmount>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:lastPaymentAmount"/>
                </ns2:LastPaymentAmount>
                <ns2:LastPaymentDate>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:lastPaymentDate"/>
                </ns2:LastPaymentDate>
                <ns2:LastPaymentNumber>
                  <xsl:value-of select="/top:XxnucCustOrigSysRefsVCollection/top:XxnucCustOrigSysRefsV/top:hzCustAccountsAll/top:hzCustAcctSitesAllCollection/top:HzCustAcctSitesAll/top:xxnucCustSiteBalSummV/top:lastPaymentNumber"/>
                </ns2:LastPaymentNumber>
              </ns2:CustomerSiteBalanceSummary>
            </ns2:CutomerSite>
          </ns2:ListOfCustomerSites>
        </ns2:Customer>
      </custbalam:ListOfCustomersBalanceSummary>
    </custbalam:queryListOfCustomersBalanceResponseMessage>
  </xsl:template-->
  </xsl:template>
</xsl:stylesheet>