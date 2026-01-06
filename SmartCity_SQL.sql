
CREATE DATABASE IF NOT EXISTS SmartCity;
USE SmartCity;

DROP TABLE IF EXISTS EnergyData;

CREATE TABLE EnergyData (
    MeterID INT,
    Zone VARCHAR(50),
    ConsumerType VARCHAR(50),
    Date DATE,
    EnergyConsumed_kWh DECIMAL(10,2),
    PeakUsage_kWh DECIMAL(10,2),
    OutageMinutes INT,
    MeterStatus VARCHAR(20),
    TariffRate DECIMAL(5,2)
);

-- Load CSV (Update path as per your system)
-- Example:
-- LOAD DATA INFILE 'C:/SmartCityEnergy.csv'
-- INTO TABLE EnergyData
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- 1. Total and Average Daily Energy Consumption by Zone
SELECT Zone,
       SUM(EnergyConsumed_kWh) AS TotalEnergy,
       AVG(EnergyConsumed_kWh) AS AvgDailyEnergy
FROM EnergyData
GROUP BY Zone;

-- 2. Top 5 Highest Energy-Consuming Consumers
SELECT MeterID, ConsumerType,
       SUM(EnergyConsumed_kWh) AS TotalEnergy
FROM EnergyData
GROUP BY MeterID, ConsumerType
ORDER BY TotalEnergy DESC
LIMIT 5;

-- 3. Monthly Consumption Trend
SELECT Zone,
       YEAR(Date) AS Year,
       MONTH(Date) AS Month,
       SUM(EnergyConsumed_kWh) AS MonthlyConsumption
FROM EnergyData
GROUP BY Zone, Year, Month;

-- 4. Average Cost per Zone
SELECT Zone,
       AVG(EnergyConsumed_kWh * TariffRate) AS AvgCost
FROM EnergyData
GROUP BY Zone;

-- 5. Faulty Meters and Outages
SELECT MeterID,
       COUNT(*) AS FaultCount,
       SUM(OutageMinutes) AS TotalOutageMinutes
FROM EnergyData
WHERE MeterStatus = 'Faulty'
GROUP BY MeterID;

-- 6. Low Energy Efficiency Zones
SELECT Zone,
       AVG(EnergyConsumed_kWh) AS AvgUsage,
       SUM(OutageMinutes) AS TotalOutages
FROM EnergyData
GROUP BY Zone
ORDER BY AvgUsage DESC, TotalOutages DESC;

-- 7. Weekday vs Weekend Peak Usage
SELECT CASE 
           WHEN DAYOFWEEK(Date) IN (1,7) THEN 'Weekend'
           ELSE 'Weekday'
       END AS DayType,
       AVG(PeakUsage_kWh) AS AvgPeakUsage
FROM EnergyData
GROUP BY DayType;
