SELECT team_id as ��ID, TO_NUMBER(zip_code1, '999') + TO_NUMBER(zip_code1, '999') as �����ȣ�� FROM team;

SELECT SYSDATE FROM dual;

select ename as �����, hiredate as �Ի�����
    , to_NUMBER(to_char(hiredate, 'YYYY')) as �Ի�⵵
    , to_NUMBER(to_char(hiredate, 'MM')) as �Ի��
    , to_NUMBER(to_char(hiredate, 'DD')) as �Ի���
from emp;

select TO_CHAR(sysdate, 'YYYY/MM/DD')as ��¥
    , to_char (sysdate, 'YYYY.MON,DAY')as ������
from dual;

SELECT ename, round(sal/12) as SAL_ROUND, ceil(sal/12) as SAL_CEIL FROM emp;