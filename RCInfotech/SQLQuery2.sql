select * from v_contact
create table rc_master(cl_id int not null primary key,cl_date DateTime,cl_name char(50),cl_address varchar(50),cl_contPerson char(50),cl_ContNo int(13));