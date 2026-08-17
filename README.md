# 🏦 Bank Loan Analysis | SQL & Power BI

## 📌 Project Overview

The **Bank Loan Analysis** project is an end-to-end data analytics project developed using **SQL and Microsoft Power BI** to analyze loan applications, funded amounts, repayments, borrower characteristics, loan performance, and regional trends.

The project transforms raw loan data into an interactive Power BI dashboard that enables users to monitor key lending metrics, compare loan performance, identify trends, and analyze borrower and loan characteristics.

The dashboard is designed from a **business decision-making perspective**, allowing stakeholders to quickly understand loan portfolio performance through KPIs, charts, maps, slicers, and detailed loan-level information.

---

## 🎯 Business Objective

The primary objective of this project is to analyze a bank's loan portfolio and answer important business questions such as:

* How many loan applications have been received?
* How much money has been funded?
* How much money has been received back?
* What is the average interest rate?
* What is the average Debt-to-Income (DTI) ratio?
* How are loan applications and funded amounts changing month over month?
* Which states generate the highest funded loan amounts?
* Which loan purposes contribute the most to funding?
* How does loan funding vary by employment length?
* How does funding differ by home ownership?
* What loan terms are most common?
* How can loans be analyzed based on good vs. bad loan performance?
* How can individual loan records be explored using detailed filters?

---

## 📊 Dataset

The project uses a financial loan dataset containing information about loan applications and borrower characteristics.

### Key data attributes include:

* Loan ID
* Loan Status
* Loan Purpose
* Home Ownership
* Grade
* Sub Grade
* Issue Date
* Funded Amount
* Amount Received
* Interest Rate
* Installment
* DTI
* Employment Length
* Loan Term
* State
* Other borrower and loan-related attributes

The dataset contains approximately **38.6K loan applications**.

---

# 🛠️ Tools & Technologies

| Tool                   | Purpose                                                 |
| ---------------------- | ------------------------------------------------------- |
| **SQL**                | Data analysis, aggregation, filtering, KPI calculations |
| **Microsoft Power BI** | Interactive dashboard development                       |
| **DAX**                | Measures, KPIs, MTD/MOM calculations                    |
| **Power Query**        | Data preparation and transformation                     |
| **CSV**                | Source dataset                                          |
| **Git & GitHub**       | Version control and project portfolio                   |

---

# 🔄 Project Workflow

```text
Raw Loan Dataset
       ↓
Data Preparation
       ↓
SQL Analysis
       ↓
KPI & Business Metric Calculation
       ↓
Power BI Data Modeling
       ↓
DAX Measures
       ↓
Interactive Dashboard
       ↓
Business Insights
```

---

# 🗄️ SQL Analysis

SQL was used to analyze the loan dataset and generate important business metrics.

The SQL analysis includes:

* Total loan applications
* Total funded amount
* Total amount received
* Average interest rate
* Average DTI
* Loan status analysis
* Good vs. bad loan analysis
* Monthly loan trends
* Monthly funded amount
* Loan purpose analysis
* State-level analysis
* Employment length analysis
* Home ownership analysis
* Loan term analysis
* Loan grade and sub-grade analysis

The SQL queries are organized in the `SQL_code` folder.

### SQL files

```text
SQL_code/
├── Overview.sql
└── Summary.sql
```

---

# 📈 Power BI Dashboard

The Power BI report contains **three interactive pages**:

1. Summary
2. Overview
3. Details

The report includes interactive slicers and visualizations that allow users to explore the loan portfolio from multiple perspectives.

---

# 📄 1. Summary Dashboard

The Summary page provides a high-level view of the overall loan portfolio.

### Key KPIs

The dashboard tracks:

### Total Loan Applications

**38.6K**

Represents the total number of loan applications in the dataset.

### Total Funded Amount

**$435.8M**

Represents the total amount funded across all loan applications.

### Total Amount Received

**$473.1M**

Represents the total amount received from borrowers.

### Average Interest Rate

**12.05%**

Represents the average interest rate across the loan portfolio.

### Average DTI

**13.33%**

Represents the average Debt-to-Income ratio of borrowers.

---

# 📊 Month-to-Date & Month-over-Month Analysis

The dashboard also includes comparative metrics such as:

* MTD — Month-to-Date
* MOM — Month-over-Month

These metrics help identify changes in loan activity and financial performance over time.

Examples from the dashboard include:

* MTD loan applications: **4.3K**
* MOM loan application change: **6.9%**
* MTD funded amount: **$54.0M**
* MOM funded amount change: **13.0%**
* MTD amount received: **$58.1M**
* MOM amount received change: **15.8%**
* MTD average interest rate: **12.36%**
* MOM change: **3.47%**
* MTD average DTI: **13.67%**
* MOM change: **2.73%**

These indicators provide a quick understanding of recent portfolio movement compared with the previous period.

---

# 📄 2. Overview Dashboard

The Overview page provides deeper analysis of loan funding across different business dimensions.

## 📈 Total Funded Amount by Month

A monthly trend visualization is used to identify changes in funded loan amounts throughout the year.

The dashboard shows an overall increase in monthly funded amounts, progressing from approximately:

**$25M → $50M**

This helps identify monthly lending trends and changes in loan demand.

---

## 🗺️ Total Funded Amount by State

A geographic map visualizes loan funding across different U.S. states.

This allows stakeholders to:

* Identify high-performing states
* Compare regional lending activity
* Detect geographic concentration
* Analyze funding distribution across the country

---

## 💳 Total Funded Amount by Loan Term

The dashboard compares loan funding across different repayment terms.

The report includes:

* **36-month loans**
* **60-month loans**

The visualization shows that approximately **62.7% ($273.0M)** of funded amount is associated with the larger loan-term segment displayed in the dashboard.

