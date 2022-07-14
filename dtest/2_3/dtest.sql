SELECT team_id as 팀ID, TO_NUMBER(zip_code1, '999') + TO_NUMBER(zip_code1, '999') as 우편번호합 FROM team;

SELECT SYSDATE FROM dual;

select ename as 사원명, hiredate as 입사일자
    , to_NUMBER(to_char(hiredate, 'YYYY')) as 입사년도
    , to_NUMBER(to_char(hiredate, 'MM')) as 입사월
    , to_NUMBER(to_char(hiredate, 'DD')) as 입사일
from emp;

select TO_CHAR(sysdate, 'YYYY/MM/DD')as 날짜
    , to_char (sysdate, 'YYYY.MON,DAY')as 문자형
from dual;

SELECT ename, round(sal/12) as SAL_ROUND, ceil(sal/12) as SAL_CEIL FROM emp;