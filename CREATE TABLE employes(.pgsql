CREATE TABLE
    employes (
        emp_id SERIAL PRIMARY KEY,
        fname VARCHAR(20) NOT NULL,
        iname VARCHAR(20) NOT NULL,
        email VARCHAR(30) NOT NULL,
        dept VARCHAR(20) NOT NULL,
        salary INT NOT NULL,
        hire_date date NOT NULL
    )

    
ALTER TABLE employes
ALTER COLUMN hire_date
TYPE DATE USING hire_date::DATE;

ALTER TABLE employes
RENAME COLUMN iname TO lname;

SELECT
    *
from
    employes;

INSERT INTO
    employes (fname, lname, email, dept, salary, hire_date)
VALUES
    (
        'Rahul',
        'Sharma',
        'rahul.sharma@gmail.com',
        'QA',
        45000,
        '2024-01-15'
    ),
    (
        'Anita',
        'Patel',
        'anita.patel@gmail.com',
        'HR',
        50000,
        '2023-08-10'
    ),
    (
        'Vijay',
        'Kumar',
        'vijay.kumar@gmail.com',
        'IT',
        65000,
        '2022-12-20'
    ),
    (
        'Sneha',
        'Rao',
        'sneha.rao@gmail.com',
        'QA',
        55000,
        '2024-03-01'
    ),
    (
        'Amit',
        'Singh',
        'amit.singh@gmail.com',
        'Finance',
        70000,
        '2021-07-25'
    ),
    (
        'Priya',
        'Nair',
        'priya.nair@gmail.com',
        'HR',
        48000,
        '2023-11-18'
    ),
    (
        'Rohan',
        'Verma',
        'rohan.verma@gmail.com',
        'IT',
        62000,
        '2022-05-14'
    ),
    (
        'Neha',
        'Gupta',
        'neha.gupta@gmail.com',
        'QA',
        53000,
        '2024-02-11'
    ),
    (
        'Kiran',
        'Shetty',
        'kiran.shetty@gmail.com',
        'Support',
        42000,
        '2023-04-19'
    ),
    (
        'Pooja',
        'Joshi',
        'pooja.joshi@gmail.com',
        'Finance',
        68000,
        '2021-09-30'
    ),
    (
        'Arjun',
        'Reddy',
        'arjun.reddy@gmail.com',
        'IT',
        75000,
        '2020-06-12'
    ),
    (
        'Meera',
        'Iyer',
        'meera.iyer@gmail.com',
        'QA',
        57000,
        '2024-05-09'
    ),
    (
        'Sanjay',
        'Das',
        'sanjay.das@gmail.com',
        'Support',
        41000,
        '2023-01-27'
    ),
    (
        'Divya',
        'Menon',
        'divya.menon@gmail.com',
        'HR',
        51000,
        '2022-08-08'
    ),
    (
        'Nikhil',
        'Jain',
        'nikhil.jain@gmail.com',
        'Finance',
        72000,
        '2021-12-16'
    ),
    (
        'Kavya',
        'Bhat',
        'kavya.bhat@gmail.com',
        'QA',
        56000,
        '2024-04-21'
    ),
    (
        'Manoj',
        'Kulkarni',
        'manoj.k@gmail.com',
        'IT',
        80000,
        '2020-10-05'
    ),
    (
        'Asha',
        'Naik',
        'asha.naik@gmail.com',
        'Support',
        43000,
        '2023-07-13'
    ),
    (
        'Deepak',
        'Mishra',
        'deepak.mishra@gmail.com',
        'Finance',
        69000,
        '2022-09-17'
    ),
    (
        'Swathi',
        'Hegde',
        'swathi.hegde@gmail.com',
        'QA',
        54000,
        '2024-06-01'
    );



SELECT * FROM employes;


SELECT dept,count(*)
from employes
group by dept;


SELECT * from employes
WHERE salary > (
    SELECT avg(salary) from employes
);