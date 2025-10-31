# Financial Bank Loan Data-Analysis  (Interactive Dashboard Using Power Bi)

## Interactive dashboards and analysis to monitor loan portfolio KPIs, identify risk pockets, and drive data-backed lending decisions.

## Project Summary
This project builds a comprehensive **Bank Loan Report** with three dashboard pages: **Summary**, **Overview**, and **Details**. The dashboards visualize key lending metrics, monthly trends, geographic distribution, loan-term distribution, loan-purpose breakdown, employment-length impact, home-ownership analysis, and a detailed grid for transactional review. The goal is to monitor portfolio health, identify risk pockets, and recommend data-driven actions.

## Short Problem Statements
- **Monitor portfolio health:** Centralize KPIs (Total Loan Applications, Total Funded Amount, Total Amount Received, MTD, MoM) to track loan portfolio performance.  
- **High-level overview:** Provide visual monthly trends, interest rate and DTI monitoring for timely insights.  
- **Segment & regional analysis:** Identify concentration and risk by State, Loan Purpose, Loan Term, Home Ownership, and Employee Length.  
- **Drilldown & quality control:** Provide a transactional details grid and separate Good vs Bad loan metrics for portfolio quality monitoring.
- 
## Key Dashboard Metrics (from visuals)
- **Total Loan Applications:** **38.6K**  
- **Total Funded Amount:** **$435.8M**  
- **Total Amount Received:** **$473.1M**  
- **Average Interest Rate:** **12.0%**  
- **Average Debt-to-Income (DTI):** **13.3%**  
- **Good Loans:** **86.2%** of portfolio  
- **Bad Loans:** **13.8%** of portfolio

> Note: MTD and MoM deltas are shown on dashboards for short-term monitoring.
## Dataset Used
- <a href="https://github.com/mrsiddhu1916/Data-Analysis-Dashboard/blob/main/financial_loan_DataSet.csv" >Dataset</a>

**Data cleaning done (example):**  
- Converted `issue_date` to date type and extracted month/year.  
- Filled or removed nulls in `funded_amount`, `amount_received`, `interest_rate`.  
- Standardized categories for `purpose`, `home_ownership`, and `loan_status`.  
- Derived `MTD` flags, `month` and `year` for trend analysis.
## Tools & Technologies
- **Power BI Desktop** (PBIX) — primary dashboard file  
- **Excel** — quick checks / small transformations  
- **Python (pandas)** — optional preprocessing and KPI calculation  
- **SQL** —  data comes from a database




