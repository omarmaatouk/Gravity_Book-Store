select s.method_id,s.cost,o.order_id,l.line_id,l.price,l.book_id
from order_line l , cust_order o , shipping_method s
where l.order_id=o.order_id and s.method_id=o.shipping_method_id
order by l.book_id
----------------------------------
SELECT 
    o.order_id,
    SUM(l.price) AS total_book_price,
    s.cost AS shipping_cost,
    SUM(l.price) + s.cost AS total_order_cost
FROM 
    order_line l
JOIN 
    cust_order o ON l.order_id = o.order_id
JOIN 
    shipping_method s ON o.shipping_method_id = s.method_id
GROUP BY 
    o.order_id, s.cost
ORDER BY 
    o.order_id;
------------------------------------------
select order_id,book_id, line_id
from order_line  
order by order_id
