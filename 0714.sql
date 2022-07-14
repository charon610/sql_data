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