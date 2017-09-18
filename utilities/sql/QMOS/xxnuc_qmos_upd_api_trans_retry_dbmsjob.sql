DECLARE
   jobno   NUMBER;
BEGIN
   DBMS_JOB.SUBMIT
      (job  => jobno
      ,what => 'begin SP_UPD_API_TRANS_FOR_RETRY(7); end;'
      ,next_date => SYSDATE
      ,interval  => 'SYSDATE+1/24');
   COMMIT;
END;
/