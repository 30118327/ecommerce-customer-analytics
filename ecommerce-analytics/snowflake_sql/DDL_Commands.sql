CREATE TABLE dim_customers (
    customer_id STRING PRIMARY KEY,
    customer_name STRING,
    email STRING,
    country STRING,
    signup_date DATE
);


CREATE TABLE dim_products (
    product_id STRING PRIMARY KEY,
    product_name STRING,
    category STRING,
    price NUMBER(10,2)
);


CREATE TABLE dim_date (
    date_id DATE PRIMARY KEY,
    year INT,
    month INT,
    day INT,
    day_of_week STRING
);

CREATE TABLE fact_orders (
    order_id STRING PRIMARY KEY,
    customer_id STRING,
    product_id STRING,
    order_date DATE,
    quantity INT,
    total_amount NUMBER(12,2),
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES dim_customers(customer_id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES dim_products(product_id)
);
























-- create
CREATE TABLE EMPLOYEE (
  empId NUMBER PRIMARY KEY,
  name VARCHAR2(15) NOT NULL,
  dept VARCHAR2(10) NOT NULL
);

-- insert
INSERT INTO EMPLOYEE VALUES (1, 'Clark', 'Sales');
INSERT INTO EMPLOYEE VALUES (2, 'Dave', 'Accounting');
INSERT INTO EMPLOYEE VALUES (3, 'Ava', 'Sales');

-- fetch 
SELECT * FROM EMPLOYEE WHERE dept = 'Sales';