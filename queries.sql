/* 1 */
select distinct customer.c_name, customer.c_lastname from
	customer natural join sign_payment;
    
/* 2 */
select bank_account.a_id as id from 
	bank_account natural join sign_permission
    where bank_account.a_sign_count > (
		select count(distinct sign_permission.c_id) from
			sign_permission where id = sign_permission.a_id);

/* 5 */
select account_owner.a_id from
	account_owner where account_owner.c_id = 1
union
select account_owner.a_id from
	account_owner where account_owner.c_id = 2;
    
/* 7 */
select payment.p_id from
	payment natural join bank_account natural join sign_permission
    where sign_permission.c_id = 1;
    
/* 8 */
select * from 
	account_transaction natural join payment natural join sign_permission
    where payment.c_id = 1 and payment.a_id not in (
		select sign_permission.c_id from
			sign_permission 
            where sign_permission.c_id = 1);