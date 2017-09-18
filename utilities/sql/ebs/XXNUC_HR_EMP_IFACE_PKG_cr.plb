create or replace 
package body XXNUC_HR_EMP_IFACE_PKG
IS

gc_pkg_name          VARCHAR2(200) := 'XXNUC_HR_EMP_IFACE_PKG';
gc_debug_enabled     VARCHAR2(1) := 'Y'; --nvl(fnd_profile.value('AFLOG_ENABLED'),'N');
gc_step              VARCHAR2(240);

gn_business_group_id      PER_BUSINESS_GROUPS.business_group_id%type;
gn_emp_person_type_id     per_person_types.person_type_id%TYPE;


PROCEDURE log_message(p_text            IN VARCHAR2
                      ,p_log_level      IN NUMBER   DEFAULT FND_LOG.LEVEL_STATEMENT
                      ,p_module_name    IN VARCHAR2 DEFAULT NULL
                     )
IS

lc_module_name   VARCHAR2(250);
BEGIN
 
   IF (gc_debug_enabled = 'Y')
   THEN
       lc_module_name := 'xxnuc.'||p_module_name;
     IF FND_global.conc_request_id <> -1
     THEN
      fnd_file.put_line(fnd_file.log,'DEBUG INFO: '||lc_module_name||' - '||p_text);
      RETURN;
     ELSE
      FND_LOG.STRING(p_log_level, lc_module_name, p_text);    
     END IF;
   END IF;
END log_message;

PROCEDURE set_business_group_info(p_bg_name IN PER_BUSINESS_GROUPS.name%type) 
IS
CURSOR c_business_group(cp_name IN PER_BUSINESS_GROUPS.name%type)
IS
SELECT   business_group_id
FROM   per_business_groups WHERE name = cp_name;
BEGIN
 OPEN c_business_group(cp_name => p_bg_name);
  FETCH c_business_group INTO gn_business_group_id;
 CLOSE c_business_group;
END set_business_group_info;

PROCEDURE set_emp_person_type (p_person_type IN per_person_types.user_person_type%TYPE)
IS
CURSOR c_person_type (cp_person_type IN per_person_types.user_person_type%TYPE)
IS
SELECT   PPT.person_type_id
FROM     per_person_types PPT
WHERE   PPT.business_group_id = gn_business_group_id
AND     PPT.user_person_type = cp_person_type
;
BEGIN

 OPEN c_person_type(p_person_type);
  FETCH c_person_type INTO gn_emp_person_type_id;
 CLOSE  c_person_type;

END set_emp_person_type;


procedure init   (p_ledger_name    IN     VARCHAR2
                 ,p_request_id     IN    NUMBER
                  )
IS
lc_proc_name             VARCHAR2(200) := 'init';
BEGIN

 lc_proc_name := gc_pkg_name||'.'||lc_proc_name;
 
   log_message(p_text => lc_proc_name||' (+) p_ledger_name = >'||p_ledger_name
                                       ||' p_request_id => '||p_request_id                                                                                                                                                                                                                                                                                                                                                                                               
                                     ,p_module_name => lc_proc_name       
                                        );  
                                        
 UPDATE  xxnuc_hr_employee_stg
 SET   request_id    = NVL(p_request_id,fnd_global.conc_request_id)
      ,process_date = sysdate
      ,error_msg =''
 WHERE  NVL (PROCESS_STATUS, gc_process_status_NEW) = gc_process_status_NEW
 AND upper(nvl(ledger, p_ledger_name)) = upper(p_ledger_name)
 ;
 
 
 log_message(p_text => lc_proc_name||' (-) '                                                                                                                                                                                                                                                                                                                                                                                             
             ,p_module_name => lc_proc_name       
             );  
 
END init;
 
 procedure set_process_status   (p_request_id       IN    NUMBER
                                 ,p_process_status   IN    xxnuc_hr_employee_stg.process_status%type
                                 ,p_message          IN    xxnuc_hr_employee_stg.error_msg%type
                                 ,p_ledger_name      IN    xxnuc_hr_employee_stg.ledger%type
                                 ,p_emp_num          IN    xxnuc_hr_employee_stg.source_system_employee_number%type DEFAULT NULL)
IS
lc_proc_name             VARCHAR2(200) := 'set_process_status';
BEGIN

 lc_proc_name := gc_pkg_name||'.'||lc_proc_name;
 
   log_message(p_text => lc_proc_name||' (+) p_request_id = >'||p_request_id
                                       ||' p_process_status => '||p_process_status
                                       ||' p_ledger_name =>'||p_ledger_name
                                       ||' p_emp_num =>'||p_emp_num
                                     ,p_module_name => lc_proc_name       
                                        );  
                                        
 UPDATE  xxnuc_hr_employee_stg
 SET   process_date   = sysdate
      ,process_status = p_process_status
      ,error_msg      = p_message
 WHERE  request_id  = NVL(p_request_id,fnd_global.conc_request_id)
 AND upper(nvl(ledger, p_ledger_name)) = upper(p_ledger_name)
 AND source_system_employee_number = nvl(p_emp_num,source_system_employee_number)
 ;

log_message(p_text => lc_proc_name||' (-) '                                                                                                                                                                                                                                                                                                                                                                                             
             ,p_module_name => lc_proc_name       
             );  
 
END set_process_status;
 
PROCEDURE update_assignment(p_emp_rec IN OUT NOCOPY emp_rec)
IS
 lc_proc_name                   VARCHAR2(200) := 'update_assignment';
 ln_supervisor_id               per_all_people_f.person_id%TYPE;
 ln_assignment_id               per_all_assignments_f.assignment_id%TYPE;
 ln_asg_object_version_number   NUMBER;
 ln_assignment_sequence         NUMBER;
 lc_assignment_number           per_all_assignments_f.assignment_number%TYPE;
 ln_ledger_id                   gl_ledgers.ledger_id%TYPE;
 ln_coa_id                      gl_ledgers.chart_of_accounts_id%TYPE;
 lc_concat_segments             gl_code_combinations_kfv.concatenated_segments%TYPE;
 lc_concatenated_segments       gl_code_combinations_kfv.concatenated_segments%TYPE;
 ln_ccid                        gl_code_combinations_kfv.code_combination_id%TYPE;
 ln_soft_coding_keyflex_id      NUMBER;
 ln_asg_comment_id              NUMBER;
 
 ld_asg_effective_start_date    DATE;
 ld_asg_effective_end_date      DATE;
 lb_no_managers_warning         BOOLEAN;
 ln_job_id                      per_jobs.job_id%TYPE;
 ln_organization_id             hr_all_organization_units.organization_id%TYPE;


 ln_people_group_id              PER_JOB_GROUPS.job_group_id%TYPE;
 ln_special_ceiling_step_id      NUMBER;
 ln_group_name                   PER_JOB_GROUPS.job_group_id%TYPE;
 lb_org_now_no_manager_warning   BOOLEAN;
 lb_other_manager_warning        BOOLEAN;
 lb_spp_delete_warning           BOOLEAN;
 lc_entries_changed_warning      VARCHAR2(1);
 lb_tax_dist_changed_warning     BOOLEAN;

     

 CURSOR c_ledger_info(cp_ledger_name IN gl_ledgers.name%TYPE)
 IS 
 SELECT   ledger_id, chart_of_accounts_id
 FROM   gl_ledgers
 WHERE  UPPER (name) = UPPER (cp_ledger_name);
  
