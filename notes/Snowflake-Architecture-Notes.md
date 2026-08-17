# Snowflake Architecture & Virtual Warehouses Notes

Snowflake’s unique architecture separates compute, storage, and cloud services into independent layers. This decoupled design guarantees multi-cluster concurrency and eliminates resource contention between ETL workloads and business intelligence queries.

> **Key Takeaway:** Storage is central and accessible by all compute clusters, but compute nodes do not share memory or local disk, ensuring true elastic scaling.

## 1. Multi-Cluster Shared Data Architecture

Snowflake is built on three distinct layers:

* **Database Storage:** Utilizes cloud object storage (S3, Azure Blob, GCS) to store micro-partitions in an optimized columnar, encrypted format.
* **Virtual Warehouses (Compute):** MPP (Massively Parallel Processing) compute clusters that execute SQL queries. Warehouses can scale up (larger size) or scale out (multi-cluster) instantly without downtime.
* **Cloud Services:** Coordinates transactions, metadata management, authentication, access control, and query optimization across the entire account.

## 2. Zero-Copy Cloning & Time Travel

* **Zero-Copy Cloning:** Allows creating instant copies of databases, schemas, or tables without duplicating underlying physical storage. Cloned objects reference existing micro-partitions until new data is modified.
* **Time Travel:** Enables accessing historical data at any point within a defined retention period (up to 90 days for Enterprise Edition) to recover accidentally deleted tables or audit changes.

## 3. Semi-Structured Data Handling

* **VARIANT Data Type:** Natively ingests and queries JSON, AVRO, ORC, or Parquet format without requiring predefined schemas.
* **Dot Notation Syntax:** Enables querying nested JSON elements directly via SQL expressions.
