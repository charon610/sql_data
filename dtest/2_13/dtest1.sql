create table sal_grade (grade number, losal number, hisal number);

create table salgrade (grade number, losal number, hisal number);

insert into salgrade VALUES(1, 700, 1200);
insert into salgrade VALUES(2, 1201, 1400);
insert into salgrade VALUES(3, 1401, 2000);
insert into salgrade VALUES(4, 2001, 3000);
insert into salgrade VALUES(5, 3001, 9999);


commit;


SELECT
    *
FROM emp;

SELECT
    *
FROM dept;

SELECT
    *
FROM sal_grade;

SELECT a.ename, a.job, a.sal, b.grade
FROM emp a, salgrade b
where a.sal between b.losal and b.hisal;

SELECT a.stadium_name, a.stadium_id, a.seat_count, a.hometeam_id, b.team_name
FROM stadium a, team b
where b.team_id(+) = a.hometeam_id
order by a.hometeam_id;

SELECT a.ename, a.deptno, b.dname, b.loc
FROM emp a, dept b
where b.deptno = a.deptno(+);

SELECT a.empno, a.ename, b.deptno, b.dname
FROM emp a, dept b
where b.deptno = a.deptno;

SELECT a.empno, a.ename, b.deptno, b.dname
FROM emp a inner join dept b
on b.deptno = a.deptno;

SELECT a.empno, a.ename, b.deptno, b.dname
FROM emp a join dept b
on b.deptno = a.deptno;

SELECT a.empno, a.ename, deptno, b.dname
FROM emp a natural join dept b;