
/*select * from walmart*/

-- Business Problems
--Q.1 Find different payment method and number of transactions, number of qty sold

SELECT 
	 payment_method,
	 COUNT(*) as no_payments,
	 SUM(quantity) as no_qty_sold
FROM walmart
GROUP BY payment_method