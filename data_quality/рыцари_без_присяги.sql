select people.name 
from knights
inner join people on knights.person_id = people.id
where sworn_to is null;