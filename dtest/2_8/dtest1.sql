SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE team_id = 'K02';

SELECT
    *
FROM player;

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE team_id in ('K02', 'K07');

SELECT ename, job, deptno
FROM emp
WHERE (job,deptno) in (('MANAGER', 20),('CLERK',30));

SELECT ename, job, deptno
FROM emp
WHERE job in ('MANAGER', 'CLERK' ) and deptno in(20,30);

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE position like 'MF';

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE player_name LIKE '��%';

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE player_name LIKE '��_ȣ';