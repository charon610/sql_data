SELECT player_name 선수명, position 포지션,  back_no 백넘버, height 키
FROM player
where height between 170 and 180;

SELECT player_name 선수명, position 포지션,  back_no 백넘버, height 키
FROM player
where position = null;

SELECT player_name 선수명, position 포지션, team_id 팀ID
FROM player
where position is null;

SELECT player_name 선수명, position 포지션,  back_no 백넘버, height 키
FROM player
where team_id = 'K02'
    and height >= 170;
    
SELECT team_id 팀ID, player_name 선수명, position 포지션,  back_no 백넘버, height 키
FROM player
where team_id in('K02', 'K07')
    and position='MF';
    
SELECT team_id 팀ID, player_name 선수명, position 포지션,  back_no 백넘버, height 키
FROM player
where team_id = 'K02'
or team_id = 'K07'
and position='MF'
and height >= 170
and height <= 180;

SELECT team_id 팀ID, player_name 선수명, position 포지션,  back_no 백넘버, height 키
FROM player
where (team_id = 'K02'
or team_id = 'K07')
and position='MF'
and height >= 170
and height <= 180;

SELECT team_id 팀ID, player_name 선수명, position 포지션,  back_no 백넘버, height 키
FROM player
where team_id in ('K02', 'K07')
and position='MF'
and height BETWEEN
170 and 180;

SELECT player_name 선수명, position 포지션,  back_no 백넘버, height 키
FROM player
where team_id = 'K02'
and not position='MF'
and not height BETWEEN
175 and 185;

SELECT player_name 선수명, position 포지션,  back_no 백넘버, height 키
FROM player
where team_id = 'K02'
and not position<>'MF'
and not height BETWEEN
175 and 185;

SELECT player_name 선수명, nation 국적
FROM player
where nation is not null;