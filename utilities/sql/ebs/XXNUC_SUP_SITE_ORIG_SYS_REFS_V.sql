CREATE OR REPLACE VIEW XXNUC_SUP_SITE_ORIG_SYS_REFS_V
(
/*
Description: View used by Supplier ABS
Date: 6/18/2013
Author: KPIT
*/
vendor_site_id
,vendor_site_code
,vendor_site_code_alt
,vendor_id
,org_id
,orig_system_ref_id           
,orig_system                  
,orig_system_reference        
,owner_table_name             
,owner_table_id               
,status                       
,reason_code                  
,old_orig_system_reference    
,start_date_active            
,end_date_active              
,created_by                   
,creation_date                
,last_updated_by              
,last_update_date             
,last_update_login            
,object_version_number        
,created_by_module            
,application_id               
,attribute_category           
,attribute1                   
,attribute2                   
,attribute3                   
,attribute4                   
,attribute5                   
,attribute6                   
,attribute7                   
,attribute8                   
,attribute9                   
,attribute10                  
,attribute11                  
,attribute12                  
,attribute13                  
,attribute14                  
,attribute15                  
,attribute16                  
,attribute17                  
,attribute18                  
,attribute19                  
,attribute20                  
,party_id                     
,request_id                   
,program_application_id       
,program_id                   
,program_update_date  
) AS
select 
pv.vendor_site_id
,pv.vendor_site_code
,pv.vendor_site_code_alt
,pv.vendor_id
,pv.org_id
,os.orig_system_ref_id           
,os.orig_system                  
,os.orig_system_reference        
,os.owner_table_name             
,os.owner_table_id               
,os.status                       
,os.reason_code                  
,os.old_orig_system_reference    
,os.start_date_active            
,os.end_date_active              
,os.created_by                   
,os.creation_date                
,os.last_updated_by              
,os.last_update_date             
,os.last_update_login            
,os.object_version_number        
,os.created_by_module            
,os.application_id               
,os.attribute_category           
,os.attribute1                   
,os.attribute2                   
,os.attribute3                   
,os.attribute4                   
,os.attribute5                   
,os.attribute6                   
,os.attribute7                   
,os.attribute8                   
,os.attribute9                   
,os.attribute10                  
,os.attribute11                  
,os.attribute12                  
,os.attribute13                  
,os.attribute14                  
,os.attribute15                  
,os.attribute16                  
,os.attribute17                  
,os.attribute18                  
,os.attribute19                  
,os.attribute20                  
,os.party_id                     
,os.request_id                   
,os.program_application_id       
,os.program_id                   
,os.program_update_date  
from hz_orig_sys_references os, po_vendor_sites_all pv
where     os.owner_table_name = 'HZ_PARTY_SITES'
AND os.owner_table_id = pv.party_site_id
AND os.status = 'A'
AND (pv.inactive_date is null OR pv.inactive_date > sysdate)
/

