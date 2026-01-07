select people.name
from nobles
inner join people on nobles.person_id = people.id
inner join lords on nobles.id = lords.noble_id
where is_alive = 0;