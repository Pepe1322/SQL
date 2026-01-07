select people.name as person_name, castles.name as castle_name, regions.name as region_name
from lords_castles
inner join lords on lords_castles.lord_id = lords.id
inner join nobles on lords.noble_id = nobles.id
inner join people on nobles.person_id = people.id
inner join castles on lords_castles.castle_id = castles.id
inner join regions on castles.region_id = regions.id
where lords_castles.is_current_ruler = 1;