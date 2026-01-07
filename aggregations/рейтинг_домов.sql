select houses.name, count(nobles.person_id) as members_count
from nobles 
inner join houses on nobles.house_id = houses.id
group by houses.name
order by members_count desc;