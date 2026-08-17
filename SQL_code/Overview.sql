select * from financial_loan;

select 
	month(issue_date) as Month_num,
	datename(month,issue_date) as Month,
	count(id) as Total_Loan_Applications,
	sum(loan_amount) as Total_Funded_amount,
	sum(total_payment) as Total_Received_Amount
from 
	financial_loan
group by
	month(issue_date),
	datename(month,issue_date)
order by
	month(issue_date);


select 
	address_state,
	count(id) as Total_Loan_Applications,
	sum(loan_amount) as Total_Funded_amount,
	sum(total_payment) as Total_Received_Amount
from 
	financial_loan
group by
	address_state
order by
	Total_Funded_amount desc;


select 
	term as Loan_Term,
	count(id) as Total_Loan_Applications,
	sum(loan_amount) as Total_Funded_amount,
	sum(total_payment) as Total_Received_Amount
from 
	financial_loan
group by
	term
order by
	term;


select 
	emp_length,
	count(id) as Total_Loan_Applications,
	sum(loan_amount) as Total_Funded_amount,
	sum(total_payment) as Total_Received_Amount
from 
	financial_loan
group by
	emp_length
order by
	Total_Loan_Applications desc;


select 
	purpose,
	count(id) as Total_Loan_Applications,
	sum(loan_amount) as Total_Funded_amount,
	sum(total_payment) as Total_Received_Amount
from 
	financial_loan
group by
	purpose
order by
	Total_Loan_Applications desc;


select 
	home_ownership,
	count(id) as Total_Loan_Applications,
	sum(loan_amount) as Total_Funded_amount,
	sum(total_payment) as Total_Received_Amount
from 
	financial_loan
group by
	home_ownership
order by
	Total_Loan_Applications desc;