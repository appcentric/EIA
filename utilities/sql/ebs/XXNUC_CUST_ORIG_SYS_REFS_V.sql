CREATE OR REPLACE VIEW XXNUC_CUST_ORIG_SYS_REFS_V
(
/*
Description: View used by SOA Customer Balance Application Business Service NUC_EBizCustomerBalance_ABS Composite
Date: 6/18/2013
Author: KPIT
*/
orig_system_ref_id           
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
orig_system_ref_id           
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
from hz_orig_sys_references
where owner_table_name='HZ_CUST_ACCOUNTS'
and status = 'A'
/