CREATE OR REPLACE VIEW XXNUC_CUST_SITE_BAL_SUMM_V 
(
/*
Description: View used by SOA Customer Balance Application Business Service NUC_EBizCustomerBalance_ABS Composite
Date: 6/18/2013
Author: KPIT
*/
cust_account_id
,currency
,cust_acct_site_id
,org_id
,best_current_receivables
,total_dso_days_credit
,op_invoices_value
,op_invoices_count
,op_debit_memos_value
,op_debit_memos_count
,op_deposits_value
,op_deposits_count
,op_bills_receivables_value
,op_bills_receivables_count
,op_chargeback_value
,op_chargeback_count
,op_credit_memos_value
,op_credit_memos_count
,unresolved_cash_value
,unresolved_cash_count
,receipts_at_risk_value
,inv_amt_in_dispute
,disputed_inv_count
,pending_adj_value
,last_dunning_date
,dunning_count
,past_due_inv_value
,past_due_inv_inst_count
,last_payment_amount
,last_payment_date
,last_payment_number
) as
SELECT 
 atbs.cust_account_id
,atbs.currency
,hcas.cust_acct_site_id
,hcas.org_id
,sum(atbs.best_current_receivables)
,max(atbs.total_dso_days_credit)
,sum(atbs.op_invoices_value)
,sum(atbs.op_invoices_count)
,sum(atbs.op_debit_memos_value)
,sum(atbs.op_debit_memos_count)
,sum(atbs.op_deposits_value)
,sum(atbs.op_deposits_count)
,sum(atbs.op_bills_receivables_value)
,sum(atbs.op_bills_receivables_count)
,sum(atbs.op_chargeback_value)
,sum(atbs.op_chargeback_count)
,sum(atbs.op_credit_memos_value)
,sum(atbs.op_credit_memos_count)
,sum(atbs.unresolved_cash_value)
,sum(atbs.unresolved_cash_count)
,sum(atbs.receipts_at_risk_value)
,sum(atbs.inv_amt_in_dispute)
,sum(atbs.disputed_inv_count)
,sum(atbs.pending_adj_value)
,max(atbs.last_dunning_date)
,max(atbs.dunning_count)
,max(atbs.past_due_inv_value)
,max(atbs.past_due_inv_inst_count)
,sum(atbs.last_payment_amount)
,max(atbs.last_payment_date)
,max(atbs.last_payment_number)
from ar_trx_bal_summary atbs
,hz_cust_acct_sites_all hcas
,hz_cust_site_uses_all hcsu
where hcsu.site_use_id = atbs.site_use_id 
AND hcas.cust_acct_site_id = hcsu.cust_acct_site_id
AND atbs.cust_account_id = hcas.cust_account_id
GROUP BY  atbs.cust_account_id
,atbs.currency
,hcas.cust_acct_site_id
,hcas.org_id
/