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

