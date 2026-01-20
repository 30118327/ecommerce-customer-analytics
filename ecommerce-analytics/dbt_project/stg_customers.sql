SELECT
    customer_id,
    INITCAP(customer_name) AS customer_name,
    LOWER(email) AS email,
    country,
    signup_date
FROM {{ source('raw','customers') }}



