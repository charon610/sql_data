SELECT player_name ������, position ������,  back_no ��ѹ�, height Ű
FROM player
where height between 170 and 180;

SELECT player_name ������, position ������,  back_no ��ѹ�, height Ű
FROM player
where position = null;

SELECT player_name ������, position ������, team_id ��ID
FROM player
where position is null;

SELECT player_name ������, position ������,  back_no ��ѹ�, height Ű
FROM player
where team_id = 'K02'
    and height >= 170;
    
SELECT team_id ��ID, player_name ������, position ������,  back_no ��ѹ�, height Ű
FROM player
where team_id in('K02', 'K07')
    and position='MF';
    
SELECT team_id ��ID, player_name ������, position ������,  back_no ��ѹ�, height Ű
FROM player
where team_id = 'K02'
or team_id = 'K07'
and position='MF'
and height >= 170
and height <= 180;

SELECT team_id ��ID, player_name ������, position ������,  back_no ��ѹ�, height Ű
FROM player
where (team_id = 'K02'
or team_id = 'K07')
and position='MF'
and height >= 170
and height <= 180;

SELECT team_id ��ID, player_name ������, position ������,  back_no ��ѹ�, height Ű
FROM player
where team_id in ('K02', 'K07')
and position='MF'
and height BETWEEN
170 and 180;

SELECT player_name ������, position ������,  back_no ��ѹ�, height Ű
FROM player
where team_id = 'K02'
and not position='MF'
and not height BETWEEN
175 and 185;

SELECT player_name ������, position ������,  back_no ��ѹ�, height Ű
FROM player
where team_id = 'K02'
and not position<>'MF'
and not height BETWEEN
175 and 185;

SELECT player_name ������, nation ����
FROM player
where nation is not null;