BEGIN
 
 lc_proc_name := gc_pkg_name||'.'||lc_proc_name;
 
  
 gc_step      := 'Starting update_assignment';
 
 log_message(p_text => lc_proc_name||' (+) p_emp_rec.supervisor = >'||p_emp_rec.supervisor||chr(10)
                                       ||' p_emp_rec.ledger => '||p_emp_rec.ledger||chr(10)
                                       ||' Concatenated Seg => '||p_emp_rec.segment1|| '.'|| p_emp_rec.segment2|| '.'|| p_emp_rec.segment3|| '.'
                                                                  || p_emp_rec.segment4|| '.'|| p_emp_rec.segment5|| '.'|| p_emp_rec.segment6|| '.'
                                                                  || p_emp_rec.segment7||chr(10)
                                       ||' p_emp_rec.source_system_employee_number => '||p_emp_rec.source_system_employee_number||chr(10)
                                       ||' p_emp_rec.job => '||p_emp_rec.job||chr(10)
                                       ||' p_emp_rec.dept => '||p_emp_rec.dept
                                     ,p_module_name => lc_proc_name       
                                        );  
                                        
  OPEN c_ledger_info(p_emp_rec.ledger);
   FETCH c_ledger_info INTO ln_ledger_id,ln_coa_id;
   IF c_ledger_info%NOTFOUND 
   THEN
     CLOSE c_ledger_info;
     p_emp_rec.error_msg := gc_invalid_ledger_msg ||' - '||p_emp_rec.ledger;
     p_emp_rec.process_status :=  gc_process_status_ERROR;
     RETURN;
   END IF;
  CLOSE c_ledger_info;

  IF p_emp_rec.segment1 IS NOT NULL
  THEN
    gc_step      := 'Deriving CCID';

   log_message(p_text => lc_proc_name||' ln_ledger_id = >'||ln_ledger_id
                                       ||' ln_coa_id => '||ln_coa_id
                                     ,p_module_name => lc_proc_name       
                                        );  

  
   ln_ccid := fnd_flex_ext.get_ccid (application_short_name   => gc_appl_short_name_SQLGL,
                                    key_flex_code            => gc_key_flex_code_GL,
                                    structure_number         => ln_coa_id,
                                    validation_date          => to_char(sysdate,apps.fnd_flex_ext.date_format),
                                    concatenated_segments    =>   p_emp_rec.segment1|| '.'|| p_emp_rec.segment2|| '.'|| p_emp_rec.segment3|| '.'
                                                                  || p_emp_rec.segment4|| '.'|| p_emp_rec.segment5|| '.'|| p_emp_rec.segment6|| '.'
                                                                  || p_emp_rec.segment7
                                  ); 
	  IF ln_ccid = 0 
	  THEN
	     p_emp_rec.error_msg      :=  gc_ccid_gen_err_msg ||' - '||p_emp_rec.segment1|| '.'|| p_emp_rec.segment2|| '.'|| p_emp_rec.segment3|| '.'
									  || p_emp_rec.segment4|| '.'|| p_emp_rec.segment5|| '.'|| p_emp_rec.segment6|| '.'
									  || p_emp_rec.segment7;
	     p_emp_rec.process_status :=  gc_process_status_ERROR;
	     RETURN;
	  END IF;


     log_message(p_text => lc_proc_name||' ln_ccid = >'||ln_ccid
                                     ,p_module_name => lc_proc_name       
                                        );  
   END IF;
   
 gc_step      := 'Obtain Assignment Id';
 

   -- Select the active employee assingment record
    SELECT   paaf.object_version_number,
             paaf.assignment_number,
             paaf.assignment_id
    INTO   ln_asg_object_version_number,
           lc_assignment_number,
           ln_assignment_id
    FROM   per_all_people_f papf
          ,per_all_assignments_f paaf
          ,per_person_type_usages_f pptu
          ,per_person_types ppt
    WHERE  papf.person_id = paaf.person_id
    AND pptu.effective_start_date between papf.effective_start_date and papf.effective_end_date 
    AND papf.effective_start_date between paaf.effective_start_date and paaf.effective_end_date 
	  and papf.person_id = pptu.person_id
	  and papf.person_type_id = pptu.person_type_id 
	  and pptu.person_type_id = ppt.person_type_id
	  and papf.person_type_id = ppt.person_type_id
	  and papf.business_group_id = ppt.business_group_id     
    AND ppt.user_person_type = gc_Employee_person_type
    AND p_emp_rec.employment_date between pptu.effective_start_date and pptu.effective_end_date
    AND employee_number = p_emp_rec.source_system_employee_number;

   log_message(p_text => lc_proc_name||' ln_assignment_id = >'||ln_assignment_id||' ln_asg_object_version_number => '||ln_asg_object_version_number
                                     ,p_module_name => lc_proc_name       
                                        );  
  
  IF p_emp_rec.supervisor IS NOT NULL
  THEN
      gc_step      := 'Obtain Supervisor Info ';
	  SELECT person_id
	  INTO   ln_supervisor_id
	  FROM   per_all_people_f
	  WHERE   employee_number = p_emp_rec.supervisor
	  AND SYSDATE BETWEEN effective_start_date AND  effective_end_date;
  END IF;

   log_message(p_text => lc_proc_name||' Calling hr_assignment_api.update_emp_asg '
                                     ,p_module_name => lc_proc_name       
                                        );  


 gc_step      := 'Updating Emp Assignment ';
 hr_assignment_api.update_emp_asg (
                     p_effective_date           => p_emp_rec.employment_date,
                     p_datetrack_update_mode    => HR_API.g_correction,
                     p_assignment_id            => ln_assignment_id,
                     p_object_version_number    => ln_asg_object_version_number,
                     p_supervisor_id            => ln_supervisor_id,
                     p_set_of_books_id          => ln_ledger_id,
                     p_default_code_comb_id     => ln_ccid,
                     p_concat_segments          => lc_concat_segments,
                     p_concatenated_segments    => lc_concatenated_segments,
                     p_soft_coding_keyflex_id   => ln_soft_coding_keyflex_id,
                     p_comment_id               => ln_asg_comment_id,
                     p_other_manager_warning    => lb_other_manager_warning,
                     p_effective_start_date     => ld_asg_effective_start_date,
                     p_effective_end_date       => ld_asg_effective_end_date,
                     p_no_managers_warning      => lb_no_managers_warning
                  );

  IF p_emp_rec.job IS NOT NULL
  THEN
   gc_step      := 'Obtaining Employee Job ';
   SELECT   job_id
   INTO   ln_job_id
   FROM   per_jobs
   WHERE   name = p_emp_rec.job;
  END IF;

  IF p_emp_rec.dept IS NOT NULL
  THEN
   gc_step      := 'Obtaining Employee Dep ';
   SELECT   organization_id
   INTO   ln_organization_id
   FROM   hr_all_organization_units
   WHERE   NAME = p_emp_rec.dept
   ;
  END IF;
 
 IF (p_emp_rec.job IS NOT NULL OR p_emp_rec.dept IS NOT NULL)
 THEN
 
    log_message(p_text => lc_proc_name||' CAlling  hr_assignment_api.update_emp_asg_criteria  ln_job_id => '||ln_job_id
                                      ||' ln_organization_id '||ln_organization_id                                    
                                     ,p_module_name => lc_proc_name       
                                        );  


         gc_step      := 'Updating Emp Job and Dept';
		 hr_assignment_api.update_emp_asg_criteria (
			p_effective_date                 => p_emp_rec.employment_date,
			p_datetrack_update_mode          => hr_api.g_correction,
			p_assignment_id                  => ln_assignment_id,
			p_object_version_number          => ln_asg_object_version_number,
			p_job_id                         => ln_job_id,
			p_organization_id                => ln_organization_id,
			p_people_group_id                => ln_people_group_id,
			p_special_ceiling_step_id        => ln_special_ceiling_step_id,
			p_group_name                     => ln_group_name,
			p_effective_start_date           => ld_asg_effective_start_date,
			p_effective_end_date             => ld_asg_effective_end_date,
			p_org_now_no_manager_warning     => lb_org_now_no_manager_warning,
			p_other_manager_warning          => lb_other_manager_warning,
			p_spp_delete_warning             => lb_spp_delete_warning,
			p_entries_changed_warning        => lc_entries_changed_warning,
			p_tax_district_changed_warning   => lb_tax_dist_changed_warning
		 );
 END IF;

   p_emp_rec.process_status := gc_process_status_PROCESSED;
   p_emp_rec.error_msg := '';
   
    log_message(p_text => lc_proc_name||'(-) '                                   
                                     ,p_module_name => lc_proc_name       
                                        );  


                     
