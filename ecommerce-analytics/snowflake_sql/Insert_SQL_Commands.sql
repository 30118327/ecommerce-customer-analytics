INSERT INTO dim_customers VALUES
('C001','Alice Smith','alice@example.com','UK','2023-01-10'),
('C002','Bob Lee','bob@example.com','USA','2023-02-15');

INSERT INTO dim_products VALUES
('P001','Laptop','Electronics',1200.00),
('P002','Headphones','Electronics',150.00);

INSERT INTO dim_date VALUES
('2024-01-01',2024,1,1,'Monday'),
('2024-01-02',2024,1,2,'Tuesday');

INSERT INTO fact_orders VALUES
('O1001','C001','P001','2024-01-01',1,1200.00),
('O1002','C002','P002','2024-01-02',10,1500.00);