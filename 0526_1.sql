SELECT * FROM employees;

SELECT employee_id, email FROM employees;

SELECT employee_id, first_name, last_name FROM employees ORDER BY employee_id DESC;

SELECT DISTINCT job_id FROM employees;

SELECT employee_id as 사원번호, first_name as 이름, last_name as 성 FROM employees;

SELECT employee_id, first_name || last_name FROM employees;

SELECT employee_id, first_name ||' '|| last_name, email||'@company.com' FROM employees;

SELECT employee_id, salary+500, salary-100, (salary*1.1)/2 FROM employees;

SELECT employee_id as 사원번호, salary+500 as 추가급여, salary-100 as 인하급여, (salary*1.1)/2 as 조정급여 FROM employees;

SELECT * FROM employees WHERE employee_id = 100;

SELECT * FROM employees WHERE first_name = 'David';

SELECT * FROM employees WHERE employee_id >= 105;

SELECT * FROM employees WHERE salary BETWEEN 10000 AND 20000 ;

SELECT * FROM employees WHERE salary IN(10000, 17000, 24000);

SELECT * FROM employees WHERE job_id LIKE 'AD%';
