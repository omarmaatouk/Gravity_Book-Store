select l.price,l.book_id,ad.address_id
from order_line l , cust_order o , [address] ad
where l.order_id=o.order_id and ad.address_id=o.dest_address_id
and l.book_id=15
order by l.book_id