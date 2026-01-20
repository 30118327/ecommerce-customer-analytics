# ecommerce-customer-analytics
A modern data engineering pipeline for e-commerce customer analytics. It features a Snowflake star schema, dbt transformations, and Apache Airflow orchestration, including advanced Python-based anomaly detection and a hybrid ingestion strategy.

This repository demonstrates a modern data engineering pipeline designed to analyze customer behavior for a rapidly growing e-commerce platform. The pipeline integrates Snowflake, DBT, and Apache Airflow to transform raw transactional and interaction data into actionable insights.

The project focuses on building a robust star schema for customer analytics, capturing orders, products, customers, and time-based information. It includes fact and dimension tables that support flexible querying and business intelligence use cases such as customer segmentation, product performance analysis, and sales trends.

Key Components of the Pipeline:

1. Snowflake Data Warehouse

   - Implements a star schema with 'Fact_Orders', 'Dim_Customers', 'Dim_Products', and 'Dim_Date'.
   - Includes realistic sample data and DDL scripts to create and populate tables.

2. DBT Transformation Layer

   - Staging models standardize raw data from the 'RAW' schema.
   - Light transformations such as type casting, normalization, and null handling prepare data for analytics.

3. Airflow Orchestration

   - DAG simulates data ingestion, runs DBT models, and performs post-transformation quality checks.
   - Advanced Python-based anomaly detection ensures integrity of order quantities and prices, with alerts for potential issues.

4. Hybrid Data Ingestion Strategy

   - Combines batch (e.g., legacy orders) and near-real-time (e.g., website clicks) ingestion using cloud-native services like AWS S3, Snowpipe, and Kafka/Kinesis.
   - Designed for scalability, cost-efficiency, and data freshness.

This project highlights not only technical skills in SQL, Python, and cloud data engineering but also critical thinking in data quality, error handling, and pipeline design. All scripts, models, and configurations are included in this repository to serve as a reference for building production-ready customer analytics pipelines.
