create or replace
PACKAGE BODY XXNUC_AR_LOCKBOX_HOOK_PKG as


PG_DEBUG varchar2(1) := NVL(FND_PROFILE.value('AFLOG_ENABLED'), 'N');
 TYPE resequence_invoice_rec  IS RECORD (transmission_record_id ar_payments_interface_all.transmission_record_id%TYPE
                                             ,resequence_overflow_seq ar_payments_interface_all.overflow_sequence%TYPE
                                             ,item_number ar_payments_interface_all.item_number%TYPE
				             ,batch_name ar_payments_interface_all.batch_name%TYPE
				             ,overflow_sequence ar_payments_interface_all.overflow_sequence%TYPE
				             ,overflow_indicator ar_payments_interface_all.overflow_indicator%TYPE
				             ,invoice1 ar_payments_interface_all.invoice1%TYPE
					     );
 TYPE resequence_invoice_tbl IS TABLE OF resequence_invoice_rec INDEX BY binary_integer;


  -- This hook procedure to handle lockbox file for Yamato and called from inside  the ARP_LOCKBOX_HOOK.proc_before_validation
  -- This procedure just resets ths Overflow sequence of Invoice type record (Overflow Payment) because
  -- bank is not providing the unique sequence for overflow sequence in type 4 record
  -- Also this procedure will Pre-append the Invoice1 field with the YY string, where YY is the year string to allow for matching in Oracle


PROCEDURE nys_lb_reseq_overflw_seq(out_errorbuf OUT NOCOPY VARCHAR2,
                                 out_errorcode OUT NOCOPY VARCHAR2,
                                 in_trans_req_id IN VARCHAR2,
                                 out_insert_records OUT NOCOPY VARCHAR2)
IS
 
 


 -- Cursor to obtain Receipt Overflow Information (Basically Invoice information in our case) 
 -- from the Transmission
 -- They are reqsequenced using the row_number partition analtyic function
 -- Org Stripped views are used here
 -- We are tweaking the invoice number to prepend it with '13' as AS400 will be sending 6 digit invoices
 CURSOR lcu_resequence_invoice_info (cp_trans_req_id IN VARCHAR2)
 IS
 SELECT pi.transmission_record_id 
       , row_number() over (partition by pi.batch_name||'-'||pi.item_number 
                   order by pi.item_number,pi.overflow_indicator,pi.overflow_sequence ) resequence_overflow_seq
        ,pi.item_number
	,pi.batch_name
	,pi.overflow_sequence
	,pi.overflow_indicator
	,(CASE WHEN LENGTH(pi.invoice1) = 6 then '13'||pi.invoice1
	  ELSE pi.invoice1
	  END) invoice1
 FROM ar_transmissions tr,
             ar_trans_record_formats rf
             ,ar_payments_interface pi
           WHERE tr.transmission_id = pi.transmission_id
           AND rf.transmission_format_id = tr.requested_trans_format_id
           AND rf.record_identifier = pi.record_type
           AND rf.record_type_lookup_code = ('OVRFLW PAYMENT')
           and pi.transmission_request_id = cp_trans_req_id
  ORDER BY pi.batch_name
          ,pi.item_number
	  ,pi.overflow_indicator
	  ,pi.overflow_sequence, 2
;

 lt_resequence_invoice_tbl resequence_invoice_tbl;
 ln_chunk_size NUMBER := 1000; -- Commit Size
-- lc_invoice_num_prefix VARCHAR2(10) := '13';
BEGIN

  out_errorcode := 0;
  out_errorbuf := NULL;
  out_insert_records := 'Y';


   FND_FILE.put_line(FND_FILE.log,'XXNUC_AR_LOCKBOX_HOOK_PKG.nys_lb_pre_validation()+');
  IF PG_DEBUG in ('Y', 'C') THEN
     arp_util.debug('XXNUC_AR_LOCKBOX_HOOK_PKG.nys_lb_pre_validation()+');
  END IF;

