CREATE OR REPLACE VIEW error_messages_v as 
SElecT e.error_id,e.timestamp,e.notified,e.notifier_role,e1.* from error_messages e
,xmltable(xmlnamespaces('http://xmlns.eia.com/EO/Common/1.0' as "ns1"),'/ns1:Fault' passing XMLType(e.fault_xml)
COLUMNS ID varchar2(2000) path 'ns1:FaultingService/ns1:ID'
       ,Process varchar2(2000) path 'ns1:FaultingService/ns1:Process'
       ,InstanceID varchar2(2000) path 'ns1:FaultingService/ns1:InstanceID'
       ,Code varchar2(2000) path 'ns1:FaultMessage/ns1:Code'
       ,Text varchar2(2000) path 'ns1:FaultMessage/ns1:Text'
       ,Severity varchar2(2000) path 'ns1:FaultMessage/ns1:Severity'
       ,Stack varchar2(2000) path 'ns1:FaultMessage/ns1:Stack'
       ,ReportingDateTime varchar2(2000) path 'ns1:ReportingDateTime'
       ,CorrectiveAction varchar2(2000) path 'ns1:CorrectiveAction'
) e1
/