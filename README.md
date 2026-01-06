# ⚡ WattWatch – Smart City Energy Analytics

## 📌 Project Overview
**WattWatch** is a data-driven urban analytics project focused on analyzing electricity consumption across different zones of a smart city.  
The project uses **SQL for analysis** and **Excel/Power BI for visualization** to uncover energy usage patterns, inefficiencies, and reliability issues in power supply.

This project simulates a **real-world municipal energy analytics case study**.

---

## 🎯 Objectives
- Analyze energy consumption across city zones
- Identify high energy-consuming consumer types
- Detect peak usage patterns (weekday vs weekend)
- Find zones with inefficient or unreliable power supply
- Build an interactive dashboard for decision-making

---

## 🗂 Dataset Information
**File:** `SmartCityEnergy.csv`

### Columns Description
| Column Name | Description |
|-----------|------------|
| MeterID | Unique identifier for each smart meter |
| Zone | City zone (North, South, Central) |
| ConsumerType | Residential / Commercial / Industrial |
| Date | Energy reading date |
| EnergyConsumed_kWh | Total energy consumed |
| PeakUsage_kWh | Maximum kWh drawn in a single hour |
| OutageMinutes | Power outage duration in minutes |
| MeterStatus | Active or Faulty |
| TariffRate | Cost per kWh |

---

## 🧠 Tools & Technologies Used
- **MySQL** – Data storage & analysis
- **SQL** – Query-based insights
- **Power BI / Excel** – Dashboard & visualization
- **GitHub** – Version control & project sharing

---

## 🧩 Part 1 – SQL-Based Analysis
SQL queries were written to:
- Calculate total & average energy consumption by zone
- Identify top energy-consuming consumers
- Analyze monthly energy trends
- Estimate energy cost using tariff rates
- Detect faulty meters and outage-prone zones
- Compare weekday vs weekend peak usage

📄 **File:** `SmartCity_SQL.sql`

---

## 📊 Part 2 – Dashboard (Excel / Power BI)
The dashboard includes:
- 🌍 Geo Heatmap – Energy usage by zone
- 📈 Line Chart – Monthly energy trends
- 📊 Bar Chart – Consumption by consumer type
- 📌 KPI Cards:
  - Total Energy Consumption
  - Average Peak Usage
  - Total Outage Minutes
  - Total Estimated Cost
- 🎛 Slicers for Zone, Consumer Type, and Date Range

📄 **File:** `WattWatchDashboard.pbix` or `WattWatchDashboard.xlsx`

---

## 💡 Key Insights
- Central zone is the primary energy hotspot due to commercial and industrial activity
- Industrial consumers use the most power overall
- Peak energy demand is higher on weekdays
- North zone experiences frequent power outages
- Faulty meters contribute to inefficiencies and reliability issues

📄 **File:** `EnergyFindings.txt`

---

## ✅ How to Run the Project
1. Import `SmartCityEnergy.csv` into MySQL
2. Run queries from `SmartCity_SQL.sql`
3. Connect MySQL to Power BI / Excel
4. Build visuals using query results
5. Analyze insights using dashboard filters

---

## 📌 Conclusion
This project demonstrates how **SQL and BI tools** can be used together to solve real-world urban energy challenges and support **data-driven sustainability decisions**.

---

## 👤 Author
**Mohit**  
Aspiring Data Analyst | SQL | Power BI | Excel  

---

⭐ *If you found this project useful, feel free to star the repository!*
