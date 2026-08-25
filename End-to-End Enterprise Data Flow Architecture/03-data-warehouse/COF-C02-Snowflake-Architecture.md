# Snowflake Architecture, Virtual Warehouses & Performance Optimization (COF-C02) ❄️

Deep dive into Snowflake's multi-cluster shared-data architecture, virtual warehouse sizing, micro-partitioning, and query performance tuning.

---

## 🏗️ Core Architectural Layers

Snowflake separates compute and storage into three independent layers:

1. **Database Storage:** Standardized data storage using proprietary columnar, compressed micro-partitions.
2. **Query Processing (Virtual Warehouses):** Multi-cluster MPPs (Massively Parallel Processing) compute engines that scale elastically without resource contention.
3. **Cloud Services:** Brain of Snowflake managing authentication, metadata, access control, infrastructure, and query optimization.

---

## 📖 External & Official Documentation References

* 📘 [Snowflake Documentation: Virtual Warehouse Best Practices](https://docs.snowflake.com/en/user-guide/warehouses-tasks)
* 📐 [Snowflake Documentation: Understanding Micro-Partitions & Clustering](https://docs.snowflake.com/en/user-guide/tables-micro-partitions)
* 🎓 [SnowPro Core Certification (COF-C02) Official Exam Outline](https://www.snowflake.com/en/resources/certifications/)

---

## 🛠️ Practical Snowflake Configuration Scripts

```sql
-- 1. Create a Scalable Multi-Cluster Virtual Warehouse for Analytics
CREATE OR REPLACE WAREHOUSE COMPUTE_WH_ANALYTICS
  WITH WAREHOUSE_SIZE = 'MEDIUM'
  AUTO_SUSPEND = 300
  AUTO_RESUME = TRUE
  MIN_CLUSTER_COUNT = 1
  MAX_CLUSTER_COUNT = 3
  SCALING_POLICY = 'STANDARD'
  COMMENT = 'Dedicated virtual warehouse for DP-600 & Power BI analytical workloads';

-- 2. Monitoring Micro-Partition Clustering & Depth
SELECT SYSTEM$CLUSTERING_INFORMATION('SALES_FACT', '(TRANSACTION_DATE)');
