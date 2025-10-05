問32 
SELECT ranking, group_name
FROM countries
WHERE group_name = 'A'
  AND ranking = (
    SELECT MIN(ranking)
    FROM countries
    WHERE group_name = 'A'
);

問33
SELECT SUM(ranking) AS total_ranking
FROM countries
WHERE group_name = 'C';


問34
SELECT
  countries.name AS country_name,
  players.name AS player_name,
  players.uniform_num
FROM players
JOIN countries ON players.country_id = countries.id;


問35
SELECT 
    countries.name AS country_name,
    players.name AS player_name,
    goals.goal_time
FROM goals
JOIN players ON goals.player_id = players.id
JOIN countries ON players.country_id = countries.id
ORDER BY goals.goal_time;


問36
SELECT
    goals.id AS goal_number,
    players.uniform_num,
    players.position,
    COALESCE(players.name, 'オウンゴール') AS name
FROM goals
LEFT JOIN players ON goals.player_id = players.id
ORDER BY goals.id;


問37
SELECT
    goals.goal_time,
    COALESCE(players.name, 'オウンゴール') AS player_name
FROM players
RIGHT JOIN goals ON players.id = goals.player_id
ORDER BY goals.goal_time;


問38
SELECT
    goals.goal_time AS goal_time,
    players.uniform_num AS uniform_number,
    players.position AS position,
    COALESCE(players.name, 'オウンゴール') AS name
FROM players
RIGHT JOIN goals ON players.id = goals.player_id
ORDER BY goals.goal_time;


問39
SELECT * FROM pairings LIMIT 10;