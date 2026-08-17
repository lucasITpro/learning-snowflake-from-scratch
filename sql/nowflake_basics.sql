-- Snowflake Core Architecture Demo Script
-- Demonstrates Virtual Warehouses, Databases, and Zero-Copy Cloning

-- 1. Create a dedicated Virtual Warehouse with Auto-Suspend
CREATE WAREHOUSE IF NOT EXISTS dev_wh
    WITH WAREHOUSE_SIZE = 'XSMALL'
    AUTO_SUSPEND = 300
    AUTO_RESUME = TRUE
    INITIALLY_SUSPENDED = TRUE
    COMMENT = 'Development Virtual Warehouse for analytics queries';

USE WAREHOUSE dev_wh;

-- 2. Create Database and Schema
CREATE DATABASE IF NOT EXISTS raw_data_db;
CREATE SCHEMA IF NOT EXISTS raw_data_db.sales_staging;

USE SCHEMA raw_data_db.sales_staging;

-- 3. Create Staging Table with Variant (JSON) column
CREATE OR REPLACE TABLE raw_orders (
    order_id INT,
    customer_id INT,
    raw_payload VARIANT,
    ingested_at TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);

-- 4. Zero-Copy Cloning for Sandbox Environment
CREATE DATABASE IF NOT EXISTS dev_sandbox_db CLONE raw_data_db;
