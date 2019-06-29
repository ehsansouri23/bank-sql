create trigger check_sign_payment after insert on sign_payment
referencing new row as nrow
for each row
when (nrow.p_id not in (
	select p_id from sign_permission natural join payment
    where sign_permission.c_id =  nrow.c_id))
    begin
		rollback
	end;
    
