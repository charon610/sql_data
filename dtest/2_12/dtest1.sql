SELECT dname, loc, deptno
FROM dept
order by dname, loc, deptno desc;

SELECT dname DEPT, loc AREA, deptno
FROM dept
order by dname, area, deptno desc;

SELECT empno, ename
FROM emp
order by mgr;

SELECT
    empno
FROM emp;

select empno
from(select empno, ename from emp order by mgr);

select mgr
from(select empno, ename from emp order by mgr);

SELECT job, sal
FROM emp
group by job
having COUNT(*)>0
order by sal;

SELECT job
FROM emp
group by job
having COUNT(*)>0
order by sal;

SELECT job, sum(sal) salary_sum
FROM emp
group by job
having sum(sal)>5000
order by sum(sal);

select player.player_name 선수명, team.team_name 소속팀명
from player, team
where team.team_id = player.team_id;

select player.player_name 선수명, team.team_name 소속팀명
from player inner join team
on team.team_id = player.team_id;

select player.player_name, player.back_no, player.team_id, team.team_name, team.region_name
from player, team
where team.team_id = player.team_id;

select a.player_name 선수명, a.back_no 백넘버, a.team_id 팀코드, b.team_name 팀명, b.region_name 연고지
from player a, team b
where b.team_id = a.team_id;