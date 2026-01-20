Hybrid Data Ingestion Strategy

### Conceptual Design

| Data Type                  | Ingestion Method / Tools                  | Flow into Snowflake                                        | Rationale / Notes |
|----------------------------|------------------------------------------|------------------------------------------------------------|------------------|
| **Real-time website clicks** | Kafka / AWS Kinesis                        | → Cloud Object Storage (S3 / ADLS) → **Snowpipe** → RAW schema | High-velocity data; near real-time ingestion for analytics dashboards; Snowpipe ensures low-latency streaming. |
| **Batch transactional orders** | AWS Glue / Azure Data Factory              | → Cloud Storage → RAW schema → DBT staging → Fact/Dimension tables | Scheduled bulk loads; cost-efficient; suitable for legacy ERP or database extracts. |
| **Support tickets (SaaS data)** | API ingestion + Airflow orchestration     | → RAW schema → DBT staging → Dim/Fact tables | Medium velocity; Airflow manages retries, scheduling, and logging; handles SaaS API constraints. |

### Key Principles

1. **Freshness** – Snowpipe for near-real-time streaming; scheduled batch pipelines for transactional data.  
2. **Scalability** – Decoupled storage (S3 / ADLS) and compute (Snowflake) allow independent scaling.  
3. **Cost Efficiency** – Batch processing reduces compute costs; Snowflake auto-suspend prevents waste.  
4. **Reliability & Quality** – Airflow orchestrates retries; DBT staging includes post-load data quality checks; alerts notify stakeholders of anomalies.  
5. **Flexibility** – Hybrid approach supports multiple data velocities and can easily integrate new sources in the future.

### Simplified Data Flow

