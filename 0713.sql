select * from emp;

select ename from emp;

-- 사원의 이름 길이가 5 이상인 경우
select ename from emp where length(ename)>=5;

-- 한글의 경우 글자단위와 바이트단위가 있음
select length('한글'), lengthb('한글') from dual;

-- 이름 글자의 일부를 추출하고자 한다.
select ename, substr(ename, 1,2), SUBSTR(ename,3,2), substr(ename, 5, 1) from emp;

-- 특정 문자열 찾기
SELECT instr('HELLO ORACLE!', 'L') as INSSTR_1,
        instr('HELLO ORACLE!', 'L', 5) as INSSTR_2,
        instr('HELLO ORACLE!', 'L',2,2) as INSSTR_3
FROM dual;

-- 특정 문자열 대체
select '010-1234-5678' as replace_before,
    replace('010-1234-5678', '-', ' ') as replace1,
    replace('010-1234-5678', '-') as replace2
from dual;

-- 특정 문자열 채우기
SELECT
    rpad('791225-2', 14, '*') as rpad_jmon,
    rpad('010-1234-', 13, '*') as rpad_jmon
FROM dual;

-- 두 열 사이에 ':' 넣고 연결

-- concat 함수로 문자열 결합
select concat(empno, ename),
        concat(empno, concat(' : ',ename))
from emp
where ename = 'SCOTT';

-- TRIM 함수로 공백 제거
select '[' || trim(' _Oracle_ ') || ']' as TRIM,
    '[' || ltrim(' _Oracle_ ') || ']' as LTRIM,
    '[' || ltrim('<_Oracle_ ', '_<') || ']' as LTRIM2,
    '[' || rtrim(' _Oracle_ ') || ']' as RTRIM,
    '[' || rtrim(' _Oracle_> ', '_> ') || ']' as RTRIM2
from dual;

-- * 숫자와 관련된 함수 (ROUND : 반올림, TRUNC : 버림, CEIL : 지정된 숫자보다 큰 정수 중 가장 작은 정수, FLOOR : 지정된 숫자보다 큰 정수 중 가장 큰 정수, MOD : 나머지 값

select 1234.5678,
        round(1234.5678) as round,
        round(1234.5678, 0) as round_0,
        round(1234.5678, 1) as round_1,
        round(1234.5678, 2) as round_2,
        round(1234.5678, -1) as round_m1,
        round(1234.5678, -2) as round_m2
from dual;

-- 날짜 표시
SELECT sysdate, add_months(sysdate, 3)
FROM dual;

-- 사원들의 입사 10주년이 되는 시점을 출력
select ename, hiredate, add_months(hiredate, 120) as tenyears from emp; 

-- 현재의 날짜와 시간을 출력
select to_char(SYSDATE, 'yy/mm/dd hh24:mi:ss') as 현재시각 from dual;

-- 월과 요일의 다양한 형식
select sysdate,
        to_char(sysdate, 'mm') as MM,
        to_char(sysdate, 'mon') as MOM,
        to_char(sysdate, 'month') as MONTH,
        to_char(sysdate, 'dd') as DD,
        to_char(sysdate, 'dy') as DY,
        to_char(sysdate, 'day') as DAY
from dual;

select to_char(SYSDATE, 'yyyy"년"mm"월"dd"일"hh24"시"mi"분"ss"초"')from dual;

select sysdate,
        to_char(sysdate, 'mm') as MM,      
        to_char(sysdate, 'mon', 'nls_date_language=korean') as MON_KOR,
        to_char(sysdate, 'mon', 'nls_date_language=japanese') as MON_JPN,
        to_char(sysdate, 'mon', 'nls_date_language=english') as MON_ENG,
        to_char(sysdate, 'month', 'nls_date_language=korean') as MONTH_KOR,
        to_char(sysdate, 'month', 'nls_date_language=japanese') as MONTH_JPN,
        to_char(sysdate, 'month', 'nls_date_language=english') as MONTH_ENG
from dual;
 
 