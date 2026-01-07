select people.name, houses.name 
from nobles
inner join people on nobles.person_id = people.id
inner join houses on nobles.house_id = houses.id
where houses.id = (select house_id from nobles group by house_id order by count(person_id) desc limit 1);