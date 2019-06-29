use ehsandb;
create table if not exists customer(
	c_id int not null primary key auto_increment,
	c_name varchar(20),
    c_lastname varchar(20),
    c_melli int,
    c_pass varchar(20));
    
create table if not exists bank_account(
	a_id int not null primary key auto_increment,
    a_balance int,
    a_type varchar(20),
    a_sign_count int);
    
create table if not exists see_permission(
	c_id int not null,
    a_id int not null,
    primary key(c_id, a_id),
    foreign key(c_id) references customer(c_id),
    foreign key(a_id) references bank_account(a_id));
    
create table if not exists sign_permission(
	c_id int not null,
    a_id int not null,
    primary key(c_id, a_id),
    foreign key(c_id) references customer(c_id),
    foreign key(a_id) references bank_account(a_id));
    
create table if not exists pay_permission(
	c_id int not null,
    a_id int not null,
    primary key(c_id, a_id),
    foreign key(c_id) references customer(c_id),
    foreign key(a_id) references bank_account(a_id));
    
create table if not exists account_owner(
	c_id int not null,
    a_id int not null,
    primary key(c_id, a_id),
    foreign key(c_id) references customer(c_id),
    foreign key(a_id) references bank_account(a_id)); 
    
    