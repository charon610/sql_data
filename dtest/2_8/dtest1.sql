SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE team_id = 'K02';

SELECT
    *
FROM player;

SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE team_id in ('K02', 'K07');

SELECT ename, job, deptno
FROM emp
WHERE (job,deptno) in (('MANAGER', 20),('CLERK',30));

SELECT ename, job, deptno
FROM emp
WHERE job in ('MANAGER', 'CLERK' ) and deptno in(20,30);

SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE position like 'MF';

SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE player_name LIKE '장%';

SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE player_name LIKE '장_호';