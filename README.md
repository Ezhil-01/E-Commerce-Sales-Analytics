# 📊 E-Commerce Sales Analytics

> An end-to-end data analytics project using **Python**, **MySQL**, and **Power BI** to transform over **1 million retail transactions** into actionable business insights through data cleaning, SQL analysis, and interactive dashboards.

---

## 📌 Project Overview

This project analyzes the **Online Retail II dataset**, originally provided by the **UCI Machine Learning Repository** and accessed through **Kaggle**.

The project follows a complete analytics workflow, starting from raw data processing and ending with business intelligence reporting.

---

## 💼 Business Objective

The objective of this project is to help businesses:

- Monitor overall sales performance
- Identify top-performing products and countries
- Understand customer purchasing behavior
- Measure customer retention
- Segment customers based on revenue
- Support data-driven business decisions through interactive dashboards

---

## 📂 Dataset Information

**Dataset Name:** Online Retail II  
**Source:** Kaggle  

<table>
  <tr>
    <th>Dataset</th>
    <th>Records</th>
  </tr>
  <tr>
    <td>Raw Dataset</td>
    <td><b>1,067,371</b></td>
  </tr>
  <tr>
    <td>After SQL Duplicate Removal</td>
    <td><b>1,033,036</b></td>
  </tr>
  <tr>
    <td>Final Cleaned Dataset</td>
    <td><b>1,007,903</b></td>
  </tr>
</table>

---

<h2>🛠️ Tech Stack</h2>

<table>
  <tr>
    <th>Tool</th>
    <th>Purpose</th>
  </tr>
  <tr>
    <td><b>Python (Pandas)</b></td>
    <td>Data cleaning, preprocessing, and validation</td>
  </tr>
  <tr>
    <td><b>MySQL</b></td>
    <td>Data import, duplicate removal, and business analysis using SQL queries</td>
  </tr>
  <tr>
    <td><b>Jupyter Notebook</b></td>
    <td>Python development and data cleaning</td>
  </tr>
  <tr>
    <td><b>Power BI</b></td>
    <td>Interactive dashboard development and visualization</td>
  </tr>
  <tr>
    <td><b>Power Query</b></td>
    <td>Data transformation and validation</td>
  </tr>
  <tr>
    <td><b>DAX</b></td>
    <td>Calculated columns, measures, and business metrics</td>
  </tr>
</table>

---

## 🔄 Project Workflow

```text
Online Retail II Dataset (Kaggle)
                │
                ▼
Import Dataset into MySQL
                │
                ▼
Remove Duplicate Records using SQL
                │
                ▼
Export Deduplicated Dataset
                │
                ▼
Python Data Cleaning (Pandas)
                │
                ▼
Load Cleaned Dataset into Power BI
                │
                ▼
Power Query Transformations
                │
                ▼
DAX Measures & Calculated Columns
                │
                ▼
Interactive Power BI Dashboard
                │
                ▼
Analysis & Validation
```

---

## 🚀 Project Implementation

### Phase 1 – SQL Data Preparation

- Imported the Online Retail II dataset into MySQL.
- Removed duplicate records using SQL.
- Exported the deduplicated dataset for further processing.

---

### Phase 2 – Python Data Cleaning

Performed data cleaning using **Pandas**.

Tasks completed:

- Removed missing Description values
- Removed missing Country values
- Removed missing Price values
- Removed negative quantities
- Removed zero and negative price transactions
- Standardized data types
- Validated and prepared the final cleaned dataset for reporting

---

### Phase 3 – Power BI Dashboard Development

Implemented:

- Built an interactive business dashboard using Power BI.
- Applied Power Query transformations, DAX measures, and calculated columns to support the analysis.

---

### Phase 4 – Analysis & Validation

- Cross-platform comparison of key analytical results between SQL and Power BI.
- Consistency checks across sales, product, country, and customer analysis.

---

## 📈 Key Business Insights

- Identified the highest revenue-generating products and products with the highest sales volume to understand product performance and demand.
- Analyzed country-wise revenue and order volume to identify key markets and customer activity across countries.
- Identified top countries by Average Order Value to understand markets with higher customer spending per order.
- Analyzed monthly revenue and order trends to understand changes in sales performance and purchasing activity over time.
- Analyzed customer order frequency to identify different purchasing patterns and customer groups.
- Identified high-value customers and top customers by revenue to support targeted retention and relationship management strategies.
- Identified top customers by order count to understand highly engaged and frequent purchasers.

---


## 📁 Repository Structure

```text
E-Commerce Sales Analytics
│
├── 01_Python
│   ├── Online_Retail_II_Data_Cleaning.ipynb
│   └── Online_Retail_II_SQL_Cleaned.zip
│
├── 02_Dataset
│   └── online_retail_clean.csv
│
├── 03_SQL
│   ├── SQL_Queries.sql
│   └── SQL_Results
│
├── 04_PowerBI
│   └── E_Commerce_Sales_Analytics.pbix
│
├── 05_Dashboard
│   ├── 01_Executive_Summary.png
│   ├── 02_Sales_Performance.png
│   ├── 03_Customer_Insights.png
│   └── Dashboard_Report.pdf
│
└── README.md
```

---

## ▶️ How to Run

### ⚙️ Prerequisites

- Python 3.x
- Jupyter Notebook or JupyterLab
- MySQL Community Server 8.0
- MySQL Workbench 8.0 CE
- Power BI Desktop

### ▶️ Steps

1. Clone this repository.

```bash
git clone https://github.com/Ezhil-01/E-Commerce-Sales-Analytics.git
```

2. Open the Jupyter Notebook inside 01_Python. 

3. Extract the Online_Retail_II_SQL_Cleaned.zip file and use the CSV file as the input dataset. Then run the notebook cells to perform data cleaning and validation.

4. Use the final cleaned dataset available in the 02_Dataset folder for analysis. 

5. Execute the SQL queries inside 03_SQL using MySQL Workbench. 

6. Open 04_PowerBI/E_Commerce_Sales_Analytics.pbix. 

7. Refresh the data source if prompted.

---

## 💡 Skills Demonstrated

- Data Cleaning
- Data Transformation
- SQL Query Writing
- ETL
- Data Analysis
- Power Query
- DAX
- Data Modeling
- Dashboard Development
- Business Intelligence
- Data Visualization
- Problem Solving

---

## Results & Insights

- This project successfully transformed a **1M+ row retail transaction dataset** into a complete analytics solution.
- The data was prepared through a structured cleaning pipeline, resulting in a reliable analytical dataset containing **1,007,903 records and 8 attributes**.
- Validated dashboard KPIs and insights by comparing Power BI results with SQL analysis outputs to ensure data accuracy and consistency.
- Delivered an interactive Power BI business intelligence dashboard covering sales, product, country, and customer analysis.

---
