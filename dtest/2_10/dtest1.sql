SELECT COUNT(*)전체행수, COUNT(height) 키건수, MAX(height) 최대키, MIN(height) 최소키, round(avg(height),2) 평균키
FROM player;

select position 포지션, avg(height) 평균키 from player;

select position 포지션, avg(height) 평균키 from player GROUP BY 포지션;

select position 포지션, round(avg(height),1) 평균키 from player GROUP BY position;

select position 포지션, COUNT(*) 인원수, count(height) 키대상, 
                        max(height) 최대키, MIN(height) 최소키, round(avg(height),2) 평균키 from player GROUP BY position;
                        
select position 포지션, round(avg(height),1) 평균키
        from player 
        GROUP BY position
        having avg(height) >=180;

select position 포지션, round(avg(height),1) 평균키
        from player 
        having avg(height) >=180        
        GROUP BY position;

SELECT team_id 팀ID, count(*) 인원수
FROM player
group by team_id
having team_id in('K09','K02');

SELECT position 포지션, round(avg(height),1) 평균키
FROM player
group by position
having max(height)>=190;

SELECT ename 사원명, deptno 부서번호, extract(month from hiredate) 입사월, sal 급여
FROM emp;