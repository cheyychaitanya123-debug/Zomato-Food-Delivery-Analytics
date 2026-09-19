# 🍔 Zomato Food Delivery Analytics

## 📌 Project Overview

An end-to-end **Food Delivery Analytics** project analyzing delivery operations, customer ratings, traffic conditions, weather, vehicle types, city-level performance, and delivery patterns.

The project combines **Python/Pandas, SQL, and Power BI** to transform raw delivery data into actionable operational insights.

### Project Workflow

**Raw Data → Python/Pandas → Data Cleaning & EDA → SQL Analysis → Power BI Dashboard → Business Insights**

---

## 🎯 Business Objectives

The project aims to answer key operational questions:

* What factors have the greatest impact on delivery time?
* How does traffic density affect delivery performance?
* Does weather influence delivery time?
* How do vehicle types compare in delivery performance?
* Which cities have higher delivery times and order volumes?
* Does the number of multiple deliveries affect delivery time?
* How does delivery time relate to customer ratings?
* Which hours experience higher order volumes?
* What proportion of deliveries can be considered delayed?

---

## 📊 Dataset

The dataset contains food-delivery order information including:

* Delivery person information
* Age
* Ratings
* Weather conditions
* Road traffic density
* Vehicle type
* Multiple deliveries
* Festival information
* City
* Order hour
* Delivery time

The cleaned dataset contains approximately **45,584 delivery records**.

---

# 🐍 Python / Pandas Analysis

Python and Pandas were used for **data cleaning, preparation, exploratory data analysis, and visualization**.

### Data Preparation

The analysis included:

* Inspecting the dataset structure
* Identifying missing values
* Handling missing/unknown categorical values
* Checking data types
* Preparing variables for analysis
* Creating analysis-ready datasets
* Exploring distributions and relationships between variables

### Exploratory Analysis

The following analyses were performed:

* Delivery time distribution
* Average delivery time by traffic density
* Average delivery time by vehicle type
* Average delivery time by weather
* Average delivery time by city
* Average delivery time by order hour
* Average delivery time by multiple deliveries
* Delivery time vs. customer rating
* Delivery-person age vs. delivery time
* Order volume by city
* Order volume by hour
* Top restaurant locations by order volume
* Average rating by traffic
* Average rating by festival
* Correlation analysis

---

# 🗄️ SQL Analysis

SQL was used to perform structured analysis of the cleaned delivery data.

Key SQL analysis included:

* Total number of deliveries
* Average delivery time
* Delivery performance by vehicle type
* Delivery performance by traffic density
* City-level delivery analysis
* Rider-level analysis
* Order volume analysis
* Identifying delayed deliveries
* Comparing delivery conditions
* Aggregating operational metrics using `GROUP BY`
* Filtering aggregated results using `HAVING`
* Using conditional logic with `CASE`
* Working with SQLite for analytical queries

### Example Finding

Average delivery time across the dataset was approximately **26.3 minutes**.

Traffic showed a clear relationship with delivery time:

| Traffic Density | Avg. Delivery Time |
| --------------- | -----------------: |
| Low             |          ~21.3 min |
| Medium          |          ~26.7 min |
| High            |          ~27.2 min |
| Jam             |          ~31.2 min |

This indicates that heavier traffic conditions are associated with longer delivery times.

---

# 📈 Power BI Dashboard

Power BI was used to create an interactive dashboard for operational analysis.

### Key KPIs

* **Total Orders**
* **Average Delivery Time**
* **Average Rating**
* **Delayed Orders**
* **Delayed Order %**

### Delivery Status Classification

A delivery-status classification was created based on delivery time:

| Delivery Time | Status         |
| ------------- | -------------- |
| ≤ 20 minutes  | Fast           |
| 21–30 minutes | Normal         |
| 31–40 minutes | Delayed        |
| > 40 minutes  | Highly Delayed |

### Dashboard Analysis

The dashboard allows analysis of:

* Traffic vs. delivery time
* Multiple deliveries vs. delivery time
* Weather vs. delivery time
* Order hour vs. delivery time
* City vs. delivery time
* Delivery time vs. customer rating
* Order volume by city
* Order volume by hour
* Delivery performance across vehicle types

---

# 🔎 Key Findings

### 🚦 Traffic

Traffic conditions have a noticeable relationship with delivery time.

Average delivery time increased from approximately **21 minutes under low traffic** to more than **31 minutes during traffic jams**.

### 🏙️ City

Metropolitan areas represented the largest share of orders and had a higher average delivery time than Urban areas.

### 🛵 Vehicle Type

Average delivery time varied across vehicle types, allowing operational comparison of delivery modes.

### 🌦️ Weather

Weather conditions were analyzed to identify their relationship with delivery performance.

### ⏰ Order Timing

Order volume and average delivery time were analyzed across different hours to identify periods of higher operational demand.

### ⭐ Ratings

The project also examined the relationship between customer ratings and delivery performance, including delivery-time categories and operating conditions.

### 📦 Multiple Deliveries

Multiple-delivery orders were analyzed to understand whether carrying multiple orders is associated with longer delivery times.

---

# 💡 Business Insights

The analysis can help food-delivery operations focus on:

* Managing delivery capacity during high-traffic periods
* Monitoring delivery performance in metropolitan areas
* Understanding the operational impact of multiple deliveries
* Evaluating delivery performance across vehicle types
* Monitoring peak order hours
* Identifying delivery delays
* Understanding factors associated with customer ratings

---

# 🛠️ Tools & Technologies

* **Python**
* **Pandas**
* **Matplotlib**
* **Jupyter Notebook**
* **SQL**
* **SQLite**
* **Power BI**
* **DAX**
* **Power Query**
* **Git & GitHub**

---

# 📁 Project Structure

```text
Food-Delivery-Analytics/
│
├── Charts/
│   ├── average_delivery_time_by_city.png
│   ├── average_delivery_time_by_festival.png
│   ├── average_delivery_time_by_multiple_deliveries.png
│   ├── average_delivery_time_by_order_hour.png
│   ├── average_delivery_time_by_traffic.png
│   ├── average_delivery_time_by_vehicle.png
│   ├── average_delivery_time_by_weather.png
│   ├── average_rating_by_festival.png
│   ├── average_rating_by_traffic.png
│   ├── correlation_heatmap.png
│   ├── delivery_person_age_vs_delivery_time.png
│   ├── delivery_time_distribution.png
│   ├── delivery_time_vs_rating.png
│   ├── order_volume_by_city.png
│   ├── order_volume_by_hour.png
│   └── top_10_restaurant_locations_by_orders.png
│
├── Data/
│   ├── Zomato Dataset.csv
│   └── zomato_delivery_cleaned.csv
│
├── Python/
│   └── food_delivery_analysis.ipynb
│
├── SQL/
│   └── analysis.sql
│
├── PowerBI/
│   └── Zomato Food Delivery Analytics.pbix
│
├── .gitignore
└── README.md
````
# 🚀 Project Skills Demonstrated

This project demonstrates practical experience with:

* Data cleaning
* Exploratory Data Analysis
* Data visualization
* Pandas
* SQL querying
* Aggregation and filtering
* Business KPI development
* Power BI dashboard development
* DAX measures
* Power Query
* Operational analysis
* Translating data into business insights
---
## 👤 Author

**Chaitanya Reddy Gummalla**

Aspiring Data Analyst focused on **Data Analytics, Transport & Logistics, and Business Intelligence**.

