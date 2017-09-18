
create or replace 
PACKAGE BODY XXNUC_ARPT_SQL_FUNC_UTIL_PKG AS

/*
Description: Package used by SOA Webservices to aggregate customer balances into Aging buckets
Date: 4/29/2014
Author: KPIT
*/

-- This function is called from a Aging view utilized by SOA Customer Balance Webservice
-- this function specifically written to non-org sensitive  
FUNCTION amount_remaining_gl_date (p_payment_schedule_id in number,
                                   p_as_of_date in date,
                                p_class in varchar2 )
                                
RETURN number IS
l_amount_applied_late     number;
l_amount_adjusted_late number;
l_actual_amount      number;
l_amt_due_original   number;
l_as_of_date DATE := trunc(p_as_of_date);
l_on_acct_receipts NUMBER;
l_app_receipts number;
BEGIN


 SELECT  nvl( sum ( decode ( 'Y', 'Y', (decode(ps.class, 'CM',  decode (  ra.application_type, 'CM', ra.acctd_amount_applied_from,
                                     ra.acctd_amount_applied_to),ra.acctd_amount_applied_to) +
                     nvl(ra.acctd_earned_discount_taken,0) +
                 nvl(ra.acctd_unearned_discount_taken,0) ) 
           ) * decode  ( ps.class, 'CM',  decode(ra.application_type, 'CM', -1, 1), 1 ) ), 0 ) 
           into  l_amount_applied_late 
           from  ar_receivable_applications_all ra, ar_payment_schedules_all ps 
           where (ra.applied_payment_schedule_id = p_payment_schedule_id or  ra.payment_schedule_id = p_payment_schedule_id) 
           and   ra.status||'' = 'APP' and   nvl( ra.confirmed_flag, 'Y' ) = 'Y' 
           and   trunc(ra.gl_date)+0 <= l_as_of_date 
           and   ps.payment_schedule_id = p_payment_schedule_id
           ;
           
SELECT NVL(SUM(acctd_amount * -1),0) 
INTO l_amount_adjusted_late 
FROM ar_adjustments_all 
WHERE payment_schedule_id =  p_payment_schedule_id 
AND trunc(gl_date)+0 <= l_as_of_date 
 AND status 			  = 'A';
     

SELECT  amount_due_original * nvl(exchange_rate,1) Into 
l_amt_due_original
From  ar_payment_schedules_all
Where   Payment_schedule_id =  p_payment_schedule_id;
     
    
      SELECT  nvl(sum(decode(ra.status , 'ACC', amount_applied, 0 )),0),  nvl(sum(decode(ra.status , 'APP', amount_applied,'ACTIVITY',
      amount_applied, 0)),0)
       INTO  l_on_acct_receipts , 
            l_app_receipts 
            FROM  ar_receivable_applications_all ra 
            WHERE  ra.payment_schedule_id =p_payment_schedule_id  AND  
            trunc(ra.gl_date) <= l_as_of_date  AND  
            ra.status 			 in ('ACC' , 'APP','ACTIVITY' );
      
       l_actual_amount := l_amt_due_original
                     + l_amount_adjusted_late
                     - l_amount_applied_late ;
                     
  RETURN(l_actual_amount);

 
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN(null);
  WHEN OTHERS THEN
    NULL;
END amount_remaining_gl_date;
               
FUNCTION amount_remaining(
                                p_applied_payment_schedule_id in number,
                                p_as_of_date in date,
                                p_class in varchar2  )
RETURN number IS

p_amount_applied     number;
/*Bug 2453245 */
p_adj_amount_applied number;
p_actual_amount      number;
p_amt_due_original   number;
/* Bug 2610716 */
p_cm_amount_applied  number;

BEGIN
 SELECT nvl(sum(nvl(amount_applied,0) + nvl(earned_discount_taken,0) + nvl(unearned_discount_taken,0)), 0)
 INTO   p_amount_applied
 FROM   ar_receivable_applications_all
 WHERE  applied_payment_schedule_id = p_applied_payment_schedule_id
 AND	status = 'APP'
 AND	nvl(confirmed_flag,'Y') = 'Y'
 AND    apply_date <= p_as_of_date;

 /* Added the  query to take care of On-Account CM applications Bug 2610716*/