---

## 👔 Total Funded Amount by Employment Length

Loan funding is analyzed according to borrower employment length.

The dashboard highlights categories such as:

* < 1 year
* 1 year
* 2 years
* 3 years
* 4 years
* 5 years
* 6 years
* 10+ years

The **10+ years** employment category represents approximately **$116M** in funded amount.

This analysis helps understand the relationship between borrower employment history and lending activity.

---

## 🎯 Total Funded Amount by Loan Purpose

Loan funding is also analyzed by the purpose of the loan.

Major categories include:

* Debt consolidation
* Credit card
* Home improvement
* Other
* Small business
* Major purchase
* Car
* Wedding

**Debt consolidation** is the largest loan-purpose category in the dashboard, contributing approximately **$0.23B** in funded amount.

This indicates that debt consolidation represents a significant portion of the bank's lending portfolio.

---

## 🏠 Total Funded Amount by Home Ownership

The dashboard analyzes funded amounts based on borrower home ownership status.

Key categories include:

* Mortgage
* Rent
* Own
* Other

The dashboard shows:

* **Mortgage:** approximately $219.33M
* **Rent:** approximately $185.77M

This helps identify the relationship between borrower housing status and loan funding.

---

# 📄 3. Details Dashboard

The Details page provides a detailed, loan-level view of the dataset.

Users can examine individual loan records using fields such as:

* Loan ID
* Purpose
* Home Ownership
* Grade
* Sub Grade
* Issue Date
* Funded Amount
* Interest Rate
* Installment
* Amount Received

This page is designed for **record-level analysis and drill-down investigation**.

---

# 🎛️ Interactive Filters

The dashboard includes interactive slicers that allow users to filter the analysis.

Available filters include:

* **State**
* **Good vs Bad Loan**
* **Grade**
* Selectable measures

These filters dynamically update the dashboard visuals and allow users to perform targeted analysis.

---

# 📌 Key Business Insights

Based on the dashboard analysis, several important insights can be identified:

### 1. Strong Loan Portfolio Size

The dataset contains approximately **38.6K loan applications**, with total funded amounts of approximately **$435.8M**.

### 2. Significant Amount Received

The total amount received is approximately **$473.1M**, which is higher than the total funded amount.

### 3. Debt Consolidation is a Major Loan Purpose

Debt consolidation represents the largest loan-purpose category, with approximately **$0.23B** in funded loans.

### 4. Mortgage Borrowers Represent a Major Funding Segment

Borrowers with mortgage-based home ownership account for approximately **$219.33M** in funded amount.

### 5. Long-Term Employment Segment

Borrowers with **10+ years of employment history** account for approximately **$116M** in funded amount.

### 6. Monthly Funding Shows an Upward Trend

Monthly funded amounts increase from approximately **$25M at the beginning of the period to around $50M toward the end**, indicating increasing lending activity.

### 7. Loan Terms

The portfolio consists primarily of **36-month and 60-month loans**, allowing comparison between shorter- and longer-term lending.

---

# 📊 Dashboard Pages

### Summary

Provides high-level KPIs and portfolio performance indicators.

### Overview

Provides visual analysis of funding trends by:

* Month
* State
* Loan term
* Employment length
* Loan purpose
* Home ownership

### Details

Provides loan-level records and interactive filtering capabilities.

---

# 📁 Project Structure

```text
bank_loan_analysis/
│
├── Dashboard.pbix
│
├── SQL_code/
│   ├── Overview.sql
│   └── Summary.sql
│
├── .gitignore
│
└── README.md
```

> The raw dataset is not included in the repository to keep the project lightweight and avoid unnecessary redistribution of source data.

---

# 🚀 How to Use the Project

## 1. Clone the repository

```bash
git clone https://github.com/JagarlamudiVeerabhadra/bank_loan_analysis.git
```

## 2. Open the project

Open:

```text
Dashboard.pbix
```

using Microsoft Power BI Desktop.

## 3. Explore the dashboard

Navigate through:

```text
Summary → Overview → Details
```

Use the slicers to filter the dashboard and explore different loan segments.

## 4. Explore SQL analysis

Open the SQL files inside:

```text
SQL_code/
```

to review the queries used for loan portfolio analysis.

---

# 💡 Skills Demonstrated

This project demonstrates practical skills in:

### SQL

* SELECT statements
* CASE statements
* Aggregate functions
* GROUP BY
* Filtering
* Conditional aggregation
* Date-based analysis
* KPI calculations
* Month-over-Month analysis
* Business-oriented SQL analysis

### Power BI

* Data modeling
* Power Query
* DAX
* KPI cards
* Slicers
* Tables
* Line charts
* Bar charts
* Donut charts
* Filled maps
* Treemaps
* Interactive dashboards
* Drill-down analysis
* Business storytelling

### Data Analytics

* Exploratory data analysis
* KPI development
* Trend analysis
* Geographic analysis
* Customer segmentation
* Loan portfolio analysis
* Business insight generation

---

# 🎓 Project Outcome

This project demonstrates how raw financial data can be transformed into an interactive business intelligence solution.

By combining **SQL for analytical querying** with **Power BI for visualization and reporting**, the project provides a comprehensive view of loan portfolio performance and enables stakeholders to identify trends, compare borrower segments, and make data-driven decisions.

---

# 👨‍💻 Author

**Jagarlamudi Veera Bhadra**

Aspiring Data Analyst | SQL | Power BI | Excel | Python

---

## ⭐ Project Highlights

**38.6K+** Loan Applications
**$435.8M** Total Funded Amount
**$473.1M** Total Amount Received
**12.05%** Average Interest Rate
**13.33%** Average DTI

**Built with:** SQL + Power BI + DAX + Power Query
