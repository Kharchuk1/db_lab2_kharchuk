
---------------------------
-- Populate Team table
---------------------------
INSERT INTO Team(team_id, team_name)
VALUES('1', 'MIA');
INSERT INTO Team(team_id, team_name)
VALUES('2', 'MIL');
INSERT INTO Team(team_id, team_name)
VALUES('3', 'NOP');
INSERT INTO Team(team_id, team_name)
VALUES('4', 'BRK');
INSERT INTO Team(team_id, team_name)
VALUES('5', 'NOP');
INSERT INTO Team(team_id, team_name)
VALUES('6', 'PHO');
INSERT INTO Team(team_id, team_name)
VALUES('7', 'MEM');

-------------------------
-- Populate Player table
-------------------------
INSERT INTO Player(player_id, player_name, poss, team_id)
VALUES('achiupr01','Precious Achiuwa', '24', '1' );
INSERT INTO Player(player_id, player_name, poss, team_id)
VALUES('adamsja01','Jaylen Adams', '41', '2' );
INSERT INTO Player(player_id, player_name, poss, team_id)
VALUES('adamsst01','Steven Adams', '3313', '3' );
INSERT INTO Player(player_id, player_name, poss, team_id)
VALUES('adebaba01','Bam Adebayo', '293', '1' );
INSERT INTO Player(player_id, player_name, poss, team_id)
VALUES('aldrila01','LaMarcus Aldridge', '265', '4' );
INSERT INTO Player(player_id, player_name, poss, team_id)
VALUES('alexani01','Nickeil Alexander-Walker', '2109', '5' );
INSERT INTO Player(player_id, player_name, poss, team_id)
VALUES('alexaty01','Ty-Shon Alexander', '98', '6' );
INSERT INTO Player(player_id, player_name, poss, team_id)
VALUES('allengr01','Grayson Allen', '150', '7' );

--------------------------
-- Populate Statistic table
--------------------------
INSERT INTO Statistic(stat_id, player_id, minutes_played, raptor_box_total)
VALUES('1', 'achiupr01', 12, -3.29378);
INSERT INTO Statistic(stat_id, player_id, minutes_played, raptor_box_total)
VALUES('2', 'adamsja01', 18, -16.49110);
INSERT INTO Statistic(stat_id, player_id, minutes_played, raptor_box_total)
VALUES('3', 'adamsst01', 1605, 0.82537);
INSERT INTO Statistic(stat_id, player_id, minutes_played, raptor_box_total)
VALUES('4', 'adebaba01', 136, -6.25247);
INSERT INTO Statistic(stat_id, player_id, minutes_played, raptor_box_total)
VALUES('5', 'aldrila01', 130, 0.23288);
INSERT INTO Statistic(stat_id, player_id, minutes_played, raptor_box_total)
VALUES('6', 'alexani01', 1007, -0.07560);
INSERT INTO Statistic(stat_id, player_id, minutes_played, raptor_box_total)
VALUES('7', 'alexaty01', 47, -4.87665);
INSERT INTO Statistic(stat_id, player_id, minutes_played, raptor_box_total)
VALUES('8', 'allengr01', 71, -4.18806);