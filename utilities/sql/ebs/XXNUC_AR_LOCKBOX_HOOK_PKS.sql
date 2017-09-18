create or replace
PACKAGE XXNUC_AR_LOCKBOX_HOOK_PKG AUTHID CURRENT_USER as
 



  -- This hook procedure to handle lockbox file for Yamato and called from inside  the ARP_LOCKBOX_HOOK.proc_before_validation
  -- This procedure just resets ths Overflow sequence of Invoice type record (Overflow Payment) because
  -- bank is not providing the unique sequence for overflow sequence in type 4 record
  -- Also this procedure will Pre-append the Invoice1 field with the YY string, where YY is the year string to allow for matching in Oracle
 PROCEDURE nys_lb_reseq_overflw_seq(out_errorbuf OUT NOCOPY VARCHAR2,
                                 out_errorcode OUT NOCOPY VARCHAR2,
                                 in_trans_req_id IN VARCHAR2,
                                 out_insert_records OUT NOCOPY VARCHAR2);
 
END XXNUC_AR_LOCKBOX_HOOK_PKG;
/