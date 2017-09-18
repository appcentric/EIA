create or replace 
type XXNUC_INTERFACE_CONTEXT_OBJ as object  (UserName varchar2(240)
, UserId NUMBER
, ResponsibilityKey VARCHAR2(240)
, ResponsibilityId number
, ResponsibilityName Varchar2(240)
, ResponsibilityApplId Number
, SecurityGroup varchar2(240)
, SecurityGroupId NUMBER 
, Language varchar2(240)
, OrganizationName VARCHAR2(240)
, OrgId number
, MFGOrganizationId NUMBER,

  MEMBER FUNCTION  getUserId   return Number,
  MEMBER FUNCTION  getResponsibilityId   return Number,
  MEMBER FUNCTION  getResponsibilityApplId return Number,
  MEMBER FUNCTION  getSecurityGroupId   return Number,
  MEMBER FUNCTION  getOrgId return Number,
  MEMBER FUNCTION  getlang return Varchar2,
  MEMBER FUNCTION  getMfgOrgId return Number,
  MEMBER PROCEDURE setUserId(p_UserName in Varchar2),
  MEMBER PROCEDURE setRespId_fromName(p_ResponsibilityName in Varchar2),
  MEMBER PROCEDURE setRespId_fromKey(p_ResponsibilityKey in Varchar2),  
  MEMBER PROCEDURE setSecurityGroupId(p_SecurityGroup in Varchar2),
  MEMBER PROCEDURE setOrgId(p_OrganizationName in Varchar2),

  MEMBER PROCEDURE setAppsContext,
  MEMBER PROCEDURE setOrgContext
);
/

create or replace 
type body XXNUC_INTERFACE_CONTEXT_OBJ as



  
  MEMBER FUNCTION  getUserId   return Number is
  begin

     return UserId;
  end getUserId;

  MEMBER FUNCTION  getResponsibilityId   return Number is
  begin

     return ResponsibilityId;  

  end getResponsibilityId;


  MEMBER FUNCTION  getResponsibilityApplId   return Number is
  begin

     return ResponsibilityApplId;  

  end getResponsibilityApplId;


  MEMBER FUNCTION  getLang return Varchar2 is
  begin
    return language;
  end getLang;

  MEMBER FUNCTION  getMfgOrgId   return Number is
  begin
    return MFGOrganizationId;
  end getMfgOrgId;

  MEMBER FUNCTION  getOrgId return Number is
  begin

    return OrgId;
  end getOrgId;
  MEMBER FUNCTION  getSecurityGroupId  return Number is
  begin

     return SecurityGroupId;  

  end getSecurityGroupId;
 

  MEMBER PROCEDURE setUserId(p_UserName in Varchar2) is
  begin
    
     select User_id  into UserId from fnd_user where user_name=p_userName
     ;
  exception
   when others then
     UserId := -1;
  end setUserId;

  MEMBER PROCEDURE setRespId_fromKey(P_ResponsibilityKey in Varchar2) is
  begin
    select responsibility_id, application_id into ResponsibilityId, ResponsibilityApplId
     from fnd_responsibility where responsibility_key = ResponsibilityKey
     ;
  exception
   when others then
   ResponsibilityId := -1;
   ResponsibilityApplId := -1;
   
  end setRespId_fromKey;

  MEMBER PROCEDURE setRespId_fromName(P_ResponsibilityName in Varchar2) is
  begin
    select responsibility_id, application_id, language into ResponsibilityId, ResponsibilityApplId, language
     from fnd_responsibility_vl where responsibility_name = ResponsibilityName
     ;
  exception
   when others then
   ResponsibilityId := -1;
   ResponsibilityApplId := -1;
   language := 'US';
  end setRespId_fromName;  

  MEMBER PROCEDURE setSecurityGroupId(p_SecurityGroup in Varchar2) is
  begin
     select  security_group_id into SecurityGroupId from fnd_security_groups
     where security_group_key = p_SecurityGroup
     ;
exception     
   when others then
   SecurityGroupId := -1;
  end setSecurityGroupId;

  MEMBER PROCEDURE setOrgId(p_OrganizationName in Varchar2) is
  begin
     select  organization_id into OrgId from hr_operating_units
     where name = p_OrganizationName
     ;
 exception     
   when others then
   OrgId := -1;     
  end setOrgId;
  
  
  MEMBER PROCEDURE setAppsContext is
  begin
  
    if UserId is null then
      setUserId(UserName);
    end if;
    
    if ResponsibilityId is null then
      if ResponsibilityName is not null then
      setRespId_fromName(ResponsibilityName);
    end if;
      
      if ResponsibilityKey is not null 
      then 
       setRespId_fromkey(ResponsibilityKey);
      end if;
    end if;
    
    fnd_global.apps_initialize(getUserId,getResponsibilityId,getResponsibilityApplId);    
  end setAppsContext;
  
  MEMBER PROCEDURE setOrgContext is
  begin
   if OrgId is null then
     setOrgId(OrganizationName);
   end if;  
     mo_global.set_policy_context('S',OrgId);
  end setOrgContext;

end;
/