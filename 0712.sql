SELECT * FROM emp;

SELECT * FROM dept;

SELECT empno, ename, deptno FROM emp;

-- 부서코드 종류만 조회
SELECT distinct deptno FROM emp;
--> 실제 부서코드 종류의 수와 사원에 배정된 부서코드의 수가 다를 수 있음

-- 사원의 연봉을 계산
SELECT ename, sal, sal+sal+sal+sal+sal+sal+sal+sal+sal+sal+sal+sal+comm from emp;
SELECT ename, sal, sal*12 + comm as 연수입, comm from emp;
--> null에 어떠한 값을 계산해도 그 결과는 null이 된다.

-- 급여 기준으로 내림차순 정렬
SELECT * FROM emp order by sal desc;

-- emp 테이블의 전체 열을 부서번호(오름차순)와 급여(내림차순)로 정렬
SELECT * FROM emp order by deptno asc, sal desc;
SELECT * FROM emp order by deptno asc, sal desc;

-- 부서 번호가 30인 직원들만 출력
select * from emp where deptno = 30;

-- 사원번호가 7900인 직원들만 출력
select * from emp where empno = 7900;

-- 부서번호가 30이면서 job이 CLERK인 직원
select * from emp where deptno = 30 and job ='CLERK';

-- 급여 열에 12를 곱한 값이 36000인 직원들만 출력
select * from emp where sal*12 = 36000;

-- ename이 f보다 작거나 같은 사람을 출력
select * from emp where ename <= 'F';

-- * 등가 비교 연산자의 종류
-- 같다 : =
-- 같지 않다 : !=, <>, ^= // 논리 부정 NOT

SELECT * FROM emp where sal != 3000;
SELECT * FROM emp where sal <> 3000;
SELECT * FROM emp where sal ^= 3000;
SELECT * FROM emp where not sal = 3000;

-- 다음의 코드를 짧게 줄여서 표시
SELECT * FROM emp where job = 'MANAGER' or job = 'SALESMAN' or job = 'CLERK';
SELECT * FROM emp where job in('MANAGER', 'SALESMAN', 'CLERK');

-- 다음의 코드를 짧게 줄여서 표시
-- 급여 값이 2000이상 3000이하 조회
SELECT * FROM emp where sal >= 2000 and sal <= 3000;
SELECT * FROM emp where sal between 2000 and 3000;

-- ename이 S로 시작하는 데이터만 출력
SELECT * FROM emp where ename like 'S%';
-- ename의 두번째 글자가 L인 데이터만 출력
SELECT * FROM emp where ename like '_L%';

-- 사원 이름에 AM이 포함된 사원 데이터만 출력
SELECT * FROM emp where ename like '%AM%';

-- Null에 대한 오류 해결

SELECT * FROM emp where comm is null;

-- UNION (집합연산자) // 중복제거
-- UNION ALL  // 중복
-- MINUS
-- INTERSECT
select empno, ename, sal, deptno from emp where deptno = 10
union
select empno, ename, sal, deptno from emp where deptno = 20;

-- 사원이름을 대문자, 소문자, 첫글자만 대문자로 출력
SELECT ename, upper(ename), lower(ename), INITCAP(ename) FROM emp;

-- 사원 이름에 SCOTT 단어가 같은 데이터 출력
SELECT * FROM emp where upper(ename) = upper('SCOTT');
-- 사원 이름에 SCOTT 단어가 포함된 데이터 출력
SELECT * FROM emp where upper(ename) like upper('%SCOTT%');


select ename from emp where length(ename)>=5;