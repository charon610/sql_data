select sal,
    to_char(sal, '$999,999') as sal_$,
    to_char(sal, 'l999,999') as sal_L,
    to_char(sal, '999,999.00') as sal_1,
    to_char(sal, '000999999.99') as sal_2,
    to_char(sal, '999,999,00') as sal_3
from emp;

select * from emp;

select * from emp where hiredate > to_date('1981/06/01', 'YYYY/MM/DD');

-- null을 계산하면 언제나 결과는 null, 그래서 NVL이나 NVL2를 사용
-- NVL
select empno, ename, sal, comm, sal+comm,
    nvl(comm, 0),
    sal+nvl(comm, 0)
from emp;

-- NVL2 활용
select empno, ename, comm,
    nvl2(comm, 'o', 'x'),
    sal+nvl2(comm, sal*12+comm, sal*12) as annsal
from emp;

-- DECODE 함수 (ifelse의 역할을 함)
select empno, ename, job, sal,
    decode(job, 
            'MANAGER', sal*1.1,
            'SALESMAN', sal*1.05,
            'ANALYST', SAL,
            sal*1.03) as UPSAL
from emp;

-- 다중 행
select sal from emp;
select sum(sal) from emp;

select * from emp;

-- emp 테이블의 튜플의 수
select count(*) from emp;
-- 부서 번호가 30인 직원의 수
select count(*) from emp where deptno = 30;
-- 추가 수당의 데이터 수
select count(comm) from emp where comm is not null;
-- 부서번호가 20인 사원의 입사일 중 제일 최근 입사일
select max(to_char(hiredate)) from emp where deptno= 20;

select * from emp order by to_char(hiredate);
select * from emp order by to_number(hiredate);

-- GROUP BY절과 HAVING절
-- WHERE절과 HAVING절의 차이
select deptno, job, avg(sal)
from emp
group by deptno, job
having avg(sal) >= 2000
order by deptno, job;

select deptno, job, avg(sal)
from emp
where sal <= 3000 -- where절을 사용하면 Group보다 우선 처리함
group by deptno, job
having avg(sal) >= 2000
order by deptno, job;

-- PIVOT 함수 사용
select * from(select deptno, job, sal from emp)
pivot(max(sal) for deptno in(10, 20, 30))
order by job;

-- Join
select e.empno, e.ename, d.deptno, d.dname, d.loc
from emp e, dept d
where e.deptno = d.deptno
order by d.deptno, e.empno;

-- 서브 쿼리
-- 서브쿼리로 JONES의 급여보다 높은 급여를 받는 사원 정보 출력
select * from emp where (select sal from emp where ename = 'JONES') < sal;

-- 실무형 쿼리
-- 조인과 서브쿼리를 같이 사용
select e.empno, e.ename, d.deptno, d.dname, d.loc
from emp e, dept d
where e.deptno = d.deptno
    and e.deptno = 20
    and e.sal > (select avg(sal) from emp);