FND_FILE.put_line(FND_FILE.log, ' MO_GLOBAL.get_ou_count '||MO_GLOBAL.get_ou_count||' FND_GLOBAL.org_name '||FND_GLOBAL.org_name);

  -- If this program is run in Multi Org Mode or for organization other than NYS
  -- Then dont execute this extension (shunt it)
  -- This extension is written only for NYS and would like to run only for that Org.
  IF MO_GLOBAL.get_ou_count > 1 OR FND_GLOBAL.org_name <> 'NYS'
  THEN 

     FND_FILE.put_line(FND_FILE.log,'XXNUC_AR_LOCKBOX_HOOK_PKG.nys_lb_pre_validation() - Not NYS or this program is run in Muti Org Mode. Not executing this extension');
     FND_FILE.put_line(FND_FILE.log,'XXNUC_AR_LOCKBOX_HOOK_PKG.nys_lb_pre_validation()-');

    IF PG_DEBUG in ('Y', 'C') THEN
     arp_util.debug('XXNUC_AR_LOCKBOX_HOOK_PKG.nys_lb_pre_validation() - Not NYS or this program is run in Muti Org Mode. Not executing this extension');
     arp_util.debug('XXNUC_AR_LOCKBOX_HOOK_PKG.nys_lb_pre_validation()-');
    END IF;

   RETURN;
  END IF;

   FND_FILE.put_line(FND_FILE.log,'Continue Processing...NYS..');

   -- Open resequence invoice info cursor
   OPEN lcu_resequence_invoice_info ( cp_trans_req_id => in_trans_req_id);
   LOOP

   -- Clear the Table
   lt_resequence_invoice_tbl.delete;

   -- COLLECT the Overflow receipt information (invoice) into a table limited by chunk size
   FETCH lcu_resequence_invoice_info BULK COLLECT INTO lt_resequence_invoice_tbl LIMIT ln_chunk_size;

   --dbms_output.put_line('Copunt => '||lt_resequence_invoice_tbl.count);
   EXIT WHEN lt_resequence_invoice_tbl.COUNT = 0;
     
    --dbms_output.put_line('Copunt => '||lt_resequence_invoice_tbl.count);
     -- Bulk Update overflow_sequences here
     FORALL i IN NVL(lt_resequence_invoice_tbl.first,1)..NVL(lt_resequence_invoice_tbl.last,0)
    UPDATE ar_payments_interface
    SET overflow_sequence =  lt_resequence_invoice_tbl(i).resequence_overflow_seq
        ,invoice1 = lt_resequence_invoice_tbl(i).invoice1
    WHERE transmission_record_id  =  lt_resequence_invoice_tbl(i).transmission_record_id;

    -- This is just dummy log printing block pipe delimited data separated information
    -- To verify the data if needed from the log file
    IF PG_DEBUG in ('Y', 'C') 
    THEN
       
       arp_util.debug('transmission_record_id'||'|'
                    ||'resequence_overflow_seq'||'|'
		    ||'item_number'||'|'
		    ||'batch_name'||'|'
		    ||'overflow_sequence'||'|'
		    ||'overflow_indicator'||'|'
		    ||'invoice1');

      FOR i IN NVL(lt_resequence_invoice_tbl.first,1)..NVL(lt_resequence_invoice_tbl.last,0)
      LOOP 

      
     arp_util.debug(lt_resequence_invoice_tbl(i).transmission_record_id||'|'
                    ||lt_resequence_invoice_tbl(i).resequence_overflow_seq||'|'
		    ||lt_resequence_invoice_tbl(i).item_number||'|'
		    ||lt_resequence_invoice_tbl(i).batch_name||'|'
		    ||lt_resequence_invoice_tbl(i).overflow_sequence||'|'
		     ||lt_resequence_invoice_tbl(i).overflow_indicator||'|'
		    ||lt_resequence_invoice_tbl(i).invoice1);

     END LOOP;
    END IF;

  END LOOP; -- resequence loop
  
 

  FND_FILE.put_line(FND_FILE.log,'XXNUC_AR_LOCKBOX_HOOK_PKG.nys_lb_pre_validation()-');
  IF PG_DEBUG in ('Y', 'C') THEN
     arp_util.debug('XXNUC_AR_LOCKBOX_HOOK_PKG.nys_lb_pre_validation()-');
  END IF;


END nys_lb_reseq_overflw_seq; 


END XXNUC_AR_LOCKBOX_HOOK_PKG;
/
