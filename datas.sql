insert into customer(c_name, c_lastname, c_melli, c_pass)
values("ehsan", "souri", 0021100489, sha1("password"));
insert into customer(c_name, c_lastname, c_melli, c_pass)
values("ali", "souri", 1234567890, sha1("password1"));
insert into customer(c_name, c_lastname, c_melli, c_pass)
values("hamed", "souri", 0021100969, sha1("password2"));
insert into customer(c_name, c_lastname, c_melli, c_pass)
values("hassan", "souri", 0080500489, sha1("password3"));

insert into bank_account(a_balance, a_type, a_sign_count)
values(20, "A", 5);
insert into bank_account(a_balance, a_type, a_sign_count)
values(30, "A", 3);
insert into bank_account(a_balance, a_type, a_sign_count)
values(40, "B", 2);
insert into bank_account(a_balance, a_type, a_sign_count)
values(50, "C", 1);

insert into sign_permission(c_id, a_id)
values(1, 2);
insert into sign_permission(c_id, a_id)
values(1, 3);
insert into sign_permission(c_id, a_id)
values(2, 3);
insert into sign_permission(c_id, a_id)
values(3, 3);
insert into sign_permission(c_id, a_id)
values(4, 2);
insert into sign_permission(c_id, a_id)
values(3, 2);
