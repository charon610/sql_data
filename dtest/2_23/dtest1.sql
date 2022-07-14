select * 
FROM (select job, deptno, sal from emp)
PIVOT(SUM(sal) for deptno in (10,20,30))
ORDER BY 1;

select *
from(select to_char(hiredate, 'yyyy') as yyyy, job, deptno, sal from emp)
PIVOT(sum(sal) for deptno in(10,20,30))
ORDER BY 1,2;

select *
from(select job, deptno, sal from emp)
PIVOT(sum(sal) as sal for deptno in(10 as D10,20 as D20,30 as D30))
ORDER BY 1;

select job, D20_sal
from(select job, deptno, sal from emp)
PIVOT(sum(sal) as sal for deptno in(10 as D10,20 as D20,30 as D30))
where d20_sal > 2500
ORDER BY 1;

select * 
FROM (select job, deptno, sal from emp)
PIVOT(SUM(sal) as SAL, count(*) as CNT for deptno in (10 as D10,20 as D20))
ORDER BY 1;

select *
from(select to_char(hiredate, 'yyyy') as yyyy, job, deptno, sal from emp)
PIVOT(SUM(sal) as SAL, count(*) as CNT 
for (deptno, job) in ((10, 'ANALYST') as D10A, (10, 'CLERK') as D10C
                    ,(20, 'ANALYST') as D20A, (20, 'CLERK') as D20C))
ORDER BY 1;

select job 
    , sum(case deptno when 10 then sal end) as D10_SAL
    , sum(case deptno when 20 then sal end) as D20_SAL
    , sum(case deptno when 30 then sal end) as D30_SAL
from emp
group by job
order by job;

