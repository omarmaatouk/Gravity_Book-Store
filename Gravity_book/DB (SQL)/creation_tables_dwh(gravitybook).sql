create database grvitybook_dwh
create table book_dim 
(book_sk int primary key ,
book_bk int ,
title varchar(400),
num_pages int ,
booklang_bk int ,
lang_name varchar(50),
publisher_bk int ,
publisher_name varchar(50))
alter table book_dim add bookauthor_sk_fk int

create table book_author
(bookauthor_sk int primary key ,
book_bk_fk int , 
author_bk_fk int
)
alter table book_author add bookauthor_bk int
alter table book_author add author_sk_fk int


create table author
(author_sk int primary key ,
author_bk int,
author_name varchar(50) 
)

create table customer_dim 
(customer_sk int primary key ,
customer_bk int ,
fname varchar(50) ,
lname varchar(50),
email varchar(50),
shipmethod_bk int ,
ship_name varchar(50),
ship_cost int,
order_history_bk int ,
order_status_bk int,
status_value varchar(50))

alter table customer_dim add cust_order_bk int
alter table customer_dim add custadd_sk_fk int


 
create table cust_add
(custadd_sk int primary key ,
custadd_bk_fk int , 
add_bk_fk int,
add_status_bk int,
add_status varchar(50)
)
alter table cust_add add add_sk_fk int

create table address
(add_sk int primary key ,
add_bk int,
street_name varchar(50) ,
city varchar(50),
country_bk int ,
country_name varchar(50)
)

create table fact_table
(ft_sk int primary key ,
custadd_sk_fk int ,
book_sk_fk int ,
date_fk int ,
time_fk int ,
order_line_bk int ,
price int 
)
