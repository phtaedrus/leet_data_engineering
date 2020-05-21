-- I wanted to use a couple different implementations to find a natural fit. 
-- Using t0 and t1 as temp tables seems less readable than using 'a' and 'b', however, 'a' and 'b' 
-- could easily be conflicting naming conventions if variables or keywords start with them. 

/*
SELECT t0.Name as Employee 
    FROM 
        Employee t0,
        Employee t1
    WHERE 
        t0.ManagerId=t1.Id
        and
        t0.Salary > t1.Salary;
*/


SELECT t0.Name Employee FROM Employee as t0
    JOIN Employee t1 on t0.ManagerId=t1.Id
    AND
    t0.Salary > t1.Salary;


SELECT a.Name Employee FROM Employee as a
    JOIN Employee a on a.ManagerId=b.Id
    AND
    a.Salary > b.Salary;