IF p_class = 'CM' THEN
 SELECT nvl(sum(amount_applied),0)
 INTO p_cm_amount_applied
 FROM   ar_receivable_applications_all
 WHERE  payment_schedule_id = p_applied_payment_schedule_id
 AND apply_date <= p_as_of_date;
END IF;

 /* Bug 2453245 Added the query to retrieve the Adjustment
    Amount applied to the Invoice */
 SELECT nvl(sum(amount),0)
 INTO   p_adj_amount_applied
 FROM   ar_adjustments_all
 WHERE  payment_schedule_id = p_applied_payment_schedule_id
        AND        status   = 'A'
        AND     apply_date <= p_as_of_date;

 SELECT amount_due_original
 INTO   p_amt_due_original
 FROM   ar_payment_schedules_all
 WHERE  payment_schedule_id = p_applied_payment_schedule_id;

  /*Bug 2453245 Added p_adj_amount_applied so that
   Adjustment amount is also taken into account while
   computing the Balance */
/* bug4085823: Added nvl for p_cm_amount_applied */
  p_actual_amount := p_amt_due_original
                     + p_adj_amount_applied
                     - p_amount_applied + nvl(p_cm_amount_applied,0) ;
  RETURN(p_actual_amount);
EXCEPTION
  /* bug3544286 added NO_DATA_FOUND */
  WHEN NO_DATA_FOUND THEN
    RETURN(null);
  WHEN OTHERS THEN
    NULL;
END amount_remaining;		
    

    
-- This function is called from a Aging view utilized by SOA Customer Balance Webservice for NSA
-- this function specifically written to non-org sensitive  

FUNCTION cust_org_trx (p_customer_id IN NUMBER
                                  ,p_org_id IN NUMBER
                                   )  RETURN transactions_tbl 
PIPELINED
is
 cursor cust_trx (p_customer_id in NUMBER) 
 is
 select apsa.PAYMENT_SCHEDULE_ID PAYMENT_SCHEDULE_ID
