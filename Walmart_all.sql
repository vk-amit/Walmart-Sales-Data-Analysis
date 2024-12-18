create database walmart;
use walmart;
select * from walmart_table;

select * from walmart;

update walmart set total = round(total, 2);
select count(*) from walmart_table;
rename table walmart_table to walmart;

-- Total number of payment modes and their numbers
select payment_method , count(*) as no_payment
from walmart
group by payment_method;

-- Number of distinct branch

select count(distinct branch) from walmart;

-- minimum quantity sold
select min(quantity) from walmart;

-- Question 1 Payment method numbers
select payment_method , count(*) as no_payment, sum(quantity) as quantity
from walmart
group by payment_method;

-- Question 2 High performing category of each branch
select a.branch , a.category , a.avg_rating 
from (
select branch, category, round(avg(rating), 2) as avg_rating, rank() over(partition by branch order by avg(rating) desc) as ranking 
from walmart 
group by branch , category) as a
where a.ranking = 1;

-- Question 3 
select a.branch , a.day_name , a.no_transactions
from(select branch , dayname(str_to_date(date, '%d/%m/%Y')) as day_name , count(invoice_id) as no_transactions, rank() over(partition by branch order by count(invoice_id) desc) as ranking
from walmart
group by branch , day_name) as a
where a.ranking = 1;

-- Question 4 Total quantity of item sold per payment mode

select payment_method , sum(quantity) as quantitysold
from walmart
group by payment_method;

-- Question 5 Avg, Min , Max rating of categories for each city

select city , category , round(avg(rating), 2) as avg_rating , min(rating) as min_rating , max(rating) as max_rating
from walmart
group by city , category;

-- Question 6 total profit vs each category

select category , round(sum(unit_price*quantity*profit_margin), 2) as profit
from walmart
group by category
order by profit desc;

-- Question 7 Common payment method for each branch
-- with subquery
select a.branch , a.payment_method
from(select branch , payment_method , count(invoice_id) as trans, rank() over(partition by branch order by count(invoice_id) desc) as ranking
from walmart
group by branch, payment_method) as a
where a.ranking = 1;

-- using cte
with cte as(select branch , payment_method , count(invoice_id) as trans, rank() over(partition by branch order by count(invoice_id) desc) as ranking
from walmart
group by branch, payment_method)
select branch , payment_method
from cte
where ranking =1;

-- Question 8 shoping hour
select 
    branch,
    case 
        when hour(time(time)) < 12 then 'morning'
        when hour(time(time)) between 12 and 17 then 'afternoon'
        else 'evening'
    end as shift,
    count(*) as order_count
from walmart
group by branch, shift
order by branch, order_count desc;
