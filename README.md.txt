# RBI Bank Deposit & Credit Analysis Dashboard (2020–2025)

## Project Overview
This project analyzes RBI-style banking data across Indian states and regions for the years 2020 to 2025.  
The objective of the project is to study deposit and credit trends, compare state-wise and region-wise performance, and evaluate the Credit-Deposit (CD) Ratio to understand banking penetration and lending patterns.

The project was built using **SQL, Python, and Power BI**.

---

## Objectives
- Analyze yearly **Total Deposit** and **Total Credit** trends from 2020 to 2025
- Calculate and study the **Credit-Deposit (CD) Ratio**
- Identify the **Top 10 states by Total Deposit**
- Identify the **Top 10 states by Total Credit**
- Identify the **Top 10 and Bottom 10 states by CD Ratio**
- Compare **region-wise Deposit vs Credit**
- Build an interactive **Power BI dashboard** with filters for Year, Region, and State

---

## Tools & Technologies Used
- **MySQL** – Data storage and analysis queries
- **Python** – Data cleaning / preprocessing / optional analysis
- **Power BI** – Interactive dashboard and visual analytics
- **Excel / CSV** – Dataset storage and preparation

---

## Dataset Information
The dataset contains banking-related data for Indian states and union territories with the following fields:

- **Year**
- **Region**
- **State**
- **Deposit**
- **Credit**

Additional calculated fields used in analysis:
- **CD Ratio = (Credit / Deposit) * 100**
- **Total Deposit**
- **Total Credit**
- **Total States Covered**

---

## SQL Analysis Performed
The following SQL analysis was performed in this project:

1. Year-wise Total Deposit and Total Credit
2. Year-wise CD Ratio calculation
3. Top 10 States by Total Deposit
4. Top 10 States by Total Credit
5. Top 10 States by CD Ratio
6. Bottom 10 States by CD Ratio
7. Region-wise Deposit vs Credit comparison
8. Growth trend analysis across years

---

## Power BI Dashboard Features
The Power BI dashboard includes:

### KPI Cards
- Total Deposit
- Total Credit
- CD Ratio
- States / UTs Covered

### Visuals
- Deposit vs Credit Trend (2020–2025)
- CD Ratio Trend (2020–2025)
- Top 10 States by Total Deposit
- Top 10 States by Total Credit
- Region-wise Deposit vs Credit
- Top 10 States by CD Ratio
- Bottom 10 States by CD Ratio

### Interactive Filters
- Year slicer
- Region slicer
- State slicer

---

## Key Insights
Some major insights from the analysis:

- Total deposits increased consistently from 2020 to 2025
- Total credit also showed strong growth across the same period
- The CD Ratio improved over time, indicating stronger lending relative to deposits
- Maharashtra, Delhi, Tamil Nadu, Karnataka, and Gujarat were among the strongest contributors in deposits and credit
- Some smaller states/UTs showed significantly lower CD ratios, indicating weaker credit penetration relative to deposits
- Western and Southern regions showed strong banking performance compared to some other regions

---

## Folder Structure
```text
RBI_Bank_Deposit_Credit_Analysis/
│
├── 01_Raw_Data/
│   └── banking_clean.csv
│
├── 02_SQL/
│   └── rbi_bank_analysis_queries.sqls
│
├── 03_Python/
│   └── bank_credit_analysis.ipynb
│
├── 04_PowerBI/
│   └── rbi_bank_dashboard.pbix
│
├── 05_Images/
│   ├── dashboard_overview.png
│   └── dashboard_filtered.png
│
└── README.md