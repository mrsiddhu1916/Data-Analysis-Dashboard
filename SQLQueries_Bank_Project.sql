select * from Bank_loan_data;
select count(*) from Bank_loan_data;
select count(id) as Total_loan_applications from Bank_loan_data;
select count(id) as MTD_TOtal_loan_applications from Bank_loan_data
where month(issue_date)=12 and year(issue_date)=2021;

select count(id) as PMTD_total_loan_applications 
from Bank_loan_data
where month(issue_date)=11 and year(issue_date)=2021;


-- (MTD-PMTD)/PMTD


SELECT SUM(loan_amount) as total_funded_amount
from Bank_loan_data;

-- MOMTH TO DATE STATU

select sum(loan_amount) as MTD_total_funded_amount
from Bank_loan_data
where month(issue_date)=12 and year(issue_date)=2021;


--previous momth to data

select sum(loan_amount) as PMTD_total_funded_amount from 
Bank_loan_data 
where month(issue_date)=11 and year(issue_date)=2021;

-- total amount received

select sum(total_payment) as Total_amount_received from Bank_loan_data
;

select sum(total_payment) as MTD_total_amount_received from Bank_loan_data
where month(issue_date)=12 and year(issue_date)=2021;

select sum(total_payment) as PMTD_total_amount_received
from Bank_loan_data
where month(issue_date)=11 and year(issue_date)=2021;

--Average interest rate

select round(avg(int_rate)*100,2) as average_interest_rate 
from Bank_loan_data;

--MTD

SELECT round(AVG(int_rate)*100,2) as MTD_avg_interest_rate
from Bank_loan_data 
where month(issue_date)=12 and year(issue_date)=2021;


--pmtd AVG INTEREST RATE

SELECT round(avg(int_rate)*100,1) as PMTD_avg_interest_rate 
from Bank_loan_data 
where month(issue_date)=11 and year(issue_date)=2021    



-- AverageDeb_to_Income_Ratio 

select round(avg(dti)*100,2) as AverageDeb_to_Income_Ratio 
from Bank_loan_data;
-- there in the bank loan verification the DTi value not be more not be low , the value always middel
--if its very much low you cannot manage your payments  & if its very   much low  also you can manage your finances so consider that 30, 35 to 36 and 20,25 this is better dti and based on bank.




--month to date AverageDeb_to_Income_Ratio
select round(avg(dti)*100,2) as MTD_avg_deb_to_income
from Bank_loan_data
where month(issue_date)=12 and year(issue_date)=2021;


--previeus month to date AverageDeb_to_Income_Ratio
select avg(dti)*100 as PMTD_avg_deb_to_income
from Bank_loan_data
where month(issue_date)=12 and year(issue_date)=2021;
select * from Bank_loan_data

--Good Loan v Bad Loan KPI’s
--1.Good loan Application percentage

select (count(Case when loan_status='Fully Paid' or loan_status= 'Current' then id end)*100)/count(id)
from Bank_loan_data;



select (count(case when loan_status='Fully Paid' or loan_status='Current' then id end)*100)/count(id) as good_loan_applications_perc
from Bank_loan_data;

--2.Good Loan Applications:   
select count(id) as Good_loan_applications
from Bank_loan_data
where loan_status='Fully Paid' or loan_status= 'Current'

--3.Good Loan Funded Amount

select sum(loan_amount) as Good_loan_funded_amount from Bank_loan_data
where  loan_status='Fully Paid' or loan_status='Current';


--4.Good Loan Total Received Amount: 
select sum(total_payment) as Good_loan_total_received_amount
from Bank_loan_data
where loan_status='Fully Paid' or loan_status='Current';
select * from Bank_loan_data;
--Bad Loan KPIs:
--Bad Loan Application Percentage
select
(round(count(case when loan_status='Charged OFF' then id end)*100,2))/count(id) as bad_loan_application_perc
from Bank_loan_data;

--2.Bad Loan Applications:

select count(id) as bad_loan_application from Bank_loan_data
where loan_status='Charged Off';

--3.Bad Loan Funded Amount: 
select sum(loan_amount) as Bad_loan_funded_amount
from Bank_loan_data
where loan_status='Charged Off'

--4.Bad Loan Total Received Amount

select sum(total_payment) as Bad_loan_received_payment
from Bank_loan_data
where loan_status='Charged Off'


--Loan Status Grid View

select loan_status,count(id) as Total_loan_application,
 sum(loan_amount) as Total_funded_amount,
 sum(total_payment) as Total_amount_received,
 round(avg(int_rate*100),2) as avg_interest_rate,
round( avg(dti*100),2) as avg_dti
 from
      Bank_loan_Data
 group by
 loan_status
    

--month to date loan status wise

select loan_status,sum(loan_amount) as MTD_total_funded_amount,
sum(total_payment) as MTD_total_amount_received
from Bank_loan_data
where month(issue_date)=12 and  year(issue_date)=2021
group by loan_status;


--perivious month to date
select loan_status,sum(loan_amount) as PMTD_total_funded_amount,
sum(total_payment) as PMTD_total_amount_received
from Bank_loan_data
where month(issue_date)=11 and  year(issue_date)=2021
group by loan_status;



--month wise
select 
month(issue_date) as month_number,
Datename(month,issue_date)as month,
count(id) as total_loan_application,
sum(loan_amount) as total_funded_amount,
sum(total_payment) as Total_amount_received
from Bank_loan_data
group by 
        month(issue_date),Datename(month,issue_date)
order by
        month(issue_date) asc
---state wise

select * from Bank_loan_data;
select address_state,
count(id) as total_loan_application,
sum(loan_amount) as total_funded_amount,
sum(total_payment) as Total_amount_received
from Bank_loan_data
group by 
        address_state
order by 
total_loan_application desc --or total_funded_amount desc
;

--3.terms wise 

select term,
count(id) as total_loan_application,
sum(loan_amount) as total_funded_amount,
sum(total_payment) as Total_amount_received
from Bank_loan_data
group by 
         term;

-- 4.Employee Length Analysis (Bar Chart):
select 
emp_length,
count(id) as total_loan_application,
sum(loan_amount) as total_funded_amount,
sum(total_payment) as Total_amount_received
from Bank_loan_data
group by  
        emp_length
order by emp_length 
-- Loan Purpose Breakdown (Bar Chart):
select 
purpose,
count(id) as total_loan_application,
sum(loan_amount) as total_funded_amount,
sum(total_payment) as Total_amount_received
from Bank_loan_data
group by  
        purpose
order by purpose;


select * from Bank_loan_data;

select home_ownership,
count(id) as total_loan_application,
sum(loan_amount) as total_funded_amount,
sum(total_payment) as Total_amount_received
from Bank_loan_data
group by  
        home_ownership

order by count(id)  asc;




select home_ownership,
count(id) as total_loan_application,
sum(loan_amount) as total_funded_amount,
sum(total_payment) as Total_amount_received
from Bank_loan_data
where grade='A'
group by  
        home_ownership

order by count(id)  asc;