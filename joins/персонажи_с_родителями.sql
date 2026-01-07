select people.name, mama.name as mother, papa.name as father
from regions
left join people on regions.id = people.region_id 
left join people mama on people.mother_id = mama.id
left join people papa on people.father_id = papa.id
where (papa.id is not null or mama.id is not null) and regions.id = 1;