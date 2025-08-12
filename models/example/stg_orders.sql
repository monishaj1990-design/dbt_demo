select 
     o.Order_Id,
     c.Customer_id,
     c.customer_name,
     p.Product_Id,
     p.Product_name,
     o.Quantity,
     o.Order_date
from customers.orders o 
join {{ ref('stg_customers') }} c on c.Customer_id = o.Customer_id
join customers.products p on p.Product_Id =o.Product_Id