EXCEPTION
 WHEN OTHERS THEN
   p_emp_rec.error_msg :=  lc_proc_name||' - '||'Step ('||gc_step||') '||SUBSTR (SQLERRM, 1, 150);
   p_emp_rec.process_status :=  gc_process_status_ERROR;

END update_assignment;
 
PROCEDURE create_employee(p_emp_rec IN OUT NOCOPY emp_rec)
IS
 lc_proc_name             VARCHAR2(200) := 'create_employee';
 ln_person_id                   per_all_people_f.person_id%TYPE;
 ln_assignment_id               per_all_assignments_f.assignment_id%TYPE;
 l_coord_ben_no_cvg_flag        VARCHAR2(1);
 l_dpdnt_vlntry_svce_flag       VARCHAR2(1);
 ln_per_object_version_number    NUMBER;
 ln_asg_object_version_number   NUMBER;
 ld_per_effective_start_date    DATE;
 ld_per_effective_end_date      DATE;
 lc_full_name                   per_all_people_f.full_name%TYPE;
 ln_per_comment_id              NUMBER;
 ln_assignment_sequence         NUMBER;
 lc_assignment_number           per_all_assignments_f.assignment_number%TYPE;
 lb_name_combination_warning    BOOLEAN;
 lb_assign_payroll_warning      BOOLEAN; 
 lb_orig_hire_warning           BOOLEAN; 
 
 ln_addr_object_version_number NUMBER;
 ln_address_id                 PER_ADDRESSES.address_id%TYPE;
 
BEGIN

 lc_proc_name := gc_pkg_name||'.'||lc_proc_name;
 
 
    log_message(p_text => lc_proc_name||' (+) Creating Employee Employee Number = >'||p_emp_rec.source_system_employee_number
                                       ||' p_emp_rec.first_name => '||p_emp_rec.first_name
                                       ||' p_emp_rec.last_name => '||p_emp_rec.last_name                                                                                                                                                                                                                                                                                                                                                                                                
                                     ,p_module_name => lc_proc_name       
                                        );  
                                        
 gc_step      := 'Creating Employee';
                                         
 hr_employee_api.create_employee (p_validate   => FALSE,
								 p_hire_date                   => p_emp_rec.employment_date,
								 p_business_group_id           => gn_business_group_id,
								 p_last_name                   => p_emp_rec.last_name,
								 p_sex                         => p_emp_rec.gender,
								 p_person_type_id              => gn_emp_person_type_id,
								 p_email_address               => p_emp_rec.email_address,
								 p_employee_number             => p_emp_rec.source_system_employee_number,
								 p_first_name                  => p_emp_rec.first_name,
								 p_middle_names                => p_emp_rec.middle_initial,
								 p_coord_ben_no_cvg_flag       => l_coord_ben_no_cvg_flag,
								 p_dpdnt_vlntry_svce_flag      => l_dpdnt_vlntry_svce_flag,
								 p_suffix                      => p_emp_rec.suffix,
								 p_person_id                   => ln_person_id,
								 p_assignment_id               => ln_assignment_id,
								 p_per_object_version_number   => ln_per_object_version_number,
								 p_asg_object_version_number   => ln_asg_object_version_number,
								 p_per_effective_start_date    => ld_per_effective_start_date,
								 p_per_effective_end_date      => ld_per_effective_end_date,
								 p_full_name                   => lc_full_name,
								 p_per_comment_id              => ln_per_comment_id,
								 p_assignment_sequence         => ln_assignment_sequence,
								 p_assignment_number           => lc_assignment_number,
								 p_name_combination_warning    => lb_name_combination_warning,
								 p_assign_payroll_warning      => lb_assign_payroll_warning,
								 p_orig_hire_warning           => lb_orig_hire_warning--,
								-- p_attribute1                  => p_emp_rec.legacy_employee_number
                                );

    log_message(p_text => lc_proc_name||' Employee  Record Created  p_person_id =>'||ln_person_id
                                       ||' p_assignment_id => '||ln_assignment_id
                                       ||' p_per_object_version_number => '||ln_per_object_version_number
                                     ,p_module_name => lc_proc_name       
                                        );    

 gc_step      := 'Creating Address';
  hr_person_address_api.create_person_address(p_effective_date          => p_emp_rec.employment_date,
											   p_person_id               => ln_person_id,
											   p_primary_flag            => gc_primary_flag_Y ,
											   p_style                   => gc_emp_address_style,
											   p_date_from               => p_emp_rec.employment_date,
											   p_address_line1           => p_emp_rec.address_line1,
											   p_address_line2           => p_emp_rec.address_line2,
											   p_address_line3           => p_emp_rec.address_line3,
											   p_town_or_city            => p_emp_rec.city,
											   p_region_1                => null,
											   p_region_2                => p_emp_rec.state,
											   p_postal_code             => p_emp_rec.zip_code,
											   p_country                 => p_emp_rec.country,
											   p_telephone_number_1      => p_emp_rec.telephone,
											   p_address_id              => ln_address_id,
											   p_object_version_number   => ln_addr_object_version_number
											);

   p_emp_rec.process_status := gc_process_status_PROCESSED;
   p_emp_rec.error_msg := '';
   
 
    log_message(p_text => lc_proc_name||'(-) Address  Record Created  p_address_id =>'||ln_address_id
                                       ||' p_object_version_number => '||ln_addr_object_version_number
                                     ,p_module_name => lc_proc_name       
                                        );    
 
 EXCEPTION
 WHEN OTHERS THEN
   p_emp_rec.error_msg :=  lc_proc_name||' - '||'Step ('||gc_step||') '||SUBSTR (SQLERRM, 1, 150);
   p_emp_rec.process_status :=  gc_process_status_ERROR;
 END create_employee;

