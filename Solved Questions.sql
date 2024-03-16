select * from telecom_customer_churn

#1. How many unique customers are there in the dataset?
select Count( Distinct Customer_ID) from telecom_customer_churn;

#2. What is the average age of the customers?
select avg(Age) as avg_age from telecom_customer_churn;

#3. How many customers are married and how many are not?
-- select Married,
--   case when Married = 'Yes' then count(Married) 
-- 			when Married = 'No' then count(Married) 
--             else NULL
--             End AS Count
--           from telecom_customer_churn
--           group by Married

#4. What is the distribution of customers by gender?
-- SELECT Gender, COUNT(Customer_ID) AS Total_Customers
-- FROM telecom_customer_churn
-- GROUP BY Gender;

#5. What is the average tenure of the customers?
-- select avg(Tenure_in_Months) as Avg_Tenure from telecom_customer_churn

#6. Which city has the highest number of customers?
-- select city, count(Customer_ID) as count from telecom_customer_churn
-- group by city
-- order by count desc Limit 1

#7. What is the average monthly charge for all customers?
#select Round(avg(`Avg_Monthly_Long_Distance_Charges`),2) as Avg_Charges from telecom_customer_churn

#8. How many customers have churned, and what is the churn rate?
-- select count(Customer_ID) as total_customer, 
-- sum(case when Customer_Status = 'Churned' then 1 else 0 end) as churned_cust_count,
-- avg(case when Customer_Status = 'Churned' then 1 else 0 end)*100 as perc_churned
-- from telecom_customer_churn

#9. What is the average total charges for customers who have stayed vs churned?
-- SELECT 
--     Customer_Status,
--     ROUND(AVG(Total_Charges),2) AS average_total_charges
-- FROM telecom_customer_churn
-- where Customer_Status <>'Joined'
-- GROUP BY Customer_Status;


#10. What is the most common offer type?
-- select Offer, count(Offer) as offer_count from telecom_customer_churn
-- where Offer <> 'None'
-- group by Offer
-- order by offer_count desc
-- limit 1;

#11. How many customers have paperless billing, and what is the percentage?
-- select 
-- sum(case when Paperless_Billing = "Yes" then 1 else 0 end) as count_paperless,
-- avg(case when Paperless_Billing = "Yes" then 1 else 0 end)*100 as percentage  
-- from telecom_customer_churn 
-- GROUP BY Paperless_Billing
--  
-- Different Approach
--  
-- SELECT 
--     Paperless_Billing,
--     COUNT(Customer_ID) AS count,
--     COUNT(Customer_ID) * 100.0 / (SELECT COUNT(Customer_ID) FROM telecom_customer_churn) AS percentage
-- FROM telecom_customer_churn
-- GROUP BY Paperless_Billing;


#12. What is the distribution of customers by payment method?
-- select count(Customer_ID) as total_customer, Payment_Method 
-- from telecom_customer_churn
-- group by Payment_Method
-- order by total_customer desc;

#13. What is the average number of referrals made by customers?
-- select avg(Number_of_Referrals) as avg_referrals from telecom_customer_churn

#14. What is the average number of dependents for customers?
-- select avg(Number_of_Dependents)*100 from telecom_customer_churn

-- 15. What is the average total revenue generated from each customer?
-- select round(avg(Total_Revenue)*100,2) from telecom_customer_churn


-- 16. How many customers have multiple lines, and what is the percentage?
-- select sum(case when Multiple_Lines = "Yes" then 1 else 0 end) as count_lines,
-- (sum(case when Multiple_Lines = "Yes" then 1 else 0 end)*100/ count(*)) as percentage  
-- from telecom_customer_churn 


-- 17. What is the average monthly long distance charges for all customers?
-- select round(avg(Avg_Monthly_Long_Distance_Charges)*100,2) from telecom_customer_churn

-- 18. What is the distribution of customers by internet service type?
-- select Internet_Service,count(Internet_Service) as internet_service 
-- from telecom_customer_churn
-- where Internet_Service = 'No'
-- group by Internet_Service


-- 19. What is the average number of months customers have been with the company?
-- select round(avg(Tenure_in_Months),2) as avg_months from telecom_customer_churn

-- 20. What are the top 5 reasons for churn among customers?
-- select Churn_Reason, count(Customer_ID) as count_cust from telecom_customer_churn
-- where Churn_Reason IS NOT NULL AND Churn_Reason <> ''
-- group by Churn_Reason limit 5;


 

	






















