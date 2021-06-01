use dbProject

create table customers(
code int identity(1,1) primary key,
customer_name varchar(20),
name_owner varchar(20),
adress varchar(20), 
phone varchar(10),
mail varchar(30),
user_name varchar(20),
customer_password varchar(20)
)

create table workers(
worker_id varchar(9) primary key,
customer_code int foreign key references customers(code),
worker_name varchar(20),
job_type varchar(10),
mail varchar(30),
user_name varchar(20),
worker_password varchar(20)
)

create table suppliers(
suppliers_code int identity(1,1) primary key,
Supplier_name varchar(20),
)

create table benefits(
benefits_code int identity(1,1) primary key,
Supplier_code int foreign key references suppliers(suppliers_code),
details varchar(20),
Expiration_date datetime,
)

create table suppliers_benefits(
suppliers_code int foreign key references suppliers(suppliers_code),
benefits_code int foreign key references benefits(benefits_code),
)

create table customers_benefits(
code_customer int foreign key references customers (code),
benefit_code int foreign key references benefits(benefits_code),
code_worker varchar(9) foreign key references workers(worker_id),
benefit_status int,
--מספר קופון
Expiration_date datetime,
)
