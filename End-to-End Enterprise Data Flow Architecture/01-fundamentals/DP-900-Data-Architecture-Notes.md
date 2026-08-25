## 🧠 Key Exam Concepts & Architectural Breakdown

### 1. Transactional (OLTP) vs. Analytical (OLAP) Workloads
* **OLTP (Online Transaction Processing):** Optimized for fast row-by-row write operations, high concurrency, and strict ACID compliance (e.g., Azure SQL DB / DP-300).
* **OLAP (Online Analytical Processing):** Optimized for complex read queries across massive historical datasets using columnar storage (e.g., Snowflake / DP-600).

### 2. Normalization vs. Dimensional Modeling
* **3NF (Third Normal Form):** Eliminates data redundancy; primary structure for OLTP databases.
* **Star Schema & Snowflake Schema:** Fact tables surrounded by Dimension tables; primary structure for Data Warehouses and Microsoft Fabric Semantic Models.

---

## 📖 External & Official Documentation References

* 🔗 [Azure Data Fundamentals DP-900 Exam Guide & Cheatsheet](https://rentry.co/azure-data-dp900-guide-2026)
* 📘 [Microsoft Learn: Official Azure Data Fundamentals Study Guide](https://learn.microsoft.com/en-us/credentials/certifications/resources/study-guides/dp-900)
* 📐 [Azure Architecture Center: Non-relational Data and NoSQL Concepts](https://learn.microsoft.com/en-us/azure/architecture/guide/technology-choices/non-relational-data)
* ❄️ [Snowflake Documentation: Overview of Key Architecture & Data Warehousing](https://docs.snowflake.com/en/user-guide/intro-key-concepts)
