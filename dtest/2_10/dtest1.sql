SELECT COUNT(*)��ü���, COUNT(height) Ű�Ǽ�, MAX(height) �ִ�Ű, MIN(height) �ּ�Ű, round(avg(height),2) ���Ű
FROM player;

select position ������, avg(height) ���Ű from player;

select position ������, avg(height) ���Ű from player GROUP BY ������;

select position ������, round(avg(height),1) ���Ű from player GROUP BY position;

select position ������, COUNT(*) �ο���, count(height) Ű���, 
                        max(height) �ִ�Ű, MIN(height) �ּ�Ű, round(avg(height),2) ���Ű from player GROUP BY position;
                        
select position ������, round(avg(height),1) ���Ű
        from player 
        GROUP BY position
        having avg(height) >=180;

select position ������, round(avg(height),1) ���Ű
        from player 
        having avg(height) >=180        
        GROUP BY position;

SELECT team_id ��ID, count(*) �ο���
FROM player
group by team_id
having team_id in('K09','K02');

SELECT position ������, round(avg(height),1) ���Ű
FROM player
group by position
having max(height)>=190;

SELECT ename �����, deptno �μ���ȣ, extract(month from hiredate) �Ի��, sal �޿�
FROM emp;