PROCEDURE update_employee(p_emp_rec IN OUT NOCOPY emp_rec)
IS
  lc_proc_name                    VARCHAR2(200) := 'update_employee';
  ln_person_id                    per_all_people_f.person_id%TYPE;
  ln_per_object_version_number    NUMBER;
  ld_per_effective_start_date     DATE;
  ld_per_effective_end_date       DATE;

  lc_full_name                   per_all_people_f.full_name%TYPE;
  ln_per_comment_id              NUMBER;
  lb_name_combination_warning    BOOLEAN;
  lb_assign_payroll_warning      BOOLEAN; 
  lb_orig_hire_warning           BOOLEAN; 
 
 ln_addr_object_version_number NUMBER;
 ln_address_id                 PER_ADDRESSES.address_id%TYPE;
 

  
BEGIN
 
  lc_proc_name := gc_pkg_name||'.'||lc_proc_name;
 
 
    log_message(p_text => lc_proc_name||' (+) Update Employee Employee Number = >'||p_emp_rec.source_system_employee_number
                                       ||' p_emp_rec.first_name => '||p_emp_rec.first_name
                                       ||' p_emp_rec.last_name => '||p_emp_rec.last_name                                                                                                                                                                                                                                                                                                                                                                                                
                                     ,p_module_name => lc_proc_name       
                                        );  
                                        
    gc_step      := 'Selecting Person ID';
 
    -- Select the active employee record  
    SELECT   papf.object_version_number,
           papf.person_id
    INTO   ln_per_object_version_number,
           ln_person_id
    FROM   per_all_people_f papf
          ,per_person_type_usages_f pptu
          ,per_person_types ppt
    WHERE  pptu.effective_start_date between papf.effective_start_date and papf.effective_end_date 
    and papf.person_id = pptu.person_id
	  and papf.person_type_id = pptu.person_type_id 
	  and pptu.person_type_id = ppt.person_type_id
	  and papf.person_type_id = ppt.person_type_id
	  and papf.business_group_id = ppt.business_group_id     
    AND ppt.user_person_type = gc_Employee_person_type
    AND p_emp_rec.employment_date between pptu.effective_start_date and pptu.effective_end_date
    AND employee_number = p_emp_rec.source_system_employee_number;
  
    log_message(p_text => lc_proc_name||'  ln_person_id = >'||ln_person_id
                                        ||' ln_per_object_version_number => '||ln_per_object_version_number
                                     ,p_module_name => lc_proc_name       
                                        );  

 gc_step      := 'hr_person_api.update_person';
                               
hr_person_api.update_person (p_validate                   => false,
                     p_effective_date             => p_emp_rec.employment_date,
                     p_datetrack_update_mode      => hr_api.g_correction,
                     p_person_id                  => ln_person_id,
                     p_object_version_number      => ln_per_object_version_number,
                     p_person_type_id             => gn_emp_person_type_id,
                     p_last_name                  => p_emp_rec.last_name,
                     p_email_address              => p_emp_rec.email_address,
                     p_employee_number            => p_emp_rec.source_system_employee_number,
                     p_first_name                 => p_emp_rec.first_name,
                     p_middle_names               => p_emp_rec.middle_initial,
                     p_sex                        => p_emp_rec.gender,
                     p_effective_start_date       => ld_per_effective_start_date,
                     p_effective_end_date         => ld_per_effective_end_date,
                     p_full_name                  => lc_full_name,
                     p_comment_id                 => ln_per_comment_id,
                     p_name_combination_warning   => lb_name_combination_warning,
                     p_assign_payroll_warning     => lb_assign_payroll_warning,
                     p_orig_hire_warning          => lb_orig_hire_warning--,
				   --   p_attribute1                  => p_emp_rec.legacy_employee_number
                  );

      log_message(p_text => lc_proc_name||'  Person Record Updated '
                                     ,p_module_name => lc_proc_name       
                                        );                    
 gc_step      := 'Selecting Address ID';

 SELECT  address_id
        ,object_version_number
 INTO   ln_address_id
       ,ln_addr_object_version_number
 FROM   per_addresses
 WHERE  person_id = ln_person_id
 AND    primary_flag = gc_primary_flag_Y
 ;

 IF p_emp_rec.address_line1 IS NOT NULL
 THEN
  gc_step      := 'hr_person_address_api.update_person_address';
	 hr_person_address_api.update_person_address (
		p_validate                => false,
		p_effective_date          => p_emp_rec.employment_date,
		p_address_id              => ln_address_id,
		p_object_version_number   => ln_addr_object_version_number,
		p_date_from               => p_emp_rec.employment_date,
		p_primary_flag            => gc_primary_flag_Y,
		p_address_line1           => p_emp_rec.address_line1,
		p_address_line2           => p_emp_rec.address_line2,
		p_address_line3           => p_emp_rec.address_line3,
		p_town_or_city            => p_emp_rec.city,
		p_region_1                => null,
		p_region_2                => p_emp_rec.state,
		p_postal_code             => p_emp_rec.zip_code,
		p_country                 => p_emp_rec.country,
		p_telephone_number_1      => p_emp_rec.telephone
	 );
	     log_message(p_text => lc_proc_name||'  Person Address Record Updated '
                                     ,p_module_name => lc_proc_name       
                                        );     
 END IF;

   p_emp_rec.process_status := gc_process_status_PROCESSED;
   p_emp_rec.error_msg := '';
   
    log_message(p_text => lc_proc_name||' (-) '
                                     ,p_module_name => lc_proc_name       
                                        );           
                                
                  
 EXCEPTION
 WHEN OTHERS THEN
   p_emp_rec.error_msg :=  lc_proc_name||' - '||'Step ('||gc_step||') '||SUBSTR (SQLERRM, 1, 150);
   p_emp_rec.process_status :=  gc_process_status_ERROR;                  
