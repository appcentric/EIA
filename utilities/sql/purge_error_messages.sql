declare
 type t_id is table of rowid index by binary_integer;
 lrowids t_id;
 cursor c is
 select rowid from error_messages where timestamp < sysdate - 30
 ;
begin
 open c;
 loop
  fetch c bulk collect into lrowids limit 5000;
  exit when lrowids.count = 0;
  forall j in nvl(lrowids.first,1)..NVL(lrowids.last,0) delete from error_messages where rowid=lrowids(j);
  commit;
 end loop;
End;
/