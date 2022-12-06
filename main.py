import psycopg2

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
print(type(conn))

with conn:
    print("Database opened successfully")

    cur = conn.cursor()
    print('\nQuery 1:')
    cur.execute(query_1)
    for row in cur.fetchall():
        print(row)

    print('\nQuery 2:')
    cur.execute(query_2)
    for row in cur.fetchall():
        print(row)

    print('\nQuery 3:')
    cur.execute(query_3)
    for row in cur.fetchall():
        print(row)