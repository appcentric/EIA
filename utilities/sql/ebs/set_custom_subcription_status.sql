-- VIVEK SRINIVASAN
-- 8/27
-- Utility script to enable or disable subcriptions
-- Script does a direct update to the wf_event_subscriptions table
-- The script is mimicked to perform the UI Operation
-- Assumption : Subscription is located here based on rule_funtion and event.
-- sqlplus apps/<password> @set_custom_sub_status.sql ENABLED
-- sqlplus apps/<password> @set_custom_sub_status.sql DISABLED
SET verify off
declare
l_updated boolean;
l_status varchar2(240) := '&1'; --','ENABLED' ;-- 'ENABLED'
function set_sub_status(p_event_name in varchar2, p_rule_name varchar2, p_status IN VARCHAR2)
return boolean
is
cursor c_sub_info
is
select wes.* from wf_event_subscriptions wes, wf_events we
where wes.rule_function = set_sub_status.p_rule_name
and we.guid = wes.event_filter_guid
and we.name = set_sub_status.p_event_name
and wes.customization_level='U'
and wes.action_code='CUSTOM_RG'
and wes.status <> set_sub_status.p_status
;
l_sub_found boolean;
rec_sub_info c_sub_info%rowtype;
begin

open c_sub_info; 
fetch c_sub_info into rec_sub_info;
if c_sub_info%notfound 
then
close c_sub_info;
l_sub_found := false;
else 
close c_sub_info;
l_sub_found := true;
end if;

if l_sub_found  
then 
update wf_event_subscriptions set
status            = p_status,
licensed_flag      = rec_sub_info.licensed_flag
where guid = rec_sub_info.guid;
wf_event.raise('oracle.apps.wf.event.subscription.update', rec_sub_info.guid);
wf_bes_cache.SetMetaDataUploaded();
return true;
else 
return false;
end if;
end set_sub_status;
begin
  IF l_status NOT IN ('ENABLED','DISABLED')
  THEN
    Wf_Core.Token('REASON','Invalid Status - ' ||l_status);
	Wf_Core.Raise('WFSQL_INTERNAL');
  END IF;

  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.Organization.update',p_rule_name=> 'XXNUC_MDM_SUPPLIERS_INT.CAPTURE_SUPPLIER',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.Organization.update',p_rule_name=> 'XXNUC_MDM_CUST_INT.CAPTURE_CUST_SITE_USE',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.CustAccount.update',p_rule_name=> 'XXNUC_MDM_CUST_INT.CAPTURE_CUST_SITE_USE',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.CustAccount.update',p_rule_name=> 'XXNUC_MDM_SUPPLIERS_INT.CAPTURE_SUPPLIER',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.Location.update',p_rule_name=> 'XXNUC_MDM_CUST_INT.CAPTURE_CUST_SITE_USE',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.Location.update',p_rule_name=> 'XXNUC_MDM_SUPPLIERS_INT.CAPTURE_SUPPLIER',p_status => l_status); 
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.PartySite.update',p_rule_name=> 'XXNUC_MDM_CUST_INT.CAPTURE_CUST_SITE_USE',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.CustAcctSite.update',p_rule_name=> 'XXNUC_MDM_CUST_INT.CAPTURE_CUST_SITE_USE',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.CustAcctSiteUse.update',p_rule_name=> 'XXNUC_MDM_CUST_INT.CAPTURE_CUST_SITE_USE',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.CustAcctSiteUse.create',p_rule_name=> 'XXNUC_MDM_CUST_INT.CAPTURE_CUST_SITE_USE',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.CustomerProfile.update',p_rule_name=> 'XXNUC_MDM_CUST_INT.CAPTURE_CUST_SITE_USE',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.CustProfileAmt.update',p_rule_name=> 'XXNUC_MDM_CUST_INT.CAPTURE_CUST_SITE_USE',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.ContactPoint.create',p_rule_name=> 'XXNUC_MDM_CUST_INT.PARTY_CONTACTS',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.CustProfileAmt.update',p_rule_name=> 'XXNUC_MDM_SUPPLIERS_INT.CAPTURE_SUPPLIER_CONTACTS',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.ContactPoint.update',p_rule_name=> 'XXNUC_MDM_SUPPLIERS_INT.CAPTURE_SUPPLIER_CONTACTS',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.ContactPoint.update',p_rule_name=> 'XXNUC_MDM_CUST_INT.PARTY_CONTACTS',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.OrgContact.create',p_rule_name=> 'XXNUC_MDM_SUPPLIERS_INT.CAPTURE_SUPPLIER_CONTACTS',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.OrgContact.update',p_rule_name=> 'XXNUC_MDM_SUPPLIERS_INT.CAPTURE_SUPPLIER_CONTACTS',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.Organization.update',p_rule_name=> 'XXNUC_MDM_CUST_INT.PARTY_CONTACTS',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.Person.update',p_rule_name=> 'XXNUC_MDM_CUST_INT.PARTY_CONTACTS',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.Person.update',p_rule_name=> 'XXNUC_MDM_SUPPLIERS_INT.CAPTURE_SUPPLIER_CONTACTS',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.Relationship.update',p_rule_name=> 'XXNUC_MDM_CUST_INT.PARTY_CONTACTS',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ap.supplier.event',p_rule_name=> 'XXNUC_MDM_SUPPLIERS_INT.CAPTURE_SUPPLIER_CONTACTS',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ap.supplier.event',p_rule_name=> 'XXNUC_MDM_SUPPLIERS_INT.CAPTURE_SUPPLIER',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.pos.sdh.ext.postAttributeChange',p_rule_name=> 'XXNUC_MDM_SUPPLIERS_INT.CAPTURE_SUPPLIER_EXTN',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.CustomerProfile.create',p_rule_name=> 'XXNUC_MDM_CUST_INT.CAPTURE_CUST_SITE_USE',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.CustProfileAmt.create',p_rule_name=> 'XXNUC_MDM_CUST_INT.CAPTURE_CUST_SITE_USE',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.CodeAssignment.create',p_rule_name=> 'XXNUC_MDM_CUST_INT.CAPTURE_CUST_SITE_USE',p_status => l_status);
  l_updated := set_sub_status(p_event_name => 'oracle.apps.ar.hz.CodeAssignment.update',p_rule_name=> 'XXNUC_MDM_CUST_INT.CAPTURE_CUST_SITE_USE',p_status => l_status);
end;