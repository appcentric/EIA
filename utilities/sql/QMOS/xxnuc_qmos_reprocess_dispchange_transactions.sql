create or replace procedure reprocess_dispchange_txns
is
begin
update api_billet_trans_ext e
set processed='N'
where 1 =1
and transaction_Type='DISPCHANGE'
and error_message like '%One or more billets in group do not exist in the inventory.%'
and e.receipt_Date >= sysdate - interval '1' hour
and processed='E'
;
update api_billet_trans_ext_control
set send_flag=1;
commit;
end;
/