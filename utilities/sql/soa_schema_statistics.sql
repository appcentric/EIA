--SOA Schema Stats
-- Vivek Srinivasan
-- 9/20/2013
begin
dbms_stats.delete_schema_stats(ownname=>'SOA_SOAINFRA',stattype=>'ALL', force=>true);
dbms_stats.delete_schema_stats(ownname=>'SOA_MDS',stattype=>'ALL', force=>true);
end;
/