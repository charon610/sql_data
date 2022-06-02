SELECT * FROM employees;

SELECT employee_id, email FROM employees;

SELECT employee_id, first_name, last_name FROM employees ORDER BY employee_id DESC;

SELECT DISTINCT job_id FROM employees;

SELECT employee_id as �����ȣ, first_name as �̸�, last_name as �� FROM employees;

SELECT employee_id, first_name || last_name FROM employees;
                      
SELECT employee_id, first_name ||' '|| last_name, email||'@company.com' FROM employees;

SELECT employee_id, salary+500, salary-100, (salary*1.1)/2 FROM employees;

SELECT employee_id as �����ȣ, salary+500 as �߰��޿�, salary-100 as ���ϱ޿�, (salary*1.1)/2 as �����޿� FROM employees;

SELECT * FROM employees WHERE employee_id = 100;

SELECT * FROM employees WHERE first_name = 'David';

SELECT * FROM employees WHERE employee_id >= 105;

SELECT * FROM employees WHERE salary BETWEEN 10000 AND 20000 ;

SELECT * FROM employees WHERE salary IN(10000, 17000, 24000);

SELECT * FROM employees WHERE job_id LIKE 'AD%';

--job_id���� AD���� 3����
SELECT * FROM employees WHERE job_id LIKE 'AD___';

SELECT * FROM employees WHERE manager_id IS null;

SELECT * FROM employees WHERE salary > 400 AND job_id = 'IT_PROG'; 

SELECT * FROM employees WHERE salary > 400 AND job_id = 'IT_PROG' OR job_id = 'FI_ACCOUNT'; 

SELECT * FROM employees WHERE employee_id <> 105;

SELECT * FROM employees WHERE manager_id IS NOT null;

SELECT LOWER(last_name), UPPER(last_name), email, INITCAP(email) FROM employees;

SELECT job_id, SUBSTR(job_id, 1, 2) FROM employees;

SELECT job_id, REPLACE(job_id,'ACCOUNT','ACCNT') FROM employees;

SELECT first_name, LPAD(first_name, 12, '*') FROM employees;

SELECT 'start'||TRIM(' - space - ')||'end' ���ŵ�_���� FROM dual;

SELECT salary/30, TRUNC(salary/30,1) �Ҽ���_ù°�ڸ�, TRUNC(salary/30,2) �Ҽ���_��°�ڸ�, TRUNC(salary/30,-1)��������  FROM employees;



SELECT * FROM employees ORDER BY commission_pct;

SELECT salary * commission_pct FROM employees ORDER BY commission_pct;

SELECT salary * NVL(commission_pct,1)commission_pct FROM employees ORDER BY commission_pct;

SELECT first_name, last_name, department_id, salary, DECODE(department_id, 60, salary*1.1, salary) �޿�����,  DECODE(department_id, 60, '10% �λ�', '�� �λ�') �λ󿩺� FROM employees;

SELECT first_name, last_name, salary, CASE
                                        WHEN salary >= 9000 THEN '�����޿�'
                                        WHEN salary BETWEEN 6000 AND 8999 THEN '�����޿�'
                                        ELSE '�����޿�'
                                    END AS �޿����
FROM employees
WHERE job_id = 'IT_PROG';

SELECT employee_id, salary, 
        RANK() OVER(ORDER BY salary DESC) RANK_�޿�,
        DENSE_RANK() OVER(ORDER BY salary DESC) DENSE_RANK_�޿�,
        ROW_NUMBER() OVER(ORDER BY salary DESC) ROW_NUMBER_�޿�
FROM employees;


SELECT
    A.employee_id,
    A.department_id,
    B.department_name,
    salary,
    RANK() OVER(PARTITION BY A.department_id ORDER BY salary DESC) RANK_�޿�,
    DENSE_RANK() OVER(PARTITION BY A.department_id ORDER BY salary DESC) DENSE_RANK_�޿�,
    ROW_NUMBER() OVER(PARTITION BY A.department_id ORDER BY salary DESC) ROW_NUMBER_�޿�
FROM employees A, departments B
WHERE A.department_id = B.department_id
ORDER BY B.department_id, A.salary DESC;
