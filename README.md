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

  ## Methodology (short)
1. **Ingest** raw loan dataset.  
2. **Clean** and standardize fields (dates, categories, nulls).  
3. **Calculate KPIs** (Total Applications, Funded, Received, MTD, MoM, Avg Interest, Avg DTI, Good/Bad split).  
4. **Visualize**: Overview (trend + map + donut + bar + treemap), Summary (KPIs + quality rings + table), Details (grid with transactional rows).  
5. **Interpret** insights and recommend actions.
---
   ## KPI calculations / reproducible formulas
- **Total Loan Applications** = `COUNT(application_id)`  
- **Total Funded Amount** = `SUM(funded_amount)`  
- **Total Amount Received** = `SUM(amount_received)`  
- **MTD Funded Amount** = `SUM(funded_amount WHERE issue_month = current_month)`  
- **Average Interest Rate** = `AVG(interest_rate)` or weighted: `SUM(interest_rate * funded_amount) / SUM(funded_amount)`  
- **Average DTI** = `AVG(dti)` (or weighted by funded amount)  
- **Good Loan %** = `COUNT(IF loan_status IN ('Fully Paid','Current')) / COUNT(*) * 100`  
- **Bad Loan %** = `COUNT(IF loan_status = 'Charged Off') / COUNT(*) * 100`

---
## Key findings / Insights 
- **Growth trend:** Total funded amount and applications show steady month-over-month growth → business scaling and seasonality.  
- **Geographic concentration:** Lending activity clusters in several states (map hotspots) → geographic dependency risk.  
- **Product concentration:** Mortgage, debt consolidation and rent-related loans are the largest funded categories → product focus needed.  
- **Term & tenure effects:** 36- and 60-month terms are dominant; longer employment length correlates with larger funded amounts → stable employment reduces risk.  
- **Homeownership:** Mortgages/owned homes receive larger funded amounts → ownership correlates with loan size & potentially lower default.  
- **Portfolio quality:** ~86% good loans vs ~14% bad loans — healthy overall but charged-off amounts require attention.  
- **Cost & stress indicators:** Avg interest ~12% and avg DTI ~13% — useful for pricing and borrower stress monitoring.

---

## Business recommendations (data-driven)
1. **Tighten underwriting** for borrowers with high DTI, short employment length, and specific high-charge-off purposes.  
2. **Collections priority:** target top charged-off loan amounts for recovery.  
3. **Product focus & marketing:** grow mortgage and debt-consolidation products in top-performing states.  
4. **Adjust pricing/terms** for higher-risk segments or require additional collateral/documentation.  
5. **Regional diversification:** expand into under-served states to reduce concentration risk.  
6. **Monitoring & alerts:** automate alerts for sudden MoM KPI changes (funded amount, DTI, charged-offs).

- Dashboard Interactive <a href="https://github.com/mrsiddhu1916/Data-Analysis-Dashboard/blob/main/bank%20loan%20dashboard.pbix">View Dashboard<a/a>

- ## Author / Contact
**Siddardha Kamepali**  
LinkedIn: https://www.linkedin.com/in/siddardh-kamepalli-563420355
 




