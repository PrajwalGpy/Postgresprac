SELECT
    *
FROM
    employes;

SELECT
    CoNCAT_WS(':', fname, lname, dept)
from
    employes;

SELECT
    CONCAT_WS(' ', fname, concat_ws(':', lname, dept, salary))
FROM
    employes;

SELECT
    concat_ws(':', emp_id, fname, upper(dept))
FROM
    employes;

SELECT
    concat_ws(' ', concat(left(dept, 1), emp_id), fname)
from
    employes;

SELECT
    *
from
    employes
WHERE
    lname LIKE '_a_%';

SELECT
    dept,
    sum(salary)
from
    employes
GROUP by
    dept;

SELECT
    *
from
    employes
WHERE
    lname like '____';

SELECT
    *
from
    employes
WHERE
    length(lname) = 4;


with employee_salary as(
    SELECT
    *,
    CASE
        WHEN salary >= (
            SELECT
                avg(salary)
            FROM
                employes
        ) THEN 'H S'
        ELSE 'L S'
    END As salary_status
FROM
    employes
)
SELECT * from employee_salary
WHERE  salary_status = 'H S';

SELECT * FROM(
    SELECT *,CASE
    WHEN salary >=(SELECT avg(salary) FROM employes) THEN 'High Salary'
    ELSE 'Low Salary'
    END as salary_status
    from employes
)
WHERE salary_status = 'High Salary'