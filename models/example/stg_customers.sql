WITH stg_customers AS (
    select customer_id,
       concat(first_name,' ',last_name) as customer_name,
       email as email_address,
       address as billing_address 
    from customers.customers
)

select * from stg_customers