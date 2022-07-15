-- 테이블을 열로 합치는 방법 : JOIN
-- 테이블을 행으로 합치는 방법 : UNION

-- JOIN
select * from emp, dept
where emp.deptno = dept.deptno -- 양쪽 테이블의 같은 속성 필드를 연결
order by empno;

-- * JOIN의 종류
-- 등가 조인
-- 비등가 조인
-- 외부 조인
-- SQL-99 표준문법으로 하는 조인

-- * 다중 행 서브쿼리의 종류
-- 각 부서별 최고 급여와 동일한 급여를 받는 사원 정보
select * from emp where sal in(select max(sal) from emp group by deptno);

-- 30번 부서 사원들의 최소급여보다 많은 급여를 받는 사원 정보
select * from emp where sal > any(select sal from emp where deptno = 30);

-- COMMIT, ROLLBAXK(커밋된 자료는 롤백 되지 않음)
create table dept_tcl
    as select * from dept;
    
select * from dept;
select * from dept_tcl;

insert into dept_tcl values(50, 'DATABASE', 'SEOUL');
update dept_tcl set loc='BUSAN' where deptno = 40;
delete from dept_tcl where dname = 'RESEARCH';

rollback;

commit;

CREATE INDEX emp_ix01 ON emp(hiredate);

select * from user_ind_columns where index_name = 'EMP_IX01';

select * from emp;
select /*+ index(a emp_ix01) */ a.*
    from emp a
    where hiredate between '1981-01-01'
                    and '1981-12-31';
                    
select /*+ index(a emp_ix01) */ hiredate
    from emp;
    
-- *뷰의 사용목적
-- 1. 편리성 : SELECT문의 복잡도를 완화
-- 2. 보안성 : 테이블의 특정 열을 노출하고 싶지 않을 경우

create view vw_em20
    as(select empno, ename, job, deptno from emp where deptno = 20);
    
select * from user_views;
select * from vw_em20;

-- * FOREIGN KEY 지정
--1. 제약조건을 지정하지 않고 FOREIGN KEY 지정
--2. 열을 모두 정의한 후 FOREIGN KEY 지정

create table dept_fk(
    deptno number(2) constraint dpetfk_deptno_pk primary key,
    dname varchar2(14),
    loc varchar2(13)
);

create table emp_fk(
    empno number(4) constraint empfk_empno_pk primary key,
    ename varchar2(10),
    job varchar2(9),
    mgr number(4),
    hiredate date,
    sal number(7, 2),
    comm number(7, 2),
    dpetno number(2) constraint empfk_dept_fk references dept_fk(deptno)
);

desc emp_fk;
desc dept_fk;