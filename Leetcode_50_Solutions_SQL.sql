-- q1 
select product_id from Products where low_fats = "Y" and recyclable = "Y";

-- q2
select name from Customer where referee_id != "2" or referee_id is null;

-- q3 
select name , population , area from World where area >= "3000000" or population >= "25000000";

-- q4 
select distinct author_id as id from Views where author_id = viewer_id order by id;

-- q5
select tweet_id from Tweets where length(content) > 15;

-- q6

SELECT unique_id, name FROM Employees LEFT JOIN EmployeeUNI ON Employees.id = EmployeeUNI.id;

-- q7 

select product_name , year, price from Sales join Product on Sales.product_id = Product.product_id;


-- q8 
SELECT customer_id  , count(*) as count_no_trans
FROM Visits
LEFT JOIN Transactions ON Visits.visit_id = Transactions.visit_id where transaction_id is null group by customer_id;


-- q9 
SELECT w1.id FROM Weather w1 JOIN Weather w2 ON DATEDIFF(w1.recordDate, w2.recordDate) = 1 WHERE w1.temperature > w2.temperature;