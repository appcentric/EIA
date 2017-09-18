CREATE OR REPLACE VIEW XXNUC_CUST_BAL_SUMM_V 
(
/*
Description: View used by SOA Customer Balance Application Business Service NUC_EBizCustomerBalance_ABS Composite
Date: 6/18/2013
Author: KPIT
*/
cust_account_id
,currency
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
 trx.cust_account_id
,currency
,sum(best_current_receivables)
,max(total_dso_days_credit)
,sum(op_invoices_value)
,sum(op_invoices_count)
,sum(op_debit_memos_value)
,sum(op_debit_memos_count)
,sum(op_deposits_value)
,sum(op_deposits_count)
,sum(op_bills_receivables_value)
,sum(op_bills_receivables_count)
,sum(op_chargeback_value)
,sum(op_chargeback_count)
,sum(op_credit_memos_value)
,sum(op_credit_memos_count)
,sum(unresolved_cash_value)
,sum(unresolved_cash_count)
,sum(receipts_at_risk_value)
,sum(inv_amt_in_dispute)
,sum(disputed_inv_count)
,sum(pending_adj_value)
,max(last_dunning_date)
,max(dunning_count)
,max(past_due_inv_value)
,max(past_due_inv_inst_count)
,sum(last_payment_amount)
,max(last_payment_date)
,max(last_payment_number)
from ar_trx_bal_summary trx
GROUP BY trx.cust_account_id, trx.currency
/