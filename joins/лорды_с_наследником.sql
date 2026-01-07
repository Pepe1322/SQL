select noble1.name as глава, heir2.name as наследник 
from lords
left join nobles noble on lords.noble_id = noble.id
left join nobles heir on lords.heir_id = heir.id
left join people noble1 on noble.person_id = noble1.id
left join people heir2 on heir.person_id = heir2.id
where lords.heir_id is not null;