SELECT team_id as 팀코드, player_name as 선수명, position as 포지션, back_no as 백넘버, height as 키
FROM player a
where team_id = 'K02'
intersect
select team_id as 팀코드, player_name as 선수명, position as 포지션, back_no as 백넘버, height as 키
from player a
where position = 'GK'
ORDER BY 1,2,3,4,5;

select b.dname, a.job, count(*) as emp_cnt, sum(a.sal) as sal_sum
from emp a, dept b
where b.deptno = a.deptno
group by b.dname, a.job;

select b.dname, a.job, count(*) as emp_cnt, sum(a.sal) as sal_sum
from emp a, dept b
where b.deptno = a.deptno
group by b.dname, a.job
order by b.dname, a.job;

select b.dname, a.job, count(*) as emp_cnt, sum(a.sal) as sal_sum
from emp a, dept b
where b.deptno = a.deptno
group by rollup(b.dname, a.job);

select b.dname, a.job, count(*) as emp_cnt, sum(a.sal) as sal_sum
from emp a, dept b
where b.deptno = a.deptno
group by rollup(b.dname, a.job)
ORDER BY b.dname, a.job;

select b.dname, GROUPING(b.dname) as DNAME_GRP
    , a.job, GROUPING(a.job) as JOB_GRP
    , count(*) as emp_cnt, sum(a.sal) as SAL_SUM
from emp a, dept b
where b.deptno = a.deptno
group by rollup(b.dname, a.job)
ORDER BY b.dname, a.job;

select case GROUPING(b.dname) when 1 then 'All Departments' else b.dname end as dname
    , case GROUPING(a.job) when 1 then 'All Jobs' else a.job end as JOB
    , count(*) as emp_cnt, sum(a.sal) as SAL_SUM
from emp a, dept b
where b.deptno = a.deptno
group by rollup(b.dname, a.job)
ORDER BY b.dname, a.job;

select case GROUPING(b.dname) when 1 then 'All Departments' else b.dname end as dname
    , case GROUPING(a.job) when 1 then 'All Jobs' else a.job end as JOB
    , count(*) as emp_cnt, sum(a.sal) as SAL_SUM
from emp a, dept b
where b.deptno = a.deptno
group by b.dname, rollup(a.job)
ORDER BY b.dname, a.job;

select b.dname, a.job, a.mgr
    , count(*) as emp_cnt, sum(a.sal) as SAL_SUM
from emp a, dept b
where b.deptno = a.deptno
group by rollup(b.dname, (a.job, a.mgr))
ORDER BY b.dname, a.job, a.mgr;

select case GROUPING(b.dname) when 1 then 'All Departments' else b.dname end as dname
    , case GROUPING(a.job) when 1 then 'All Jobs' else a.job end as JOB
    , count(*) as emp_cnt, sum(a.sal) as SAL_SUM
from emp a, dept b
where b.deptno = a.deptno
group by cube(b.dname, a.job)
ORDER BY b.dname, a.job;