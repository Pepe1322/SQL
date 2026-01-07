select people.name
from nobles
inner join houses on nobles.house_id = houses.id
inner join people on nobles.person_id = people.id 
where houses.name = "Stark" and people.is_alive = 1;