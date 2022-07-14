SELECT Max (mgr) as MGR
FROM emp
WHERE ename = 'JSC';

SELECT nvl (Max (mgr), 9999) as MGR
FROM emp
WHERE ename = 'JSC';

SELECT ename, empno, mgr, nullif(mgr, 7698) as NUIF
FROM emp;

SELECT ename, empno, mgr
        , case
            when mgr = 7698 then null
            else mgr
        end as NUIF
FROM emp;

SELECT ename, comm, sal
        ,case
            when comm is not null then comm
            else(case
                when sal is not null then sal
                else null
            end)
        end as COAL
FROM emp;

