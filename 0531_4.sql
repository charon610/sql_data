SELECT * FROM employees;

SELECT COUNT(salary) FROM employees;

SELECT SUM(salary) 합계, AVG(salary) 평균, SUM(salary) / COUNT(salary)계산된_평균 FROM employees;

SELECT MAX(salary)최댓값, MIN(salary) 최솟값, MAX(first_name) 최대문자값, MIN(first_name) 최소문자값 FROM employees;

SELECT job_id 직무, SUM(salary) 직무별_총급여, AVG(salary) 급여_평균 FROM employees
WHERE employee_id >= 10 GROUP BY job_id ORDER BY 직무별_총급여 DESC, 급여_평균;

SELECT job_id job_id_대그룹, manager_id manager_id_중그룹, SUM(salary) 그룹핑_총급여, AVG(salary) 그룹핑_평균급여 FROM employees
WHERE employee_id >= 10
GROUP BY job_id, manager_id
ORDER BY 그룹핑_총급여 DESC, 그룹핑_평균급여;

SELECT job_id 직무, SUM(salary) 직무별_총급여, AVG(salary) 급여_평균 FROM employees
WHERE employee_id >= 10 GROUP BY job_id HAVING SUM(salary) > 30000 ORDER BY 직무별_총급여 DESC, 급여_평균;

SELECT a.first_name, a.last_name, B.* FROM employees A, job_history B
WHERE a.employee_id = b.employee_id
AND a.employee_id = 101;

SELECT * FROM employees A, departments B WHERE a.department_id = b.department_id;

SELECT a.employee_id, a.department_id, b.department_id, c.location_id, c.city FROM employees A, departments B, locations C 
WHERE a.department_id = b.department_id AND b.location_id = c.location_id;

SELECT COUNT(*)조인된건수 FROM employees A, departments B WHERE a.department_id = b.department_id;

SELECT a.department_id, a.first_name, a.last_name, b.department_id, b.department_name  FROM employees A, departments B 
WHERE a.department_id(+) = b.department_id ORDER BY a.employee_id;

SELECT a.employee_id, a.first_name, a.last_name, b.department_id, b.department_name  FROM employees A, departments B 
WHERE a.department_id(+) = b.department_id ORDER BY a.employee_id;

SELECT COUNT(a.department_id), count(b.department_id) FROM employees A, departments B WHERE a.department_id(+) = b.department_id;

