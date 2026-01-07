SELECT name, 
CASE 
    WHEN is_alive = 1 THEN "Жив"
    WHEN is_alive = 0 THEN "Мёртв"
    ELSE "Неизвестно"
END AS статус
FROM people;