,apsa.TRX_NUMBER TRX_NUMBER
,apsa.TRX_DATE TRX_DATE
,apsa.TERMS_SEQUENCE_NUMBER TERMS_SEQUENCE_NUMBER
,apsa.INVOICE_CURRENCY_CODE INVOICE_CURRENCY_CODE
,apsa.EXCHANGE_RATE EXCHANGE_RATE
,apsa.GL_DATE GL_DATE
,trx.ATTRIBUTE_CATEGORY ATTRIBUTE_CATEGORY
,trx.ATTRIBUTE1 ATTRIBUTE1
,trx.ATTRIBUTE2 ATTRIBUTE2
,trx.ATTRIBUTE3 ATTRIBUTE3
,trx.ATTRIBUTE4 ATTRIBUTE4
,trx.ATTRIBUTE5 ATTRIBUTE5
,trx.ATTRIBUTE6 ATTRIBUTE6
,trx.ATTRIBUTE7 ATTRIBUTE7
,trx.ATTRIBUTE8 ATTRIBUTE8
,trx.ATTRIBUTE9 ATTRIBUTE9
,trx.ATTRIBUTE10 ATTRIBUTE10
,trx.ATTRIBUTE11 ATTRIBUTE11
,trx.ATTRIBUTE12 ATTRIBUTE12
,trx.ATTRIBUTE13 ATTRIBUTE13
,trx.ATTRIBUTE14 ATTRIBUTE14
,trx.ATTRIBUTE15 ATTRIBUTE15
,apsa.CUSTOMER_ID CUSTOMER_ID
,apsa.CUSTOMER_SITE_USE_ID CUSTOMER_SITE_USE_ID
,apsa.CUSTOMER_TRX_ID CUSTOMER_TRX_ID
,apsa.CUST_TRX_TYPE_ID CUST_TRX_TYPE_ID
,apsa.CASH_RECEIPT_ID CASH_RECEIPT_ID
,apsa.CLASS CLASS
,apsa.STATUS STATUS
,apsa.STATE_DSP STATE_DSP
,apsa.STATE STATE
,apsa.RECEIPT_CONFIRMED_FLAG RECEIPT_CONFIRMED_FLAG
,apsa.SELECTED_FOR_RECEIPT_BATCH_ID SELECTED_FOR_RECEIPT_BATCH_ID
,apsa.COLLECTOR_LAST COLLECTOR_LAST
,apsa.FOLLOW_UP_CODE_LAST FOLLOW_UP_CODE_LAST
,apsa.IN_COLLECTION IN_COLLECTION
,apsa.TERM_ID TERM_ID
,apsa.RAC_CUSTOMER_NAME RAC_CUSTOMER_NAME
,apsa.RAC_CUSTOMER_NUMBER RAC_CUSTOMER_NUMBER
,apsa.SU_LOCATION SU_LOCATION
,apsa.BS_BATCH_SOURCE_NAME BS_BATCH_SOURCE_NAME
,apsa.TYPE_NAME TYPE_NAME
,apsa.AL_CLASS_MEANING AL_CLASS_MEANING
,apsa.DOC_SEQUENCE_VALUE DOC_SEQUENCE_VALUE
,apsa.CT_PURCHASE_ORDER CT_PURCHASE_ORDER
,apsa.CT_PREVIOUS_CUSTOMER_TRX_ID CT_PREVIOUS_CUSTOMER_TRX_ID
,apsa.INTERFACE_HEADER_CONTEXT INTERFACE_HEADER_CONTEXT
,apsa.INTERFACE_HEADER_ATTRIBUTE1 INTERFACE_HEADER_ATTRIBUTE1
,apsa.INTERFACE_HEADER_ATTRIBUTE2 INTERFACE_HEADER_ATTRIBUTE2
,apsa.INTERFACE_HEADER_ATTRIBUTE3 INTERFACE_HEADER_ATTRIBUTE3
,apsa.INTERFACE_HEADER_ATTRIBUTE4 INTERFACE_HEADER_ATTRIBUTE4
,apsa.INTERFACE_HEADER_ATTRIBUTE5 INTERFACE_HEADER_ATTRIBUTE5
,apsa.INTERFACE_HEADER_ATTRIBUTE6 INTERFACE_HEADER_ATTRIBUTE6
,apsa.INTERFACE_HEADER_ATTRIBUTE7 INTERFACE_HEADER_ATTRIBUTE7
,apsa.INTERFACE_HEADER_ATTRIBUTE8 INTERFACE_HEADER_ATTRIBUTE8
,apsa.INTERFACE_HEADER_ATTRIBUTE9 INTERFACE_HEADER_ATTRIBUTE9
,apsa.INTERFACE_HEADER_ATTRIBUTE10 INTERFACE_HEADER_ATTRIBUTE10
,apsa.INTERFACE_HEADER_ATTRIBUTE11 INTERFACE_HEADER_ATTRIBUTE11
,apsa.INTERFACE_HEADER_ATTRIBUTE12 INTERFACE_HEADER_ATTRIBUTE12
,apsa.INTERFACE_HEADER_ATTRIBUTE13 INTERFACE_HEADER_ATTRIBUTE13
,apsa.INTERFACE_HEADER_ATTRIBUTE14 INTERFACE_HEADER_ATTRIBUTE14
,apsa.INTERFACE_HEADER_ATTRIBUTE15 INTERFACE_HEADER_ATTRIBUTE15
,apsa.DUE_DAYS DUE_DAYS
,apsa.DUE_DATE DUE_DATE
,apsa.AMOUNT_DUE_ORIGINAL AMOUNT_DUE_ORIGINAL
,apsa.ACCTD_AMOUNT_DUE_ORIGINAL ACCTD_AMOUNT_DUE_ORIGINAL
,apsa.AMOUNT_DUE_REMAINING AMOUNT_DUE_REMAINING
,apsa.ACCTD_AMOUNT_DUE_REMAINING ACCTD_AMOUNT_DUE_REMAINING
,apsa.AL_STATUS_MEANING AL_STATUS_MEANING
,apsa.ACTUAL_DATE_CLOSED ACTUAL_DATE_CLOSED
,apsa.GL_DATE_CLOSED GL_DATE_CLOSED
,apsa.AMOUNT_LINE_ITEMS_ORIGINAL AMOUNT_LINE_ITEMS_ORIGINAL
,apsa.ACCTD_AMOUNT_LINE_ITEMS_ORIG ACCTD_AMOUNT_LINE_ITEMS_ORIG
,apsa.AMOUNT_LINE_ITEMS_REMAINING AMOUNT_LINE_ITEMS_REMAINING
,apsa.ACCTD_AMOUNT_LINE_ITEMS_REMAIN ACCTD_AMOUNT_LINE_ITEMS_REMAIN
,apsa.TAX_ORIGINAL TAX_ORIGINAL
,apsa.ACCTD_TAX_ORIGINAL ACCTD_TAX_ORIGINAL
,apsa.TAX_REMAINING TAX_REMAINING
,apsa.ACCTD_TAX_REMAINING ACCTD_TAX_REMAINING
,apsa.FREIGHT_ORIGINAL FREIGHT_ORIGINAL
,apsa.ACCTD_FREIGHT_ORIGINAL ACCTD_FREIGHT_ORIGINAL
,apsa.FREIGHT_REMAINING FREIGHT_REMAINING
,apsa.ACCTD_FREIGHT_REMAINING ACCTD_FREIGHT_REMAINING
,apsa.AMOUNT_ADJUSTED AMOUNT_ADJUSTED
,apsa.ACCTD_AMOUNT_ADJUSTED ACCTD_AMOUNT_ADJUSTED
,apsa.AMOUNT_ADJUSTED_PENDING AMOUNT_ADJUSTED_PENDING
,apsa.ACCTD_AMOUNT_ADJUSTED_PENDING ACCTD_AMOUNT_ADJUSTED_PENDING
,apsa.RECEIVABLES_CHARGES_CHARGED RECEIVABLES_CHARGES_CHARGED
,apsa.ACCTD_REC_CHARGES_CHARGED ACCTD_REC_CHARGES_CHARGED
,apsa.RECEIVABLES_CHARGES_REMAINING RECEIVABLES_CHARGES_REMAINING
,apsa.ACCTD_REC_CHARGES_REMAINING ACCTD_REC_CHARGES_REMAINING
,apsa.AMOUNT_APPLIED AMOUNT_APPLIED
,apsa.ACCTD_AMOUNT_APPLIED ACCTD_AMOUNT_APPLIED
,apsa.AMOUNT_CREDITED AMOUNT_CREDITED
,apsa.ACCTD_AMOUNT_CREDITED ACCTD_AMOUNT_CREDITED
,apsa.AMOUNT_IN_DISPUTE AMOUNT_IN_DISPUTE
,apsa.ACCTD_AMOUNT_IN_DISPUTE ACCTD_AMOUNT_IN_DISPUTE
,apsa.DISPUTE_DATE DISPUTE_DATE
,apsa.DISCOUNT_TAKEN_EARNED DISCOUNT_TAKEN_EARNED
,apsa.ACCTD_DISCOUNT_TAKEN_EARNED ACCTD_DISCOUNT_TAKEN_EARNED
,apsa.DISCOUNT_TAKEN_UNEARNED DISCOUNT_TAKEN_UNEARNED
,apsa.ACCTD_DISCOUNT_TAKEN_UNEARNED ACCTD_DISCOUNT_TAKEN_UNEARNED
,apsa.AL_SELECTED_FOR_RECEIPT_FLAG AL_SELECTED_FOR_RECEIPT_FLAG
,apsa.AL_SELECTED_FOR_RECEIPT_CODE AL_SELECTED_FOR_RECEIPT_CODE
,apsa.AL_RECEIPT_CONFIRMED_MEANING AL_RECEIPT_CONFIRMED_MEANING
,apsa.CR_SELECTED_RECEIPT_NUMBER CR_SELECTED_RECEIPT_NUMBER
,apsa.ARB_SELECTED_BATCH_NAME ARB_SELECTED_BATCH_NAME
,apsa.ARB_SELECTED_BATCH_DATE ARB_SELECTED_BATCH_DATE
,apsa.DAYS_PAST_DUE DAYS_PAST_DUE
,apsa.DUNNING_DATE_LAST DUNNING_DATE_LAST
,apsa.CALL_DATE_LAST CALL_DATE_LAST
,apsa.PROMISE_AMOUNT_LAST PROMISE_AMOUNT_LAST
,apsa.ACCTD_PROMISE_AMOUNT_LAST ACCTD_PROMISE_AMOUNT_LAST
,apsa.PROMISE_DATE_LAST PROMISE_DATE_LAST
,apsa.AL_FOLLOW_UP_LAST_MEANING AL_FOLLOW_UP_LAST_MEANING
,apsa.FOLLOW_UP_DATE_LAST FOLLOW_UP_DATE_LAST
,apsa.AL_IN_COLLECTION_MEANING AL_IN_COLLECTION_MEANING
,apsa.RAT_TERM_NAME RAT_TERM_NAME
,apsa.CHARGEBACK_INVOICE_NUM CHARGEBACK_INVOICE_NUM
,apsa.CHARGEBACK_BATCH_SOURCE CHARGEBACK_BATCH_SOURCE
,apsa.BILLING_NUMBER BILLING_NUMBER
,apsa.STAGED_DUNNING_LEVEL STAGED_DUNNING_LEVEL
,apsa.DUNNING_LEVEL_OVERRIDE_DATE DUNNING_LEVEL_OVERRIDE_DATE
,apsa.REMITTANCE_METHOD REMITTANCE_METHOD
,apsa.GLOBAL_ATTRIBUTE_CATEGORY GLOBAL_ATTRIBUTE_CATEGORY
,trx.special_instructions  GLOBAL_ATTRIBUTE1
,(select to_char(max(ar.gl_date),'YYYY-MM-DD HH24:MI:SS') from ar_receivable_applications ar 
where ar.payment_schedule_id = apsa.payment_schedule_id and ar.status = 'APP') GLOBAL_ATTRIBUTE2
,apsa.GLOBAL_ATTRIBUTE3 GLOBAL_ATTRIBUTE3
,apsa.GLOBAL_ATTRIBUTE4 GLOBAL_ATTRIBUTE4
,apsa.GLOBAL_ATTRIBUTE5 GLOBAL_ATTRIBUTE5
,apsa.GLOBAL_ATTRIBUTE6 GLOBAL_ATTRIBUTE6
,apsa.GLOBAL_ATTRIBUTE7 GLOBAL_ATTRIBUTE7
,apsa.GLOBAL_ATTRIBUTE8 GLOBAL_ATTRIBUTE8
,apsa.GLOBAL_ATTRIBUTE9 GLOBAL_ATTRIBUTE9
,apsa.GLOBAL_ATTRIBUTE10 GLOBAL_ATTRIBUTE10
,apsa.GLOBAL_ATTRIBUTE11 GLOBAL_ATTRIBUTE11
,apsa.GLOBAL_ATTRIBUTE12 GLOBAL_ATTRIBUTE12
,apsa.GLOBAL_ATTRIBUTE13 GLOBAL_ATTRIBUTE13
,apsa.GLOBAL_ATTRIBUTE14 GLOBAL_ATTRIBUTE14
,apsa.GLOBAL_ATTRIBUTE15 GLOBAL_ATTRIBUTE15
,apsa.GLOBAL_ATTRIBUTE16 GLOBAL_ATTRIBUTE16
,apsa.GLOBAL_ATTRIBUTE17 GLOBAL_ATTRIBUTE17
,apsa.GLOBAL_ATTRIBUTE18 GLOBAL_ATTRIBUTE18
,apsa.GLOBAL_ATTRIBUTE19 GLOBAL_ATTRIBUTE19
,apsa.GLOBAL_ATTRIBUTE20 GLOBAL_ATTRIBUTE20
,apsa.CONS_INV_ID CONS_INV_ID
,apsa.LAST_UPDATED_BY LAST_UPDATED_BY
,apsa.LAST_UPDATE_DATE LAST_UPDATE_DATE
,apsa.LAST_UPDATE_LOGIN LAST_UPDATE_LOGIN
,apsa.CREATED_BY CREATED_BY
,apsa.CREATION_DATE CREATION_DATE
,apsa.COMMENTS COMMENTS
,apsa.LEGAL_ENTITY_ID LEGAL_ENTITY_ID
,apsa.BILLING_DATE BILLING_DATE
,apsa.ORG_ID ORG_ID
from  AR_PAYMENT_SCHEDULES_V apsa
,ra_customer_trx trx
where status = 'OP' and customer_id = nvl(p_customer_id,-1)
and trx.customer_trx_id(+) = apsa.customer_trx_id;


 l_transction_rec  transactions_rec;
 l_transction_tbl  transactions_tbl;

