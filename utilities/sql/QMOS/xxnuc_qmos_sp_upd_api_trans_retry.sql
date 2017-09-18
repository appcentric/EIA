create or replace procedure sp_upd_api_trans_for_retry(p_retry_days_limit in number)
is
begin
update api_billet_trans
set processed='N', error_message='Marked for Re-Processing'
where create_date >= trunc(sysdate)-p_retry_days_limit
and processed='E'
;
update api_billet_trans
set processed='X', error_message='Retries Exhausted. Record marked as skipped'
where create_date < trunc(sysdate)-p_retry_days_limit
and processed='E'
;
update api_bundle_trans
set processed='N', error_message='Marked for Re-Processing'
where create_date >= trunc(sysdate)-p_retry_days_limit
and processed='E'
;
update api_bundle_trans
set processed='X', error_message='Retries Exhausted. Record marked as skipped'
where create_date < trunc(sysdate)-p_retry_days_limit
and processed='E'
;
commit;
end;
/