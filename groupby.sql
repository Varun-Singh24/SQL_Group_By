SELECT first_name , count(first_name) 
FROM people 
GROUP BY 
first_name ; 

SELECT state_code , count(state_code) 
FROM people 
GROUP BY 
state_code ; 

SELECT state_code , quiz_points, count(quiz_points) 
From people 
Group By 
state_code ;


SELECT state_code , quiz_points, count(quiz_points) 
From people 
Group By 
state_code , quiz_points ; 

 