BEGIN

 mo_global.set_policy_context('S',p_org_id);
 
 OPEN cust_trx(p_customer_id);
 
 LOOP
	  fetch cust_trx bulk collect into l_transction_tbl limit 1000;
	  exit when (l_transction_tbl.count = 0);
    
    for j in nvl(l_transction_tbl.first,1)..nvl(l_transction_tbl.last,0)
    loop
 	   pipe row( l_transction_tbl(j));
    end loop;
 END LOOP;
 
  CLOSE cust_trx;
  
 RETURN;
   
END cust_org_trx;
                     
function org_cust_aging (p_customer_id IN number, p_org_id in number, p_credit_option in varchar2, p_bucket_name in varchar2) 
return bucket_lines_tbl 
PIPELINED
as
PRAGMA autonomous_transaction; 
l_bucket_lines_tbl iex_aging_buckets_pkg.bucket_lines_tbl;
l_return_status varchar2(1);
l_count NUMBER;
l_msg_data VARCHAR2(2000);
l_local_bucket_lines_tbl  bucket_lines_tbl := bucket_lines_tbl();

cursor c_bucket_info (cp_bucket_name in varchar2)
is
select aging_bucket_id from ar_aging_buckets
where bucket_name = cp_bucket_name
;
l_aging_bucket_id ar_aging_buckets.aging_bucket_id%type;

