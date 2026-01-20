from airflow import DAG
from airflow.operators.bash import BashOperator
from airflow.operators.python import PythonOperator
from datetime import datetime

def quality_check():
    print("Running advanced data quality checks...")

with DAG(
    dag_id='customer_analytics_pipeline',
    start_date=datetime(2024,1,1),
    schedule_interval='@daily',
    catchup=False
) as dag:

    ingest = BashOperator(
        task_id='ingest_raw_data',
        bash_command='echo "Raw data ingested"'
    )

    dbt_run = BashOperator(
        task_id='run_dbt_models',
        bash_command='echo "dbt run simulated"'
    )

    dq_check = PythonOperator(
        task_id='advanced_data_quality_check',
        python_callable=quality_check
    )

    complete = PythonOperator(
        task_id='pipeline_complete',
        python_callable=lambda: print("Data pipeline complete")
    )

    ingest >> dbt_run >> dq_check >> complete