DECLARE
   jobno   NUMBER;
BEGIN
   DBMS_JOB.SUBMIT
      (job  => jobno
      ,what => 'begin reprocess_dispchange_txns; end;'
      ,next_date => SYSDATE
      ,interval  => 'sysdate + 5/1440');
   COMMIT;
END;
/