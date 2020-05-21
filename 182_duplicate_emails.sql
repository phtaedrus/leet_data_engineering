#mysql

# Write your MySQL query statement below

SELECT a.email from person a
group by a.email
HAVING COUNT(*) > 1;
