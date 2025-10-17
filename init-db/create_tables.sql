CREATE SCHEMA IF NOT EXISTS dbt_sch;

CREATE TABLE dbt_sch.orders ( 
    order_id INT, 
    customer_name TEXT,
    order_amount NUMERIC,
    order_date DATE
    );
