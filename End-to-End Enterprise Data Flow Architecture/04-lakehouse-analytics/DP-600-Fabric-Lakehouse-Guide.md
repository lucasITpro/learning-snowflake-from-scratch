# Microsoft Fabric Analytics Engineering & Lakehouse Architecture (DP-600) ⚡

Architecting enterprise analytics using Microsoft Fabric, OneLake, Delta Parquet tables, and DirectLake storage modes.

---

## 🏗️ Storage Mode Matrix in Microsoft Fabric

| Feature / Mode | Import Mode | DirectQuery | DirectLake Mode (Fabric Core) |
| :--- | :--- | :--- | :--- |
| **Data Location** | Duplicated into VertiPaq Engine | Queried live from SQL Source | Reads directly from Delta Lake on OneLake |
| **Performance** | Fastest (In-Memory) | Slowest (Source Dependency) | In-Memory Speed (Near-Instantaneous) |
| **Data Latency** | Scheduled Refresh Required | Real-time | Real-time / Zero Refresh Needed |

---

## 📖 External & Official Documentation References

* 🔗 [Microsoft Fabric Analytics Engineer (DP-600) Architecture Guide](https://rentry.co/microsoft-fabric-dp600-guide-2026)
* 📘 [Microsoft Learn: Official DP-600 Exam & Certification Study Guide](https://learn.microsoft.com/en-us/credentials/certifications/resources/study-guides/dp-600)
* ⚡ [Microsoft Fabric Documentation: Overview of OneLake Architecture](https://learn.microsoft.com/en-us/fabric/onelake/onelake-overview)
* 📊 [Microsoft Power BI Documentation: Understanding DirectLake in Fabric and Power BI](https://learn.microsoft.com/en-us/power-bi/enterprise/directlake-overview)
