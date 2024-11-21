# Q1: Who purchased more products in each product line? Males or females?

with males as ( # cte to get the count of purchases by males
	select
		product_line,
		gender,
		count(*) as count_m
	from market_sales_data msd 
	where gender = "Male"
	group by product_line, gender
),

females as ( # cte to get the count of purchases by females
	select
		product_line,
		gender,
		count(*) as count_f
	from market_sales_data msd 
	where gender = "Female"
	group by product_line, gender
)

select
	m.product_line,
	
	# determining the gender of whichever has greater count
	case 
		when count_m > count_f then m.gender
		when count_f > count_m then f.gender
	end as gender,
	
	# determining the purchase count of whichever is greater
	case 
		when count_m > count_f then count_m
		when count_f > count_m then count_f
	end as purchase_count
from males m
join females f
on m.product_line = f.product_line;

# We can also display it side-by-side so that both male and female counts are visible

with males as ( # cte to get the count of purchases by males
	select
		product_line,
		gender,
		count(*) as count_m
	from market_sales_data msd 
	where gender = "Male"
	group by product_line, gender
),

females as ( # cte to get the count of purchases by females
	select
		product_line,
		gender,
		count(*) as count_f
	from market_sales_data msd 
	where gender = "Female"
	group by product_line, gender
)

select
	m.product_line,
	count_m as male,
	count_f as female
from males m
join females f
on m.product_line = f.product_line;

# Q2: Which branch sold the most items?

select 
	branch,
	count(*) as sales_count
from market_sales_data msd 
group by branch 
order by sales_count desc;

# Q3: Which brand made the most revenue on average?

select 
	branch,
	round(avg(unit_price * quantity), 2) as average_revenue # results rounded by 2 for cleaner presentation
from market_sales_data msd 
group by branch
order by average_revenue desc;

# Q4: How many transactions were made by members vs. non-members?

select 
	customer_type,
	count(*) as transactions_count
from market_sales_data msd 
group by customer_type;

# Q5: The store owner wants to know if their membership gimmick is actually making a difference on the performance of their stores. 
# 	  Determine the total revenue generated by members vs. non-members.

select 
	customer_type,
	round(sum(unit_price * quantity), 2) as total_revenue
from market_sales_data msd 
group by customer_type;