END update_employee;

PROCEDURE disable_fnd_user(p_emp_rec IN OUT NOCOPY emp_rec)
 IS
 lc_proc_name                    VARCHAR2(200) := 'disable_fnd_user';

 


 -- CURSOR to select the active users for active Employee record as of the Termination date
  cursor c_usr (cp_employee_number  in per_all_people_f.employee_number%TYPE, cp_effective_date IN DATE)
  IS
  SELECT usr.user_name from fnd_user usr
               ,per_all_people_f ppf
  WHERE usr.employee_id = ppf.person_id 
  AND ppf.employee_number =   cp_employee_number
  and cp_effective_date  between ppf.effective_start_date and ppf.effective_end_date
  and usr.end_date is null
  ;
  
BEGIN

 lc_proc_name := gc_pkg_name||'.'||lc_proc_name;
 
    
    log_message(p_text => lc_proc_name||' (+) Disable FND USER for the Employee Employee Number = >'||p_emp_rec.source_system_employee_number
                                       ||' p_emp_rec.first_name => '||p_emp_rec.first_name
                                       ||' p_emp_rec.last_name => '||p_emp_rec.last_name                                                                                                                                                                                                                                                                                                                                                                                                
                                     ,p_module_name => lc_proc_name       
                                        );  
   gc_step := 'Disable FND User For Loop';
   FOR i IN c_usr(p_emp_rec.source_system_employee_number,p_emp_rec.employment_end_date)
   LOOP
       log_message(p_text => lc_proc_name||' Calling  FND_USER_PKG for User Name'||i.user_name
                                     ,p_module_name => lc_proc_name       
                                        );      
                                        
     FND_USER_PKG.disableuser(i.user_name);
   END LOOP;
  

   p_emp_rec.process_status := gc_process_status_PROCESSED;
   p_emp_rec.error_msg := '';
   
 
    log_message(p_text => lc_proc_name||' (-) Disable FND USER for the Employee Employee Number '                                                                                                                                                                                                                                                                                                                                                                                           
                                     ,p_module_name => lc_proc_name       
                                        );  
 
 EXCEPTION
 WHEN OTHERS THEN
   p_emp_rec.error_msg :=  lc_proc_name||' - '||'Step ('||gc_step||') '||SUBSTR (SQLERRM, 1, 150);
   p_emp_rec.process_status :=  gc_process_status_ERROR;
 END disable_fnd_user;
 
 
 PROCEDURE terminate_employee(p_emp_rec IN OUT NOCOPY emp_rec)
 IS
 lc_proc_name                    VARCHAR2(200) := 'terminate_employee';
 ln_person_id                    per_all_people_f.person_id%TYPE;
 ln_period_of_service_id         per_periods_of_service.period_of_service_id%TYPE;
 ln_pps_object_version_number    NUMBER;
 lc_leaving_reason               VARCHAR2(240) := NULL;
 lb_supervisor_warning           BOOLEAN;       
 lb_event_warning                BOOLEAN;             
 lb_interview_warning            BOOLEAN;           
 lb_review_warning               BOOLEAN;        
 lb_recruiter_warning            BOOLEAN;    
 lb_asg_future_changes_warning   BOOLEAN;         
 lc_entries_changed_warning      VARCHAR2(1);       
 lb_pay_proposal_warning         BOOLEAN;
 lb_dod_warning                  BOOLEAN;
 lb_org_now_no_manager_warning    BOOLEAN;
 
 -- CURSOR to select the  Periods of Service ID for active Employee record as of the Termination date
  cursor c_pps 
  IS
  SELECT PPS.period_of_service_id, PPS.object_version_number
  FROM PER_ALL_PEOPLE_F PAPF,
       PER_PERIODS_OF_SERVICE PPS,
       per_person_type_usages_f pptu,
       per_person_types ppt
  WHERE pptu.effective_start_date between papf.effective_start_date and papf.effective_end_date 
  and papf.person_id = pptu.person_id
  and papf.person_type_id = pptu.person_type_id 
  and pptu.person_type_id = ppt.person_type_id
  and papf.person_type_id = ppt.person_type_id
  and papf.business_group_id = ppt.business_group_id 
  and papf.person_id = pps.person_id
  AND papf.employee_number = p_emp_rec.source_system_employee_number
  AND p_emp_rec.employment_end_date between pptu.effective_start_date and pptu.effective_end_date
  AND ppt.user_person_type = gc_Employee_person_type
  AND pps.actual_termination_date is null
  order by pps.date_Start desc
  ;

BEGIN

 lc_proc_name := gc_pkg_name||'.'||lc_proc_name;
 
 
    log_message(p_text => lc_proc_name||' (+) Terminating Employee Employee Number = >'||p_emp_rec.source_system_employee_number
                                       ||' p_emp_rec.first_name => '||p_emp_rec.first_name
                                       ||' p_emp_rec.last_name => '||p_emp_rec.last_name                                                                                                                                                                                                                                                                                                                                                                                                
                                     ,p_module_name => lc_proc_name       
                                        );  
                                        
 gc_step      := 'Obtain Period of Service';
 
 OPEN c_pps; 
  FETCH c_pps into ln_period_of_service_id,ln_pps_object_version_number;
   IF c_pps%NOTFOUND 
   THEN
     close c_pps;
        p_emp_rec.error_msg := gc_invalid_emp_msg;
        p_emp_rec.process_status :=  gc_process_status_ERROR;
       RETURN;
   END IF;
 CLOSE c_pps;

 
 
 log_message(p_text => lc_proc_name||' ln_period_of_service_id = >'||ln_period_of_service_id
                                       ||' ln_pps_object_version_number => '||ln_pps_object_version_number
                                       ||' Calling actual_termination_emp '
                                     ,p_module_name => lc_proc_name       
                                        );  
                                           

 gc_step      := 'HR actual_termination_emp';
 
                                          
  hr_ex_employee_api.actual_termination_emp
    (
    p_validate                    =>  false
   ,p_effective_date              =>  p_emp_rec.employment_end_date
   ,p_period_of_service_id        =>  ln_period_of_service_id
   ,p_object_version_number       =>  ln_pps_object_version_number
   --,p_leaving_reason              =>  lc_leaving_reason
   ,p_last_standard_process_date => p_emp_rec.employment_end_date
   ,p_actual_termination_date     =>  p_emp_rec.employment_end_date
   ,p_supervisor_warning         =>  lb_supervisor_warning                
   ,p_event_warning              =>  lb_event_warning                    
   ,p_interview_warning          =>  lb_interview_warning                 
   ,p_review_warning             =>  lb_review_warning                 
   ,p_recruiter_warning          =>  lb_recruiter_warning              
   ,p_asg_future_changes_warning =>  lb_asg_future_changes_warning            
   ,p_entries_changed_warning    =>  lc_entries_changed_warning             
   ,p_pay_proposal_warning       =>  lb_pay_proposal_warning     
   ,p_dod_warning                =>  lb_dod_warning
    );

    log_message(p_text => lc_proc_name||' Calling  update_term_details_emp ln_pps_object_version_number => '||ln_pps_object_version_number
                                     ,p_module_name => lc_proc_name       
                                        );    

 gc_step      := 'HR update_term_details_emp';
 
