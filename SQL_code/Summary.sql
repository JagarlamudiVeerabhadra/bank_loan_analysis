select * from financial_loan;

-- KPI'S

select count(id) as Total_Loan_Applications from financial_loan;

select count(id) as MTD from financial_loan 
where MONTH(issue_date)=12 and year(issue_date)=2021;

--MOM = ((MOD - PMOD) / PMOD) *100
select count(id) as PMTD from financial_loan 
where MONTH(issue_date)=11 and year(issue_date)=2021

SELECT SUM(loan_amount) as total_funded_amount from  financial_loan 

SELECT SUM(loan_amount) as PMTD_total_funded_amount from  financial_loan 
where month(issue_date) = 11 and year(issue_date)=2021;

select sum(total_payment) as Total_Amount_received from financial_loan;

select sum(total_payment) as MTD_Total_Amount_received from financial_loan
where month(issue_date) = 12 and year(issue_date)=2021;

select sum(total_payment) as PMTD_Total_Amount_received from financial_loan
where month(issue_date) = 11 and year(issue_date)=2021;

select round(avg(int_rate)*100 ,2) as avg_Interest_Rate from financial_loan;

select round(avg(int_rate)*100 ,2) as MTD_avg_Interest_Rate from financial_loan
where month(issue_date) = 12 and year(issue_date)=2021;

select round(avg(int_rate)*100 ,2) as PMTD_avg_Interest_Rate from financial_loan
where month(issue_date) = 11 and year(issue_date)=2021;

select round(avg(dti)*100 ,2) as avg_Interest_Rate from financial_loan;

select round(avg(dti)*100 ,2) as avg_Interest_Rate from financial_loan
where month(issue_date) = 12 and year(issue_date)=2021;

select round(avg(dti)*100 ,2) as avg_Interest_Rate from financial_loan
where month(issue_date) = 11 and year(issue_date)=2021;

select count(id) as Good_Loan from financial_loan
where (loan_status = 'Fully Paid' or loan_status = 'Current');

select (count(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id end)*100)
/
count(id) as Good_Loan_Percentage
from financial_loan;

select count(id) as Good_Loan_Applications from financial_loan
where loan_status ='Fully Paid' or loan_status = 'Current';

SELECT SUM(loan_amount) as Good_Loan_funded_amount from  financial_loan
where loan_status ='Fully Paid' or loan_status = 'Current';

SELECT SUM(total_payment) as Good_Loan_amount_Received from  financial_loan
where loan_status ='Fully Paid' or loan_status = 'Current';

select round((count(case when loan_status='Charged Off' then id end)*100.0)
/ 
count(id) ,2) as Bad_Loan_Percentage 
from financial_loan;

select count(id) as Bad_Loan_Applications from financial_loan
where loan_status='Charged Off';

select sum(loan_amount) as Bad_Loan_Funded_Amount from financial_loan
where loan_status='Charged Off';

SELECT SUM(total_payment) as Bad_Loan_Funded_Amount from  financial_loan
where loan_status='Charged Off';

SELECT 
	loan_status,
	count(id) as Total_Loan_Applications,
	sum(loan_amount) as Total_Amount_Funded,
	sum(total_payment) as Total_Amount_Received,
	round(avg(int_rate)*100,2) as Interest_Rate,
	round(avg(dti)*100,2) as DTI
from
	financial_loan
group by
	loan_status;

SELECT 
	loan_status,
	SUM(loan_amount) as MTD_total_funded_amount,
	sum(total_payment) as Total_Amount_received
from  
	financial_loan 
where 
	month(issue_date) = 12 and year(issue_date)=2021
group by
	loan_status;