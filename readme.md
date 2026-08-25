# Snowflake Data Cloud Learning Journal & Student Study Notes ❄️

Hey there! 👋 Welcome to my personal Snowflake learning repository. 

I’m currently a student exploring data engineering, modern data stack architectures, and cloud data warehousing. I created this repository to log my progress, break down core Snowflake concepts, practice SQL queries, and document my hands-on experiments using the Snowflake Free Trial.

---

## 💡 A Student's Perspective on Snowflake & Cloud Data Warehousing

Coming from traditional relational databases, learning Snowflake was a eye-opener. The biggest mindset shift was realizing how modern cloud data warehouses completely separate compute from storage!

### My Key Principles for Learning Snowflake:
* **Query First, Optimize Later**: Getting comfortable with Snowflake's ANSI SQL extensions, Semi-structured data parsing (JSON/VARIANT), and Time Travel features by actually running queries.
* **Watch Virtual Warehouse Sizes!**: Auto-suspend and auto-resume settings are your best friends. Leaving an X-Large warehouse running indefinitely on a trial account is a mistake you only make once! 😅
* **Understand the Architecture**: Focus on *why* Snowflake's multi-cluster shared data architecture outperforms traditional single-node databases for massive analytical workloads.

---

## 🎯 Key Topics & Functional Domains Covered

### 1. Snowflake Architecture & Micro-Partitions
* **3-Layer Architecture**: Database Storage, Virtual Warehouse Compute, and Cloud Services layer.
* **Micro-Partitions & Clustering**: How Snowflake automatically partitions, compresses, and prunes data without manual indexing.

### 2. Semi-Structured Data Handling
* **`VARIANT` Data Type**: Ingesting raw JSON and querying nested objects directly using simple dot notation.
* **`FLATTEN` Function**: Converting nested JSON arrays into tabular rows for downstream reporting.

### 3. Data Protection & Governance
* **Time Travel & Zero-Copy Cloning**: Restoring dropped tables or querying historic data using `AT` / `BEFORE` syntax without incurring extra storage overhead.
* **Role-Based Access Control (RBAC)**: Understanding standard roles (`ACCOUNTADMIN`, `SYSADMIN`, `SECURITYADMIN`, `PUBLIC`) and custom privilege hierarchies.

---

## 📂 Repository Structure & Study Index

### 📘 Certification Resources & Guides
* [`SnowPro-Core-COF-C02-Resources.md`](./SnowPro-Core-COF-C02-Resources.md) - SnowPro Core exam breakdown, study materials, and reference guides.
* [`Snowflake-DEA-C01-Resources.md`](./Snowflake-DEA-C01-Resources.md) - Data Engineer Associate guide and practice questions.

### 📝 Core Architecture & SQL Notes
* [`notes/Snowflake-Architecture-Notes.md`](./notes/Snowflake-Architecture-Notes.md) - Decoupled storage/compute, Zero-Copy Cloning, and VARIANT data type breakdown.

### 🛠️ Hands-on SQL Scripts
* [`sql/01_snowflake_basics.sql`](./sql/01_snowflake_basics.sql) - Virtual warehouse setup, database creation, and zero-copy cloning experiments.

---

## ⏱️ My Ongoing Snowflake Learning Roadmap

- [x] Set up Snowflake Free Trial account and practice basic virtual warehouse creation

# Enterprise Cloud Data Architecture & Certification Hub ❄️☁️

Welcome to my central hands-on learning repository for Enterprise Data Engineering, Lakehouse Architecture, and Cloud Analytics. This repository bridges modern cloud data warehouse technologies (**Snowflake**) with Microsoft Azure's core data ecosystem (**DP-900, DP-300, DP-600**).

---

## 📐 End-to-End Enterprise Data Flow Architecture

```text
+-----------------------------------------------------------------------------------+
|                        ENTERPRISE DATA ARCHITECTURE MAP                           |
+-----------------------------------------------------------------------------------+

 [ Source Systems (OLTP) ]           [ Integration & ETL Engine ]          [ Modern Data Lakehouse / Analytics ]
 
 +-----------------------+          +---------------------------+          +-----------------------------------+
 |  Azure SQL Database   |  =====>  |   Microsoft Fabric        |  =====>  |  Power BI Dashboards / Reports    |
 |      (DP-300)        |          |     Data Factory           |          |  & DirectLake Analytics           |
 +-----------------------+          +---------------------------+          +-----------------------------------+
             |                                    |                                          ^
             | (Change Data Capture)              | (Zero-Copy Data Sharing)                 |
             v                                    v                                          |
 +-----------------------------------------------------------------------------------------------------------------+
 |                                    Snowflake Data Cloud Platform (COF-C02)                                      |
 |   - Multi-Cluster Virtual Warehouses (Compute)  |  - Centralized Cloud Storage  |  - RBAC & Governance Rules       |
 +-----------------------------------------------------------------------------------------------------------------+
                                                     ^
                                                     |
                                      +------------------------------+
                                      | Azure Data Fundamentals      |
                                      |           (DP-900)           |
                                      +------------------------------+
- [x] Practice querying JSON datasets using `VARIANT` and `FLATTEN`
- [ ] Implement data loading pipelines using External Stages (AWS S3 / GCP GCS) and `COPY INTO`
- [ ] Build a mini end-to-end data transformation pipeline using dbt and Snowflake

*Thanks for checking out my notes! Feel free to star ⭐️ this repo if you're also learning Snowflake or data engineering.*
