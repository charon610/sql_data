COMMIT;

UPDATE departments SET manager_id = 201, department_id = 1800 WHERE department_name = 'Sample_Dept';

UPDATE departments SET (manager_id, location_id) = (SELECT manager_id, location_id FROM departments WHERE department_id = 40)
WHERE department_name = 'Sample_Dept';

UPDATE departments SET department_id = null WHERE department_name = 'Sample_Dept'; -- department_id���� null�� �Էµ� �� ���� ������ ����

-- �Ϲ����� ���
DELETE FROM departments WHERE department_name = 'Sample Dept';

-- ���������� ����ϴ� ���
DELETE FROM departments WHERE department_id IN (SELECT department_id FROM departments WHERE department_name = 'Sample Dept');

SELECT * FROM departments WHERE department_name = 'Sample Dept';

-- �⺻Ű ���� ����
INSERT INTO departments values(100, 'Sample_Dept', 200, 1700); -- 100�̶�� ���� �̹� ����Ű�� ����

-- �ܷ�Ű ���� ���� : �� ���� �θ� ���̺��� ���� ���� ���� �ݵ�� ����
-- 111�� �θ� ���̺��� �࿡ �������� ����
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (273, 'Sample_Dept', 200, 111);

-- ����Ű : �ߺ��� ������� ������ (null�� ��� ����)
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
VALUES (207, 'first_name', 'last_name', 'SKING', '111.11.11', to_date('030617','YYMMDD'), 'IT_PROG', 6000);

-- NOT NULL : null���� ������� �ʴ´�.
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (273, null, 200, 111);

-- CHECK : ������ ���� �� ������ ���� ���
-- �ǳ� ���� 0�� �ʰ��ϴ� ���� ���
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
VALUES (209, 'first_name', 'last_name', 'TEST', '111.11.11', to_date('030617','YYMMDD'), 'IT_PROG', 0);

-- ���̺� ����
CREATE TABLE sample_product
            (product_id NUMBER,
             product_name VARCHAR2(30),
             menu_date date);
            
INSERT INTO sample_product VALUES(1, 'television', TO_DATE('140101','YYMMDD'));
INSERT INTO sample_product VALUES(2, 'washer', TO_DATE('150101','YYMMDD'));
INSERT INTO sample_product VALUES(3, 'cleaner', TO_DATE('160101','YYMMDD'));

SELECT
    *
FROM sample_product;

ALTER TABLE sample_product ADD(factory varchar(10));


ALTER TABLE sample_product MODIFY(factory char(8));

-- ������ �����ͺ��� ���������� ũ�Ⱑ ū ��� ����
ALTER TABLE sample_product MODIFY(product_name varchar(5));

ALTER TABLE sample_product RENAME COLUMN factory TO factory_name;

-- �� ����
ALTER TABLE sample_product DROP COLUMN factory_name;

-- ���븸 ����
TRUNCATE TABLE sample_product;

-- ���̺� ����
DROP TABLE sample_product;