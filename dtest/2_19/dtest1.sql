select dname, 'All Jobs' as JOB, COUNT(*) as emp_cnt, sum(sal) as SAL_SUM
from emp a, dept b
where b.deptno = a.deptno
group by dname

union all
select 'All Departments' as dname, job, count(*) as emp_cnt, sum(sal) as SAL_SUM
from emp a, dept b
where b.deptno = a.deptno
GROUP by job;

SELECT case grouping(b.dname) when 1 then ' All Departments' else b.dname end as dname
        , case grouping(a.job) when 1 then ' All Jobs' else a.job end as job
        , COUNT(*) as EMP_CNT, sum(a.sal) as SAL_SUM
FROM emp a, dept b
where b.deptno = a.deptno
group by grouping sets(b.dname, a.job)
order by b.dname, a.job;

SELECT b.dname, a.job, a.mgr, COUNT(*) as EMP_CNT, sum(a.sal) as SAL_SUM  
FROM emp a, dept b
where b.deptno = a.deptno
group by grouping sets((b.dname, a.job, a.mgr), (b.dname, a.job), (a.job, a.mgr));

select job, ename, sal
    , rank() over (order by sal desc) as ALL_RK
    , rank() over (PARTITION BY job order by sal desc) as ALL_RK
    from emp;
    
select job, ename, sal
    , rank() over (PARTITION BY job order by sal desc) as JOB_RK
    from emp;
    
select job, ename, sal
    , rank() over (order by sal desc) as RK
    , DENSE_RANK() over (order by sal desc) as DR
    from emp;

select job, ename, sal
    , rank() over (order by sal desc) as RK
    , row_number() over (order by sal desc) as RN
    from emp;