BEGIN

 l_local_bucket_lines_tbl.delete;
 mo_global.set_policy_context('S',p_org_id);
 
 open c_bucket_info (p_bucket_name);
  fetch c_bucket_info into l_aging_bucket_id;
 close c_bucket_info;
 
iex_aging_buckets_pkg.QUERY_AGING_LINES
       	(p_api_version    => '1.0',
            p_init_msg_list    => 'T',
            p_commit          => 'F',
            p_validation_level => 100,
            x_return_status    => l_return_status,
            x_msg_count        => l_count,
            x_msg_data         => l_msg_data,
            p_filter_mode      => 'CUST',
	      p_filter_id        => p_customer_id,
            p_customer_site_use_id => null,
            p_bucket_id        => l_aging_bucket_id,
            p_credit_option    => p_credit_option,
            p_using_paying_rel => 'N',
            x_bucket_lines_tbl => l_bucket_lines_tbl);                          

commit;

if l_return_status <> 'S' THEN
 RETURN;
END IF;

FOR i in NVL(l_bucket_lines_tbl.first,1)..nvl(l_bucket_lines_tbl.last,0)
loop
   l_local_bucket_lines_tbl.extend(1);
   l_local_bucket_lines_tbl(l_local_bucket_lines_tbl.last) := l_bucket_lines_tbl(i);
   
   pipe row(l_local_bucket_lines_tbl(l_local_bucket_lines_tbl.last));
   