hr_ex_employee_api.update_term_details_emp (p_effective_date               => p_emp_rec.employment_end_date,
                     p_period_of_service_id         => ln_period_of_service_id,
                     p_notified_termination_date    => p_emp_rec.employment_end_date,
                     p_projected_termination_date   => p_emp_rec.employment_end_date,
                     p_object_version_number        => ln_pps_object_version_number
                     );

    log_message(p_text => lc_proc_name||' Calling  final_process_emp ln_pps_object_version_number => '||ln_pps_object_version_number
                                     ,p_module_name => lc_proc_name       
                                        );                        
                    
 gc_step      := 'HR final_process_emp';
                      
hr_ex_employee_api.final_process_emp
  (p_period_of_service_id          => ln_period_of_service_id
  ,p_object_version_number         => ln_pps_object_version_number
  ,p_final_process_date            => p_emp_rec.employment_end_date
  ,p_org_now_no_manager_warning    => lb_org_now_no_manager_warning
  ,p_asg_future_changes_warning    => lb_asg_future_changes_warning
  ,p_entries_changed_warning       => lc_entries_changed_warning
  );


  
    log_message(p_text => lc_proc_name||' Calling  final_process_emp ln_pps_object_version_number => '||ln_pps_object_version_number
                                     ,p_module_name => lc_proc_name       
                                        );      
                                        
   p_emp_rec.process_status := gc_process_status_PROCESSED;
   p_emp_rec.error_msg := '';
   
 
    log_message(p_text => lc_proc_name||' (-) Employee Record Terminated Employee Number = >'||p_emp_rec.source_system_employee_number
                                       ||' p_emp_rec.first_name => '||p_emp_rec.first_name
                                       ||' p_emp_rec.last_name => '||p_emp_rec.last_name                                                                                                                                                                                                                                                                                                                                                                                                
                                     ,p_module_name => lc_proc_name       
                                        );  
 
 EXCEPTION
 WHEN OTHERS THEN
   p_emp_rec.error_msg :=  lc_proc_name||' - '||'Step ('||gc_step||') '||SUBSTR (SQLERRM, 1, 150);
   p_emp_rec.process_status :=  gc_process_status_ERROR;
 END terminate_employee;
 
 PROCEDURE rehire_employee(p_emp_rec IN OUT NOCOPY emp_rec)
 IS
  lc_proc_name                    VARCHAR2(200) := 'rehire_employee';
  ln_period_of_service_id         per_periods_of_service.period_of_service_id%TYPE;
  ln_pps_object_version_number    NUMBER;

  ln_person_id                    per_all_people_f.person_id%TYPE;
  ln_per_object_version_number    NUMBER;
  ld_per_effective_start_date     DATE;
  ld_per_effective_end_date       DATE;

  ln_assignment_id                per_all_assignments_f.assignment_id%TYPE;
  ln_asg_object_version_number    NUMBER;
  ln_assignment_sequence         NUMBER;
  lc_assignment_number           per_all_assignments_f.assignment_number%TYPE;
  lb_name_combination_warning    BOOLEAN;
  lb_assign_payroll_warning      BOOLEAN; 
  
  -- CURSOR to select the Active Ex-Employee record as of the Rehire date
  cursor c_pps
  IS 
  SELECT
	 PAPF.person_id
  ,PAPF.object_version_number
	FROM per_all_people_f PAPF,
	     per_person_type_usages_f pptu,
	     per_person_types ppt
	WHERE pptu.effective_start_date between papf.effective_start_date and papf.effective_end_date 
	and papf.person_id = pptu.person_id
	and papf.person_type_id = pptu.person_type_id 
	and pptu.person_type_id = ppt.person_type_id
	and papf.person_type_id = ppt.person_type_id
	and papf.business_group_id = ppt.business_group_id 
	AND papf.employee_number =p_emp_rec.source_system_employee_number
	AND ppt.user_person_type = gc_ExEmployee_person_type
	AND p_emp_rec.employment_date between pptu.effective_start_date and pptu.effective_end_date
	ORDER by PAPF.object_version_number desc;

 BEGIN
lc_proc_name := gc_pkg_name||'.'||lc_proc_name;
 
 
    log_message(p_text => lc_proc_name||' (+) Re-Hire Employee Employee Number = >'||p_emp_rec.source_system_employee_number
                                       ||' p_emp_rec.first_name => '||p_emp_rec.first_name
                                       ||' p_emp_rec.last_name => '||p_emp_rec.last_name                                                                                                                                                                                                                                                                                                                                                                                                
                                     ,p_module_name => lc_proc_name       
                                        );  
                                        
 
  gc_step      := 'Obtain Period of Service';
  
  
   open c_pps;
     fetch c_pps INTO ln_person_id, ln_per_object_version_number;
     IF c_pps%NOTFOUND THEN
       close c_pps;
        p_emp_rec.error_msg := gc_invalid_exemp_msg;
        p_emp_rec.process_status :=  gc_process_status_ERROR;
       RETURN;
     END IF;
   close c_pps;
 
 
 log_message(p_text => lc_proc_name||' ln_period_of_service_id = >'||ln_period_of_service_id
                                       ||' ln_pps_object_version_number => '||ln_pps_object_version_number
                                       ||' Calling re_hire_ex_employee '
                                     ,p_module_name => lc_proc_name       
                                        );  
                                           

 gc_step      := 'HR re_hire_ex_employee';
 
 hr_employee_api.re_hire_ex_employee(
              p_validate  => false,
              P_hire_date  => p_emp_rec.employment_date,
              P_person_id  => ln_person_id,
              p_per_object_version_number => ln_per_object_version_number,
              p_person_type_id => gn_emp_person_type_id,
              p_rehire_reason => null,
              p_assignment_id   => ln_assignment_id,
              p_asg_object_version_number => ln_asg_object_version_number,
              p_per_effective_start_date  => ld_per_effective_start_date,
              p_per_effective_end_date    => ld_per_effective_end_date,
              p_assignment_sequence       => ln_assignment_sequence,
              p_assignment_number         => lc_assignment_number,
              p_assign_payroll_warning    => lb_assign_payroll_warning);
              

    log_message(p_text => lc_proc_name||' (-) Employee Record Rehired Employee Number = >'||p_emp_rec.source_system_employee_number
                                       ||' p_emp_rec.first_name => '||p_emp_rec.first_name
                                       ||' p_emp_rec.last_name => '||p_emp_rec.last_name                                                                                                                                                                                                                                                                                                                                                                                                
                                     ,p_module_name => lc_proc_name       
                                        );  
                                         
                                                      
    p_emp_rec.process_status := gc_process_status_PROCESSED;
    p_emp_rec.error_msg := '';
 
 EXCEPTION
 WHEN OTHERS THEN
   p_emp_rec.error_msg :=  lc_proc_name||' - '||'Step ('||gc_step||') '||SUBSTR (SQLERRM, 1, 150);
   p_emp_rec.process_status :=  gc_process_status_ERROR;
 END rehire_employee; 
  
 
 procedure process_employees   (x_retmsg  OUT VARCHAR2
                               ,x_retcode  OUT VARCHAR2
                               ,p_mode          IN     VARCHAR2
                               ,p_ledger_name   IN     VARCHAR2
                               ,p_create_missing_jobs IN VARCHAR2 DEFAULT 'N'
                               )
