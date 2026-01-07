select houses.name, max(people.is_alive) as is_alive
from people
inner join nobles on people.id = nobles.person_id
inner join houses on nobles.house_id = houses.id
group by houses.name
having max(people.is_alive) = 0;