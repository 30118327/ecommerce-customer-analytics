SELECT
    order_id,
    customer_id,
    product_id,
    CAST(order_date AS DATE) AS order_date,
    quantity,
    quantity * unit_price AS total_amount
FROM {{ source('raw','orders') }}
WHERE quantity > 0
