# Azure SQL Database Performance Tuning & Security (DP-300) 🛢️

Focuses on managing relational database infrastructure, query optimization, high availability, and security in Microsoft Azure.

---

## 📖 External & Official Documentation References

* 🔗 [DP-300 Administering Microsoft Azure SQL Databases Preparation Guide](https://rentry.co/dp300-exam-prep-2026)
* 📘 [Microsoft Learn: Official DP-300 Study Guide & Exam Duration](https://learn.microsoft.com/en-us/credentials/certifications/resources/study-guides/dp-300)
* ⚡ [Azure SQL Database Documentation: Tuning Performance Using DMVs](https://learn.microsoft.com/en-us/azure/azure-sql/database/performance-tune-use-database-engine-status)
* 🛡️ [Microsoft Azure Security Documentation: Azure SQL Security Guidelines & Best Practices](https://learn.microsoft.com/en-us/azure/azure-sql/database/security-overview)

---

## 🛠️ Practical Diagnostic Script: Missing Index Analysis

```sql
-- Querying Dynamic Management Views (DMVs) for Missing Index Recommendations
SELECT 
    mig.index_group_handle,
    mid.index_handle,
    CONVERT(decimal(28,1),Statement.avg_total_user_cost * Statement.avg_user_impact * (Statement.user_seeks + Statement.user_scans)) AS [Improvement_Measure],
    'CREATE INDEX [IX_' + OBJECT_NAME(mid.OBJECT_ID, mid.database_id) + '_'
        + REPLACE(REPLACE(REPLACE(ISNULL(mid.equality_columns,''),', ','_'),'[',''),']','') + ']'
        + ' ON ' + mid.statement
        + ' (' + ISNULL (mid.equality_columns,'')
        + CASE WHEN mid.equality_columns IS NOT NULL AND mid.inequality_columns IS NOT NULL THEN ',' ELSE '' END
        + ISNULL (mid.inequality_columns, '') + ')'
        + ISNULL (' INCLUDE (' + mid.included_columns + ')', '') AS [Create_Index_Statement]
FROM sys.dm_db_missing_index_groups mig
INNER JOIN sys.dm_db_missing_index_group_stats Statement ON Statement.group_handle = mig.index_group_handle
INNER JOIN sys.dm_db_missing_index_details mid ON mig.index_handle = mid.index_handle
ORDER BY Improvement_Measure DESC;


