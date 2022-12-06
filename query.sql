-- Стовпчикова діаграма
-- к-сть часу(хвилин) на полі кожного гравця

-- select player_name, minutes_played from statistic
-- join player on player.player_id=statistic.player_id


-- Кругова діаграма 
-- к-сть гравців по командам

-- select team_name, count(player_name) from player
-- join team on player.team_id=team.team_id
-- group by team_name


-- Графік залежності
-- залежність набраних балів на полі від часу на полі

-- select raptor_box_total, minutes_played from statistic