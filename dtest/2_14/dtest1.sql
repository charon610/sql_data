select a.empno, a.ename, b.deptno, b.dname from emp a natural join dept b;

SELECT
    *
FROM emp a NATURAL join dept b;

SELECT
    *
FROM emp;

SELECT
    *
FROM dept;

SELECT
    *
FROM emp a inner join dept b
on b.deptno = a.deptno;