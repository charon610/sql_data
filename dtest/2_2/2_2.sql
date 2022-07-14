SELECT LENGTH('SQL Expert') AS LEN FROM DUAL;

DESC DUAL;

SELECT * FROM dual;

SELECT LEN('SQL Expert') AS Len;

SELECT CONCAT (player_name, '축구선수') AS 선수명 FROM player;

select player_name || '축구선수' AS 선수명 from player;

SELECT player_name + ' 축구선수' as 선수명 FROM player;

SELECT stadium_id, DDD || ')' || tel as tel, length(DDD || '-' || tel) as t_len from stadium;

select ename, round(sal / 12, 1) as sal_round, trunc(sal / 12, 1) as sal_trunc from emp;