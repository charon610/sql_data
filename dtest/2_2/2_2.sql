SELECT LENGTH('SQL Expert') AS LEN FROM DUAL;

DESC DUAL;

SELECT * FROM dual;

SELECT LEN('SQL Expert') AS Len;

SELECT CONCAT (player_name, '�౸����') AS ������ FROM player;

select player_name || '�౸����' AS ������ from player;

SELECT player_name + ' �౸����' as ������ FROM player;

SELECT stadium_id, DDD || ')' || tel as tel, length(DDD || '-' || tel) as t_len from stadium;

select ename, round(sal / 12, 1) as sal_round, trunc(sal / 12, 1) as sal_trunc from emp;