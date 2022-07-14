SELECT ename 사원명, deptno 부서번호
    , case month when 1 then sal end M01, case month when 2 then sal end M02
    , case month when 3 then sal end M03, case month when 4 then sal end M04
    , case month when 5 then sal end M05, case month when 6 then sal end M06
    , case month when 7 then sal end M07, case month when 8 then sal end M08
    , case month when 9 then sal end M09, case month when 10 then sal end M10
    , case month when 11 then sal end M11, case month when 12 then sal end M12
    FROM (SELECT ename, deptno, extract(month from hiredate) MONTH, sal FROM emp);
    
SELECT deptno 부서번호
    , AVG(case month when 1 then sal end) M01, AVG(case month when 2 then sal end) M02
    , AVG(case month when 3 then sal end) M03, AVG(case month when 4 then sal end) M04
    , AVG(case month when 5 then sal end) M05, AVG(case month when 6 then sal end) M06
    , AVG(case month when 7 then sal end) M07, AVG(case month when 8 then sal end) M08
    , AVG(case month when 9 then sal end) M09, AVG(case month when 10 then sal end) M10
    , AVG(case month when 11 then sal end) M11, AVG(case month when 12 then sal end) M12
    FROM (SELECT ename, deptno, extract(month from hiredate) MONTH, sal FROM emp)
GROUP by deptno;

SELECT deptno 부서번호
    , AVG(decode (MONTH, 1, sal) M01, AVG(decode (MONTH, 2, sal) M02
    , AVG(decode (MONTH, 3, sal) M03, AVG(decode (MONTH, 4, sal) M04
    , AVG(decode (MONTH, 5, sal) M05, AVG(decode (MONTH, 6, sal) M06
    , AVG(decode (MONTH, 7, sal) M07, AVG(decode (MONTH, 8, sal) M08
    , AVG(decode (MONTH, 9, sal) M09, AVG(decode (MONTH, 10, sal) M10
    , AVG(decode (MONTH, 11, sal) M11, AVG(decode (MONTH, 12, sal) M12
    FROM (SELECT ename, deptno, extract(MONTH from hiredate) MONTH, sal FROM emp)
GROUP by deptno;

SELECT
extract(MONTH from hiredate) MONTH
FROM emp;

SELECT team_id
    , ISNULL(sum(case when position = 'FW' then 1 end), 0) as FW
    , ISNULL(sum(case when position = 'MF' then 1 end), 0) as MF
    , ISNULL(sum(case when position = 'DF' then 1 end), 0) as DF
    , ISNULL(sum(case when position = 'GK' then 1 end), 0) as GK
    , COUNT(*) as SUM
    FROM player
group by team_id;

select team_id, position from player;

select * from player;

SELECT team_id
    , nvl (sum(case when position = 'FW' then 1 end), 0) as FW
    , nvl (sum(case when position = 'MF' then 1 end), 0) as MF
    , nvl (sum(case when position = 'DF' then 1 end), 0) as DF
    , nvl (sum(case when position = 'GK' then 1 end), 0) as GK
    , COUNT(*) as SUM
    FROM player
group by team_id;

SELECT
    round (avg(case when position = 'FW' then height end), 2) as 포워드
    , round (avg(case when position = 'MF' then height end), 2) as 미드필더
    , round (avg(case when position = 'DF' then height end), 2) as 디펜더
    , round (avg(case when position = 'GK' then height end), 2) as 골키퍼
    , round (avg(height), 2) 전체평균키
    FROM player;
    
select player_name 선수명, position 포지션, back_no 백넘버 from player
order by player_name desc;

select player_name 선수명, position 포지션, back_no 백넘버 from player
order by 포지션 desc;

select player_name 선수명, position 포지션, back_no 백넘버, height 키
from player
where height is not null
order by height desc, back_no;

select player_name 선수명, position 포지션, back_no 백넘버
from player
where back_no is not null
order by 3 desc, 2, 1;

select team_id 팀ID, to_number(zip_code1, '999') + to_number(zip_code1, '999') 우편번호합 from team;

select to_number(zip_code1,'9999') from team;