IS

lc_proc_name             VARCHAR2(200) := 'process_employees';

  CURSOR c_emp_info(cp_process_status in xxnuc_hr_employee_stg.process_status%TYPE)
  IS
  SELECT  * 
 FROM   xxnuc_hr_employee_stg
  WHERE   nvl (process_status, gc_process_status_NEW) = cp_process_status
  AND request_id = fnd_global.conc_request_id
  ORDER By decode(status,'CREATE',1,'UPDATE',2,'TERMINATE',3,99);

 lr_emp     emp_rec;
  
BEGIN

 x_retcode := '0';
 x_retmsg := '';
 lc_proc_name := gc_pkg_name||'.'||lc_proc_name;
 
    log_message(p_text => lc_proc_name||' (+) request_id = >'||fnd_global.conc_request_id
                                       ||' p_mode => '||p_mode
                                       ||' p_ledger_name => '||p_ledger_name  
                                       ||' p_create_missing_jobs '||p_create_missing_jobs                                                                                                                                                                                                                                                                                                                                                                                              
                                     ,p_module_name => lc_proc_name       
                                        );  
    log_message(p_text => lc_proc_name||' CALLING init... '
                                     ,p_module_name => lc_proc_name       
                                        );  
                                        

    gc_step      := 'Initiliazing';
 
    init (p_ledger_name => p_ledger_name,p_request_id => fnd_global.conc_request_id ) ;

    set_business_group_info(p_bg_name => gc_def_business_group);

    log_message(p_text => lc_proc_name||' Derived  gn_business_group_id => '||gn_business_group_id
                                     ,p_module_name => lc_proc_name       
                                        );  
                                                                                
    IF gn_business_group_id is null
    THEN
     x_retcode := '2';
     x_retmsg := gc_business_group_invalid_msg;
     set_process_status (fnd_global.conc_request_id,gc_process_status_ERROR,gc_employee_type_invalid_msg,p_ledger_name,NULL);
     RETURN;
    END IF; 

    set_emp_person_type(gc_Employee_person_type);
   
       log_message(p_text => lc_proc_name||' Derived  gn_emp_person_type_id => '||gn_emp_person_type_id
                                     ,p_module_name => lc_proc_name       
                                        );  
                                        
    IF gn_emp_person_type_id is null
    THEN
     x_retcode := '2';
     x_retmsg := gc_employee_type_invalid_msg;
     set_process_status (fnd_global.conc_request_id,gc_process_status_ERROR,gc_employee_type_invalid_msg,p_ledger_name,NULL);     
     RETURN;
    END IF; 
    
    IF NVL(p_create_missing_jobs,'N') = 'Y'
    THEN
		create_missing_jobs(x_retmsg   => x_retmsg,
							x_retcode  => x_retcode
							,p_request_id => fnd_global.conc_request_id);
        IF 	x_retcode <> 0
        THEN
          log_message(p_text => lc_proc_name||' Aborting employee processing. Job creation failed.. '
                                     ,p_module_name => lc_proc_name       
                                        );  
          set_process_status (fnd_global.conc_request_id,gc_process_status_ERROR,'Aborting employee processing. Job creation failed',p_ledger_name,NULL);     
          RETURN;
		END IF;				
    END IF;
    
    gc_step      := 'Cursor c_emp_info';
       
    FOR i IN c_emp_info(gc_process_status_NEW)
    LOOP
           log_message(p_text => lc_proc_name||'  ** '||CHR(10)||' Action  => '||i.status 
                                         ||'  Emp # '||i.source_system_employee_number||' ** '
                                     ,p_module_name => lc_proc_name       
                                        );  
        lr_emp := NULL;
        lr_emp.last_name                    := i.last_name;
	    lr_emp.first_name                   := i.first_name;
	    lr_emp.middle_initial               := i.middle_initial;
		lr_emp.suffix                       := i.suffix;
		lr_emp.source_system_employee_number := i.source_system_employee_number;
		lr_emp.gender                       := i.gender;
		lr_emp.ledger                       := nvl(i.ledger,p_ledger_name);
		lr_emp.employment_date              := i.employment_date;
		lr_emp.employment_end_date          := i.employment_end_date;
		lr_emp.email_address                := i.email_address;
		lr_emp.address_line1                := i.address_line1;
		lr_emp.address_line2                := i.address_line2;
		lr_emp.address_line3                := i.address_line3;
		lr_emp.city                         := i.city;
		lr_emp.county                       := i.county;
		lr_emp.state                        := i.state;
		lr_emp.zip_code                     := i.zip_code;
		lr_emp.country                      := i.country;
		lr_emp.telephone                    := i.telephone;
		lr_emp.job                          := i.job;
		lr_emp.supervisor                   := i.supervisor;
		lr_emp.dept                         := i.dept;
		lr_emp.set_of_books_id              := i.set_of_books_id;
		lr_emp.segment1                     := i.segment1;
		lr_emp.segment2                     := i.segment2;
		lr_emp.segment3                     := i.segment3;
		lr_emp.segment4                     := i.segment4;
		lr_emp.segment5                     := i.segment5;
		lr_emp.segment6                     := i.segment6;
		lr_emp.segment7                     := i.segment7;
		lr_emp.status                       := i.status;
		lr_emp.request_id                   := i.request_id;
		lr_emp.process_status               := i.process_status;
		lr_emp.process_date                 := i.process_date;
		lr_emp.error_msg                    := i.error_msg;
		lr_emp.legacy_employee_number       := i.legacy_employee_number;
		
      IF i.status = gc_emp_status_CREATE 
      THEN
        create_employee(p_emp_rec => lr_emp);
      ELSIF i.status = gc_emp_status_UPDATE and p_mode=gc_mode_Interface
      THEN

        update_employee(p_emp_rec => lr_emp);
      ELSIF i.status = gc_emp_status_TERMINATE and p_mode=gc_mode_Interface
      THEN

        terminate_employee(p_emp_rec => lr_emp);  
        disable_fnd_user(p_emp_rec => lr_emp);  
          
      ELSIF i.status = gc_emp_status_REHIRE and p_mode=gc_mode_Interface
      THEN

         rehire_employee(p_emp_rec => lr_emp);  
      ELSE
         lr_emp.status      := gc_process_status_ERROR;
         lr_emp.error_msg   := gc_employee_status_invalid_msg;
         lr_emp.process_status :=  gc_process_status_PROCESSED;
      END IF;
     
            log_message(p_text => lc_proc_name||'   emp record process status  => '||lr_emp.process_status
                                              ||' lr_emp.error_msg '||lr_emp.error_msg  
                                     ,p_module_name => lc_proc_name       
                                        );  
     -- If Person record interface is success
     -- then call the update assignment
     IF (lr_emp.process_status != gc_process_status_ERROR) 
        and (i.status IN (gc_emp_status_CREATE,gc_emp_status_REHIRE,gc_emp_status_UPDATE))
     THEN 
        update_assignment(p_emp_rec  => lr_emp);
     END IF;

     log_message(p_text => lc_proc_name||'   Calling  set_process_status ** '|| lr_emp.process_status ||' ** ' 
                                     ,p_module_name => lc_proc_name       
                                        );  
     set_process_status (fnd_global.conc_request_id,lr_emp.process_status,lr_emp.error_msg,p_ledger_name,lr_emp.source_system_employee_number);
           
    END LOOP;  
     log_message(p_text => lc_proc_name||' (-)'
                                     ,p_module_name => lc_proc_name       
                                        ); 

