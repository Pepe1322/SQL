select count(person_id) as kolvo, houses.name 
from nobles
inner join houses on nobles.house_id = houses.id 
group by houses.name
having count(person_id) > (select avg(pepe) from (select count(person_id) as pepe from nobles group by house_id) as p);