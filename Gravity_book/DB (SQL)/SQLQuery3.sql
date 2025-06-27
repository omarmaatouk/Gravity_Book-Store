select * from book_dim
 where iscurrent=1
  select * from author
 select count(*) from book_author
select * from book_author
where book_bk = 1
select * from ship_method
select * from author


select b.book_id,b.isbn13,b.num_pages,b.publication_date,b.title,p.publisher_id,p.publisher_name,l.language_id,l.language_code,l.language_name
from book b left join publisher p 
on b.publisher_id=p.publisher_id
left join book_language l 
on b.language_id=l.language_id

select a.address_id,a.street_name,a.street_number,a.city,c.country_id,c.country_name
from address a left join country c 
on a.country_id=c.country_id

select * from address
where iscurrent=1

select * from customer_dim
where iscurrent=1

select a.address_id,a.customer_id,s.status_id,s.address_status
from customer_address a left join address_status s
on s.status_id=a.status_id


select  count(distinct author_id)
from book_author

truncate table cust_add


select l.line_id,l.book_id,o.order_id,o.order_date,o.dest_address_id,o.customer_id,l.price
from order_line l, cust_order o
where l.order_id=o.order_id
and l.line_id > ?
and o.order_date >= ?
and o.order_date < ?


select last_load_date
from sales_metadata 
where id = 1

select last_load_line_id
from sales_metadata 
where id = 1


select *
from book_dim
where iscurrent=1

select *
from customer_dim
where iscurrent=1

select max(line_id)
from sales_fact_table

update sales_metadata
set last_load_date = ?
and last_load_line_id = ?

truncate table sales_fact_table

select count(*) from sales_fact_table



Select h.order_id,h.status_date,s.status_id,s.status_value
from order_history h , order_status s
where s.status_id = h.status_id

select * from order_status

SELECT 
    h.order_id, 
    s.status_value, 
    MIN(h.status_date) AS status_date
FROM 
    order_history h
JOIN 
    order_status s ON s.status_id = h.status_id
GROUP BY 
    h.order_id, s.status_value


select * from history_fact_table

SELECT order_id, status_value, COUNT(*) 
from order_history h , order_status s
where s.status_id = h.status_id
GROUP BY order_id, status_value
HAVING COUNT(*) > 1