EXCEPTION
 WHEN OTHERS THEN
   x_retmsg := gc_unexp_exc_msg||' - '||'Step ('||gc_step||') '||SQLERRM;
   x_retcode := '2';
   FND_FILE.put_line(FND_FILE.log, x_retmsg);
   log_message(p_text => lc_proc_name||' (-)'
                                     ,p_module_name => lc_proc_name       
                                        ); 
END process_employees; 
 			                  
PROCEDURE create_missing_jobs(x_retmsg  OUT VARCHAR2
                      ,x_retcode  OUT VARCHAR2
                      ,p_request_id   IN     NUMBER DEFAULT -1
                   )
IS

	l_job_id                  NUMBER := NULL;
	l_object_version_number   NUMBER := NULL;
	l_name                    VARCHAR2 (500) := NULL;
	l_job_definition_id       NUMBER := NULL;
   
cursor c_missing_jobs 
is 
Select distinct hr.job job_name 
from xxnuc_hr_employee_stg hr where hr.request_id = NVL(p_request_id,-1)
and not exists (select pj.name from per_jobs pj where pj.name = hr.job)
and hr.job is not null
;
lc_proc_name             VARCHAR2(200) := 'create_missing_jobs';
begin
 x_retcode := '0';
 x_retmsg := '';
    lc_proc_name := gc_pkg_name||'.'||lc_proc_name;
 
    log_message(p_text => lc_proc_name||' (+) request_id = >'||fnd_global.conc_request_id
                                       ||' p_request_id => '||p_request_id
                                     ,p_module_name => lc_proc_name       
                                        );  
 
                                        
    gc_step      := 'Deriving Business Group';
    set_business_group_info(p_bg_name => gc_def_business_group);

    log_message(p_text => lc_proc_name||' Derived  gn_business_group_id => '||gn_business_group_id
                                     ,p_module_name => lc_proc_name       
                                        );  
                                                                                
    IF gn_business_group_id is null
    THEN
     x_retcode := '2';
     x_retmsg := gc_business_group_invalid_msg;
     --set_process_status (fnd_global.conc_request_id,gc_process_status_ERROR,gc_employee_type_invalid_msg,p_ledger_name,NULL);
     RETURN;
    END IF; 

   fnd_file.put_line(fnd_file.output,'List Of Jobs created');
   fnd_file.put_line(fnd_file.output,'=====================');

  for l_pps_rec in c_missing_jobs
  loop
	  l_job_id                := null;
	  l_object_version_number := null;
	  l_name                  := null;
	  l_job_definition_id     := null;
	  
	  log_message(p_text => lc_proc_name||'  Calling crete_job api to create job => '||l_pps_rec.job_name
	                 ,p_module_name => lc_proc_name       
                                        );
	  gc_step      := 'API Call';
	  BEGIN
 	  hr_job_api.create_job
	  (p_validate               => FALSE
	  ,p_business_group_id      => gn_business_group_id
	  ,p_date_from              => TO_DATE ('01-JAN-1950', 'DD-MON-YYYY')
	  ,p_job_group_id           => gn_job_group_id 
	  ,p_segment1               => l_pps_rec.job_name
	  ,p_job_id                 => l_job_id
	  ,p_object_version_number  => l_object_version_number
	  ,p_job_definition_id      => l_job_definition_id
	  ,p_name                   => l_name
	  );
	  EXCEPTION
	   WHEN OTHERS THEN
	      log_message(p_text => lc_proc_name||' Job Creation Fialed for job_name => '||l_name||' Exception '||sqlerrm
	                                         ,p_module_name => lc_proc_name);
	  END;
  fnd_file.put_line(fnd_file.output,l_name);
  log_message(p_text => lc_proc_name||' Job Created job_name => '||l_name,p_module_name => lc_proc_name);
  log_message(p_text => lc_proc_name||' ... l_job_id => '||l_job_id,p_module_name => lc_proc_name); 
  log_message(p_text => lc_proc_name||' ... l_object_version_number => '||l_object_version_number,p_module_name => lc_proc_name);   
  log_message(p_text => lc_proc_name||' ... l_job_definition_id => '||l_job_definition_id,p_module_name => lc_proc_name);   
 end loop; 
 fnd_file.put_line(fnd_file.output,'======End of Report====');
 log_message(p_text => lc_proc_name||' (-)'
                                     ,p_module_name => lc_proc_name       
                                        ); 
EXCEPTION
 WHEN OTHERS THEN
   x_retmsg := gc_unexp_exc_msg||' - '||'Step ('||gc_step||') '||SQLERRM;
   x_retcode := '2';
   FND_FILE.put_line(FND_FILE.log, x_retmsg);
   log_message(p_text => lc_proc_name||' (-)'
                                     ,p_module_name => lc_proc_name       
                                        );  
end create_missing_jobs;

END XXNUC_HR_EMP_IFACE_PKG;
/