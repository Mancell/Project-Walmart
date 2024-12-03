
/*select * from walmart*/

-- Business Problems
--Q.1 Find different payment method and number of transactions, number of qty sold

/*SELECT 
	 payment_method,
	 COUNT(*) as no_payments,
	 SUM(quantity) as no_qty_sold
FROM walmart
GROUP BY payment_method
*/


-- Project Question #2
-- Identify the highest-rated category in each branch, displaying the branch, category
-- AVG RATING
/*
SELECT * 
FROM
(	SELECT 
		branch,
		category,
		AVG(rating) as avg_rating,
		RANK() OVER(PARTITION BY branch ORDER BY AVG(rating) DESC) as rank
	FROM walmart
	GROUP BY 1, 2
)
WHERE rank = 1
*/

-- Q.3 Identify the busiest day for each branch based on the number of transactions
/*
SELECT * 
FROM
	(SELECT 
		branch,
		TO_CHAR(TO_DATE(date, 'DD/MM/YY'), 'Day') as day_name,
		COUNT(*) as no_transactions,
		RANK() OVER(PARTITION BY branch ORDER BY COUNT(*) DESC) as rank
	FROM walmart
	GROUP BY 1, 2
	)
WHERE rank = 1
*/

