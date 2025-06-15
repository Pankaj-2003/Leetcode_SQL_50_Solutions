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

-- q10 
SELECT 
    machine_id,
    round(AVG(duration),3) AS processing_time 
FROM (
    SELECT 
        machine_id,
        process_id,
        (end_time - start_time) AS duration
    FROM (
        SELECT 
            machine_id,
            process_id,
            MAX(CASE WHEN activity_type = 'start' THEN timestamp END) AS start_time,
            MAX(CASE WHEN activity_type = 'end' THEN timestamp END) AS end_time
        FROM Activity
        GROUP BY machine_id, process_id
    ) t1
) t2
GROUP BY machine_id;


-- q11
select name , bonus from Employee left join Bonus on Employee.empId = Bonus.empId where bonus < 1000 or bonus is null;

-- q12

select Students.student_id , Students.student_name , Subjects.subject_name , count(Examinations.subject_name) as attended_exams  from Students cross join Subjects left join Examinations on Examinations.student_id = Students.student_id and Examinations.subject_name = Subjects.subject_name group by student_id , student_name , subject_name order by Students.student_id , Subjects.subject_name

-- q13
select name from Employee where id in (select managerID from employee group by managerId having count(ManagerId)>=5)


-- q14
select user_id , round(sum(con_count)/count(user_id),2) as confirmation_rate from (select Signups.user_id,
case when action = 'confirmed' then 1
else 0
end as con_count
from Signups left join Confirmations on Signups.user_id = Confirmations.user_id) as sub_table group by user_id;