end loop;

RETURN;

end org_cust_aging;                     

                              
-- This function is called from a Aging view utilized by SOA Customer Balance Webservice for NSA
-- this function specifically written to non-org sensitive  

FUNCTION aging_details (p_org_id IN NUMBER)  RETURN aging_tbl 
PIPELINED
AS
 l_rec  XXEIS.EIS_AR_AGING_V%ROWTYPE;
 l_cursor  sys_refcursor;
BEGIN

 mo_global.set_policy_context('S',p_org_id);
 
 OPEN l_cursor FOR 'select * from XXEIS.EIS_AR_AGING_V';
 
 LOOP
	  fetch l_cursor into l_rec;
	  exit when (l_cursor%notfound);

	  pipe row( l_rec);
 END LOOP;
 
  CLOSE l_cursor;
  
 RETURN;
   
END aging_details; 

-- This function is called from a Aging view utilized by SOA Customer Balance Webservice for NSA
-- this function specifically written to non-org sensitive  

                     
FUNCTION aging_details_csr (p_cursor in sys_refcursor, p_org_id IN NUMBER)  RETURN aging_tbl 
PIPELINED
AS
 l_rec  XXEIS.EIS_AR_AGING_V%ROWTYPE;
BEGIN

 mo_global.set_policy_context('S',p_org_id);
 
 --OPEN l_cursor FOR 'select * from XXEIS.EIS_AR_AGING_V';
 
 LOOP
	  fetch p_cursor into l_rec;
	  exit when (p_cursor%notfound);

	  pipe row( l_rec);
 END LOOP;
 
  CLOSE p_cursor;
  
 RETURN;
   
