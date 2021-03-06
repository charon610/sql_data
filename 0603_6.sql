COMMIT;

UPDATE departments SET manager_id = 201, department_id = 1800 WHERE department_name = 'Sample_Dept';

UPDATE departments SET (manager_id, location_id) = (SELECT manager_id, location_id FROM departments WHERE department_id = 40)
WHERE department_name = 'Sample_Dept';

UPDATE departments SET department_id = null WHERE department_name = 'Sample_Dept'; -- department_id에는 null이 입력될 수 없기 때문에 오류

-- 일반적인 방법
DELETE FROM departments WHERE department_name = 'Sample Dept';

-- 서브쿼리를 사용하는 방법
DELETE FROM departments WHERE department_id IN (SELECT department_id FROM departments WHERE department_name = 'Sample Dept');

SELECT * FROM departments WHERE department_name = 'Sample Dept';

-- 기본키 제약 조건
INSERT INTO departments values(100, 'Sample_Dept', 200, 1700); -- 100이라는 값이 이미 유일키로 있음

-- 외래키 제약 조건 : 열 값이 부모 테이블의 참조 열의 값을 반드시 참조
-- 111은 부모 테이블의 행에 존재하지 않음
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (273, 'Sample_Dept', 200, 111);

-- 유일키 : 중복은 허락하지 않지만 (null값 허용 가능)
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
VALUES (207, 'first_name', 'last_name', 'SKING', '111.11.11', to_date('030617','YYMMDD'), 'IT_PROG', 6000);

-- NOT NULL : null값을 허용하지 않는다.
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (273, null, 200, 111);

-- CHECK : 범위나 조건 등 지정된 값만 허용
-- 맨끝 값은 0을 초과하는 값만 허용
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
VALUES (209, 'first_name', 'last_name', 'TEST', '111.11.11', to_date('030617','YYMMDD'), 'IT_PROG', 0);

-- 테이블 생성
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

-- 수정할 데이터보다 실제데이터 크기가 큰 경우 에러
ALTER TABLE sample_product MODIFY(product_name varchar(5));

ALTER TABLE sample_product RENAME COLUMN factory TO factory_name;

-- 열 삭제
ALTER TABLE sample_product DROP COLUMN factory_name;

-- 내용만 삭제
TRUNCATE TABLE sample_product;

-- 테이블 삭제
DROP TABLE sample_product;