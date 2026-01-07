select people.name
from marriages
inner join people on marriages.husband_id = people.id
where people.gender = 'f';