END aging_details_csr; 
                      
                      
                      
FUNCTION amount_remaining_new(p_payment_schedule_id in number,
                                p_as_of_date in date,
                                p_class in varchar2 ,
                                p_days_from in number,
                                p_days_to in number,
                                p_due_date IN date
                                )
RETURN number IS

l_amount_applied_late     number := 0;
l_amount_adjusted_late number := 0;
l_actual_amount      number := 0;
l_amt_due_original   number := 0;
l_as_of_date DATE := trunc(p_as_of_date);
l_on_acct_receipts NUMBER := 0;
l_app_receipts number := 0;
BEGIN
          
 IF ceil(l_as_of_date-p_due_date) between NVL(p_days_from,-999999) and NVL(p_days_to,999999)
 THEN

 
		/*SELECT  nvl( sum ( decode ( 'Y', 'Y', (decode(ps.class, 'CM',  decode (  ra.application_type, 'CM', ra.acctd_amount_applied_from,
                                     ra.acctd_amount_applied_to),ra.acctd_amount_applied_to) +
                     nvl(ra.acctd_earned_discount_taken,0) +
                 nvl(ra.acctd_unearned_discount_taken,0) ) 
           ) * decode  ( ps.class, 'CM',  decode(ra.application_type, 'CM', -1, 1), 1 ) ), 0 ) 
           into  l_amount_applied_late 
           from  ar_receivable_applications_all ra, ar_payment_schedules_all ps 
           where (
           --ra.applied_payment_schedule_id = p_payment_schedule_id or 
            ra.payment_schedule_id = p_payment_schedule_id) 
           and   ra.status||'' = 'APP' and   nvl( ra.confirmed_flag, 'Y' ) = 'Y' 
           and   trunc(ra.gl_date)+0 <= l_as_of_date 
           and   ps.payment_schedule_id = p_payment_schedule_id
           ;
           
		SELECT NVL(SUM(acctd_amount * -1),0) 
		INTO l_amount_adjusted_late 
		FROM ar_adjustments_all 
		WHERE payment_schedule_id =  p_payment_schedule_id 
		AND trunc(gl_date)+0 <= l_as_of_date 
		 AND status 			  = 'A';*/
     

		SELECT  amount_due_original * nvl(exchange_rate,1) Into 
		l_amt_due_original
		From  ar_payment_schedules_all
		Where   Payment_schedule_id =  p_payment_schedule_id;
     
    
      /*SELECT  nvl(sum(decode(ra.status , 'ACC', amount_applied, 0 )),0),  nvl(sum(decode(ra.status , 'APP', amount_applied,'ACTIVITY',
      amount_applied, 0)),0)
       INTO  l_on_acct_receipts , 
            l_app_receipts 
            FROM  ar_receivable_applications_all ra 
            WHERE  ra.payment_schedule_id =p_payment_schedule_id  AND  
            trunc(ra.gl_date) <= l_as_of_date  AND  
            ra.status 			 in ('ACC' , 'APP','ACTIVITY' );*/
      
       l_actual_amount := l_amt_due_original
                     + l_amount_adjusted_late
                     - l_amount_applied_late ;
                     

  ELSE 
     l_actual_amount := 0;
  END IF;

  RETURN (l_actual_amount);
EXCEPTION
  /* bug3544286 added NO_DATA_FOUND */
  WHEN NO_DATA_FOUND THEN
    RETURN(null);
  WHEN OTHERS THEN
    NULL;
END amount_remaining_new;                                           


                          
END XXNUC_ARPT_SQL_FUNC_UTIL_PKG;
/