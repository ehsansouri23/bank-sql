create function get_sign_count(p_id int) returns int
begin
    declare res int;
    select count(*) into res
    from sign_payment 
    WHERE sign_payment.p_id = p_id;
    return res;
end;
