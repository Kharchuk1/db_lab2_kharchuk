import psycopg2
import matplotlib.pyplot as plt

username = 'Kharchuk'
password = 'kharchuk'
database = 'lab_2'
host = 'localhost'
port = '5432'

query_1 = '''
select player_name, minutes_played from statistic
join player on player.player_id=statistic.player_id
'''

query_2 = '''
select team_name, count(player_name) from player
join team on player.team_id=team.team_id
group by team_name
'''

query_3 = '''
select raptor_box_total, minutes_played from statistic
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:
    cur = conn.cursor()
    cur.execute(query_1)
    player = []
    count = []

    for row in cur:
        player.append(row[0])
        count.append(row[1])

    x_range = range(len(player))

    figure, (bar_ax, pie_ax, graph_ax) = plt.subplots(1, 3)

    bar_ax.bar(x_range, count, label='Total')
    bar_ax.set_title('к-сть часу на полі кожного гравця')
    bar_ax.set_xlabel('Player')
    bar_ax.set_ylabel('Count')
    bar_ax.set_xticks(x_range)
    bar_ax.set_xticklabels(player,  rotation=15)

    cur.execute(query_2)
    players = []
    count = []

    for row in cur:
        players.append(row[0])
        count.append(row[1])

    pie_ax.pie(count, labels=players, autopct='%1.1f%%')
    pie_ax.set_title('к-сть гравців по командам')

    cur.execute(query_3)
    raptor_box_total = []
    minutes_played = []

    for row in cur:
        raptor_box_total.append(row[0])
        minutes_played.append(row[1])

    graph_ax.plot(raptor_box_total, minutes_played, marker='o')
    graph_ax.set_xticks(raptor_box_total)
    graph_ax.set_xticklabels(raptor_box_total, rotation=20)
    graph_ax.set_xlabel('raptor_box_total')
    graph_ax.set_ylabel(' minutes_played')
    graph_ax.set_title('залежність набраних балів від часу')
    
mng = plt.get_current_fig_manager()
mng.resize(300, 100)

plt.show()