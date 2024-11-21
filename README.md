# One Stop Shop Market Data Analysis
## Problem
One Stop Shop is a store that sells various types of products, operating in three different branches. They recently launched a membership program, offering perks to those who avail said membership program. They want to know if this gimmick would give more engagment and revenue for the store. Alongside this, they also have other questions that they want to be answered.
## Tools Used
This analysis made use of Python with the Pandas library to do some data exploration and data cleaning (if applicable), and MySQL for the actual data analysis to answer the problem statments. <br> <br>
All the code used to gather these insights can be found within this repository.
## Question 1
### Who purchased more products in each product line? Males or females?
![product line sales by gender](https://github.com/user-attachments/assets/d269b8ce-07d7-4974-859f-f5cbed4042d7)
## Question 2
### Which branch sold the most items?
![sales by branch](https://github.com/user-attachments/assets/5b27a21b-48f8-4569-8741-eab9ffdb394b)

These are the counts of sales per branch, with A having the most sales.
## Question 3
### Which branch made the most revenue on average?
![average revenue by branch](https://github.com/user-attachments/assets/22dc20f6-5b8d-423b-a36b-778d10048262)

However, even though A sold the most items by count, C actually made the most average revenue with A actually being the last.
## Question 4
### Which product line sold the most?
![total sales by product line](https://github.com/user-attachments/assets/b7679c39-16c3-4b2d-8d85-40ff9b75fd53)
## Question 5
### One Stop Shop wants to know if their membership gimmick is actually making a difference on the performance of their stores. Determine the total revenue generated by members vs. non-members.
We can first check the counts of each customer types just for reference <br> <br>
![transations by customer type](https://github.com/user-attachments/assets/e9bc814a-54db-4fa9-849c-da3ff57777f2)

We can see that the count of members are just 2 more than the normal customers. <br> <br>
Now that we have an idea of how many members vs non-members are there, we can now see the total revenue for each. <br> <br>
![total revenue by customer type](https://github.com/user-attachments/assets/b5c054fb-9c7a-494b-a19e-d7143439fde1)
# Conclusion
Now, what can we conclude from the analysis conducted? <br> <br>
To answer the main question, yes, the membership gimmick definitely generated more profit based on this specific data provided. Other insights that were found are: <br> <br>
* There isn't really much difference between the sales on male and female customers. The most was on ***Health and beauty*** product line with a difference of 24
* Branch A located in Yangon City has the most customers, but only by about 3.04% compared to other branches
* Branch C generated the most average revenue at 321.05
* The top 3 **Product lines** that garnered the most sales were ***Fasion accessories, Food and beverages, and Electronic accessories***
# Credits
Credit goes to [this Kaggle repository](https://www.kaggle.com/datasets/willianoliveiragibin/market-sales-data/data) for providing the dataset utilized in this analysis. <br> <br>
*Please note that the company name used in this analysis was only a ficticious one. Any resemblance to real-life places and/or names are only coincidences.*
